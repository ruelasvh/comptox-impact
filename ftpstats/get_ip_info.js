fs = require('fs')
http = require('http')
nodeAsync = require('async')

const input = './output/ftp_ips.csv'

getIPs(input).then(res => {
  let uniqueIPs = []

  res.forEach(ip => { if(!uniqueIPs.includes(ip)) { uniqueIPs.push(ip) } })

  let ip_csv = uniqueIPs.sort().reduce((acc, ip) => acc + ip + '\n', ''); // string of all ips
  outputFile('./output/ips.csv', ip_csv)

  let ipInfo = { info: [] }
  getInfoFromIPs(uniqueIPs, ipInfo).then(res => {
    let headers = 'ip;as;zip;city;region;regionname;country;countrycode;latitude;longitude;timezone;isp;org\n'; // headers for csv
    let csv = res.info.reduce(arrayToCSV, headers); // comma-separated string
    outputFile('./output/ftp_ip_infos.csv', csv)
  });
})

//getInfoFromIPs(uniqueIPs)
function getIPs(filename) {
  return new Promise(function (resolve, reject) {
    fs.readFile(filename, 'utf8', function(err, data) {
      if(err) { return console.log(err) }

      let dataArray = data.split(/\n/) // array of lines
      dataArray.pop() // pop the empty last line
      dataArray.shift() // shift the header
      let ips = dataArray.map(ip => ip.split(/,/)[1])
      resolve(ips)
    })
  })
}

function getInfoFromIPs(ips, ipInfo) {
  return new Promise(function (resolve, reject) {
    if(ips.length > 0) {
      console.log(ips.length)
      let splice = ips.splice(0,147)
      let infoArray = []
      nodeAsync.forEach(splice, function(item, callback) {
        getIPinfo(item).then(res => { infoArray.push(res); callback() })
      }, function(err) {
        ipInfo.info = ipInfo.info.concat(infoArray)
        setTimeout(() => {
          getInfoFromIPs(ips, ipInfo).then(res => {
            resolve(ipInfo)
          })
        }, 62000)
      })
    } else {
      resolve(ipInfo)
    }
  })
}

function getIPinfo(ip) {
  return new Promise(function (resolve, reject) {
    const options = { host: 'ip-api.com', path: '/json/' + ip }
    const callback = response => {
      let str = ''
      response.on('data', d => { str += d })
      response.on('end', () => resolve(JSON.parse(str)))
    }
    return http.get(options, callback)
  })
}

function arrayToCSV(acc, obj) {
  if(obj.status !== 'fail') {
    return acc + obj.query + ';' + obj.as + ';' + obj.zip + ';' + obj.city + ';' + obj.region + ';' + obj.regionName + ';' + obj.country + ';' + obj.countryCode + ';' + obj.lat + ';' + obj.lon + ';' + obj.timezone + ';' + obj.isp + ';' + obj.org + '\n';
  } else {
    return acc + obj.query + '\n';
  }
}

function outputFile(filename, string) {
  fs.writeFile(filename, string, function (err) {
    if(err) { return console.log(err); }
    console.log(filename);
  });
}

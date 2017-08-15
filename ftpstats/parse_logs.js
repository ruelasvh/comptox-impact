fs = require('fs')

// global id
let id = { id: 0 }

// dsstox FTP
const dsstox_log = './logfiles/dsstoxFTP.TXT'
const dsstox_helpers = {
  getDate: line => new Date(line.slice(0, 24)),
  getIP: line => line.split(/\s+/)[6],
  getDLSize: line => line.split(/\s+/)[7],
  getFile: line => line.split(/\s+/)[8],
  getApp: line => 'dsstox'
}

// comptox FTP
const comptox_log = './logfiles/CompTox\ Report\ 2017\-04\-06.csv'
const comptox_helpers = {
  getDate: line => new Date(line.split(/,/)[1]),
  getIP: line => { if(line.includes('\"')) { return line.split(/",/)[1] } else { return line.split(/,/)[3] } },
  getFile: line => { if(line.includes('\"')) { return line.split(/"/)[1] } else { return line.split(/,/)[2] } },
  getApp: line => {
    let filename
    if(line.includes('\"')) {
      filename = line.split(/"/)[1]
    } else {
      filename = line.split(/,/)[2]
    }
    if(filename.startsWith('/COMPTOX/High_Throughput_Screening_Data')) {
      return 'toxcast'
    } else if(filename.startsWith('/COMPTOX/Sustainable_Chemistry_Data/Chemistry_Dashboard')) {
      return 'comptox'
    } else {
      return 'other'
    }
  }
}

Promise.all([
  parseLog(dsstox_log, false, dsstox_helpers),
  parseLog(comptox_log, true, comptox_helpers)
]).then(res => {
  res[0].ips = res[0].ips.concat(res[1].ips) // merge IP lists
  
  let headers = 'id,parent_id,app,name,folder,count,unique_count\n' // headers for csv
  let monthHeaders = 'fileId,month,count\n' // headers for month count
  let csv = res[0].folders.concat(res[1].folders).reduce(arrayToCSV, headers) // comma-separated string
  let ip_csv = res[0].ips.reduce((acc, ip) => acc + ip.app + ',' + ip.ip + '\n', 'app,ip\n') // string of all ips
  let app_visits = res[0].visits.concat(res[1].visits).reduce((acc, visit) => acc + visit.app + ',' + visit.ip + ',' + visit.timestamp + '\n', 'app,ip,timestamp\n')
  let month_csv = res[0].months.concat(res[1].months).reduce((acc, row) => acc + row.fileId  + ',' + row.month + ',' + row.count + '\n', monthHeaders) // string of all file month counts

  outputFile('./output/ftp_metrics.csv', csv)
  outputFile('./output/ftp_ips.csv', ip_csv)
  outputFile('./output/ftp_metrics_by_months.csv', month_csv)
  outputFile('./output/ftp_app_visits.csv', app_visits)
})

function parseLog(inputFilename, inputheaders, helpers) {
  return new Promise(function (resolve, reject) {
    fs.readFile(inputFilename, 'utf8', function(err, data) {
      if(err) { return console.log(err) }

      let dataArray = data.split(/\n/).map(line => line.trim()) // array of lines
      dataArray.pop() // pop the empty last line
      if(inputheaders) { dataArray.shift() } // shift off headers
      let fileHits = dataArray.map(line => ({ // array of objects
        ip: helpers.getIP(line),
        file: helpers.getFile(line),
        app: helpers.getApp(line),
        date: helpers.getDate(line)
      }))
      // Go through fileHits and sort by date. Done by default.
      // Logic for creating array of returning ips based on a 24hr-period
      let users = fileHits.reduce(toUsers, {})
      let visits = convertToVisits(users)
      const trunk = { name: 'Tree', children: [], ips: [], uniqueIPs: [], months: [] }
      let tree = fileHits.reduce(buildTree, trunk) // json tree
      let array = walkTree(tree) // array of individual files/folders with counts
      array.folders.shift() // shift off the trunk
      let ips = []
      Object.keys(array.ipObj).forEach(app => { ips = ips.concat(array.ipObj[app].map(ip => ({ app, ip })) ) })

      let apps = array.folders.reduce((acc, obj) => { if(!acc.includes(obj.app) && obj.app.length > 0) { acc.push(obj.app) } return acc }, [])
      let returnObj = { folders: [], ips, months: [], visits }
      apps.forEach(app => {
        let appFolders = array.folders.filter(obj => obj.app === app)
        let monthCounts = appFolders.filter(folder => !folder.folder).reduce((acc,file) => {
          Object.keys(file.months).forEach(month => {
            acc.push({ month, fileId: file.id, count: file.months[month] })
          })
          return acc
        }, [])

        returnObj.folders = returnObj.folders.concat(appFolders)
        returnObj.months = returnObj.months.concat(monthCounts)
      })
      resolve(returnObj)
    })
  })
}

function toUsers(acc, hit) {
  if(acc.hasOwnProperty(hit.app)) {
    let foundIP = acc[hit.app].find(ip => ip.ip === hit.ip)
    if(foundIP) {
      // if foundIP.timestamps has no timestamp less than 24 hours before current hit
      // add current hit timestamp to timestamps
      if(!isWithin24hrs(foundIP.timestamps[foundIP.timestamps.length - 1],hit.date)) {
        foundIP.timestamps.push(hit.date)
      }
    } else {
      acc[hit.app].push({ip: hit.ip, timestamps: [hit.date]})
    }
  } else {
    acc[hit.app] = [{ip: hit.ip, timestamps: [hit.date]}]
  }
  return acc
}

function isWithin24hrs(startDate, endDate) {
  return endDate.getTime() - startDate.getTime() < 86400000 // in milliseconds
}

function convertToVisits(usersObj) {
  let visits = [];
  for (let app in  usersObj) {
    usersObj[app].forEach(ip => {
      ip.timestamps.forEach(timestamp => visits.push({ app, ip: ip.ip, timestamp}))
    })
  }
  return visits
}

function buildTree(acc, obj) {
  let fileArray = obj.file.split('/')
  fileArray.shift()
  let temp = acc.children
  for(let i = 0; i < fileArray.length; i++) {
    let name = fileArray[i]
    if(temp.filter(child => child.name === name).length === 0) {
      temp.push({ name, ips: [], children: [], uniqueIPs: [], months: [], app: obj.app })
    }
    let match = temp.filter(child => child.name === name)[0]
    if(match.uniqueIPs.indexOf(obj.ip) === -1) {
      match.uniqueIPs.push(obj.ip)
    }
    match.app = obj.app.length > match.app.length ? obj.app : match.app
    match.ips.push(obj.ip)
    match.months.push(obj.date.getFullYear() + ('0' + obj.date.getMonth().toString()).slice(-2))
    temp = match.children
  }
  return acc
}

function walkTree(tree) {
  let folderArray = []
  let ipObj = {}
  convertFolder(id, tree, folderArray, ipObj, -1)
  return { folders: folderArray, ipObj }
}

function convertFolder(id, tree, folderArray, ipObj, parentId) {
    let thisId = id.id + 0
  if(!ipObj.hasOwnProperty(tree.app)) { ipObj[tree.app] = [] }
  tree.uniqueIPs.forEach(ip => { if(!ipObj[tree.app].includes(ip)) { return ipObj[tree.app].push(ip) } })
  folderArray.push({
    id: thisId,
    parentId: parentId,
    app: tree.app,
    name: tree.name,
    count: tree.ips.length,
    uniqueCount: tree.uniqueIPs.length,
    folder: (tree.children.length > 0) + 0,
    months: tree.months.reduce((acc, month) => { if(acc.hasOwnProperty(month)) { acc[month]++ } else { acc[month] = 1 } return acc }, {})
  })
  id.id++
  tree.children.forEach(child => convertFolder(id, child, folderArray, ipObj, thisId))
}

function arrayToCSV(acc, obj) {
  return acc + obj.id + ',' + obj.parentId + ',' + obj.app + ',' + obj.name + ',' + obj.folder + ',' + obj.count + ',' + obj.uniqueCount + '\n'
}

function outputFile(filename, string) {
  fs.writeFile(filename, string, function (err) {
    if(err) { return console.log(err) }
    console.log(filename)
  });
}

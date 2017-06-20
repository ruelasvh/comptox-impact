fs = require('fs')

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
      return ''
    }
  }
}

parseLog(dsstox_log, false, true, dsstox_helpers)
parseLog(comptox_log, true, false, comptox_helpers)

function parseLog(inputFilename, inputheaders, includeFiles, helpers) {
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

    const trunk = { name: 'Tree', children: [], ips: [], uniqueIPs: [], months: [] }
    let tree = fileHits.reduce(buildTree, trunk) // json tree
    let array = walkTree(tree) // array of individual files/folders with counts
    array.folders.shift() // shift off the trunk

    let headers = 'id,parent_id,app,name,count,unique_count\n' // headers for csv
    let apps = array.folders.reduce((acc, obj) => { if(!acc.includes(obj.app) && obj.app.length > 0) { acc.push(obj.app) } return acc }, [])
    apps.forEach(app => {
      let appFolders = array.folders.filter(obj => obj.app === app)
      let monthCounts = appFolders.filter(folder => !folder.folder).reduce((acc,file) => {
        let fileMonths = Object.keys(file.months).forEach(month => {
          acc.push({ month, fileId: file.id, file: file.name, count: file.months[month] })
        })
        return acc
      }, [])
      if(!includeFiles) { appFolders = appFolders.filter(folder => folder.folder) }
      let csv = appFolders.reduce(arrayToCSV, headers) // comma-separated string
      let ip_csv = array.ips.sort().reduce((acc, ip) => acc + ip + '\n', '') // string of all ips
      let month_csv = monthCounts.reduce((acc, row) => acc + row.fileId + ',' + row.file + ',' + row.month + ',' + row.count + '\n', '') // string of all file month counts

      outputFile('./output/' + app + '.csv', csv)
      outputFile('./output/' + app + '_ip.csv', ip_csv)
      outputFile('./output/' + app + '_month_counts.csv', month_csv)
    })
  });
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
  let id = 0
  let folderArray = []
  let ipArray = []
  convertFolder({id}, tree, folderArray, ipArray, -1)
  return { folders: folderArray, ips: ipArray }
}

function convertFolder(id, tree, folderArray, ipArray, parentId) {
  let thisId = id.id + 0
  tree.uniqueIPs.forEach(ip => { if(!ipArray.includes(ip)) { return ipArray.push(ip); } })
  folderArray.push({
    id: thisId,
    parentId: parentId,
    app: tree.app,
    name: tree.name,
    count: tree.ips.length,
    uniqueCount: tree.uniqueIPs.length,
    folder: tree.children.length > 0,
    months: tree.months.reduce((acc, month) => { if(acc.hasOwnProperty(month)) { acc[month]++ } else { acc[month] = 1 } return acc }, {})
  })
  id.id++
  tree.children.forEach(child => convertFolder(id, child, folderArray, ipArray, thisId))
}

function arrayToCSV(acc, obj) {
  return acc + obj.id + ',' + obj.parentId + ',' + obj.app + ',' + obj.name + ',' + obj.count + ',' + obj.uniqueCount + '\n'
}

function outputFile(filename, string) {
  fs.writeFile(filename, string, function (err) {
    if(err) { return console.log(err) }
    console.log(filename)
  });
}

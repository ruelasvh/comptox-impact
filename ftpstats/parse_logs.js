fs = require('fs')

// dsstox FTP
const dsstox_log = './logfiles/dsstoxFTP.TXT'
const dsstox_out = 'dsstox_ftp_folders.csv'
const dsstox_ips = 'dsstox_ips.csv'
const dsstox_helpers = {
  getDate: line => new Date(line.slice(0, 24)),
  getIP: line => line.split(/\s+/)[6],
  getDLSize: line => line.split(/\s+/)[7],
  getFile: line => line.split(/\s+/)[8],
}

// comptox FTP
const comptox_log = './logfiles/CompTox\ Report\ 2017\-04\-06.csv'
const comptox_out = 'comptox_ftp_folders.csv'
const comptox_ips = 'comptox_ips.csv'
const comptox_helpers = {
  getDate: line => new Date(line.split(/,/)[1]),
  getIP: line => { if(line.includes('\"')) { return line.split(/",/)[1] } else { return line.split(/,/)[3] } },
  getFile: line => { if(line.includes('\"')) { return line.split(/"/)[1] } else { return line.split(/,/)[2] } },
}

parseLog(dsstox_log, dsstox_out, dsstox_ips, false, true, dsstox_helpers)
parseLog(comptox_log, comptox_out, comptox_ips, true, false, comptox_helpers)

function parseLog(inputFilename, outputFilename, outputIPFilename, inputheaders, includeFiles, helpers) {
  fs.readFile(inputFilename, 'utf8', function(err, data) {
    if(err) { return console.log(err); }

    let dataArray = data.split(/\n/); // array of lines
    dataArray.pop(); // pop the empty last line
    if(inputheaders) { dataArray.shift() } // shift off headers
    let fileHits = dataArray.map(line => ({ ip: helpers.getIP(line), file: helpers.getFile(line) })); // array of objects

    const trunk = { name: 'Tree', children: [], ips: [], uniqueIPs: [] };
    let tree = fileHits.reduce(buildTree, trunk); // json tree
    let array = walkTree(tree); // array of individual files/folders with counts
    array.folders.shift(); // shift off the trunk
    if(!includeFiles) { array.folders = array.folders.filter(folder => folder.folder) }
    let headers = 'id,parent_id,name,count,unique_count\n'; // headers for csv
    let csv = array.folders.reduce(arrayToCSV, headers); // comma-separated string
    let ip_csv = array.ips.sort().reduce((acc, ip) => acc + ip + '\n', ''); // string of all ips

    outputFile('./output/' + outputFilename, csv)
    outputFile('./output/' + outputIPFilename, ip_csv)
  });
}

function buildTree(acc, obj) {
  let fileArray = obj.file.split('/');
  fileArray.shift();
  let temp = acc.children;
  for(let i = 0; i < fileArray.length; i++) {
    let name = fileArray[i];
    if(temp.filter(child => child.name === name).length === 0) {
      temp.push({ name, ips: [], children: [], uniqueIPs: [] });
    }
    let match = temp.filter(child => child.name === name)[0];
    if(match.uniqueIPs.indexOf(obj.ip) === -1) {
      match.uniqueIPs.push(obj.ip);
    }
    match.ips.push(obj.ip);
    temp = match.children;
  }
  return acc;
}

function walkTree(tree) {
  let id = 0;
  let folderArray = [];
  let ipArray = [];
  convertFolder({id}, tree, folderArray, ipArray, -1);
  return { folders: folderArray, ips: ipArray };
}

function convertFolder(id, tree, folderArray, ipArray, parentId) {
  let thisId = id.id + 0;
  tree.uniqueIPs.forEach(ip => { if(!ipArray.includes(ip)) { return ipArray.push(ip); } });
  folderArray.push({
    id: thisId,
    parentId: parentId,
    name: tree.name,
    count: tree.ips.length,
    uniqueCount: tree.uniqueIPs.length,
    folder: tree.children.length > 0
  });
  id.id++;
  tree.children.forEach(child => convertFolder(id, child, folderArray, ipArray, thisId));
}

function arrayToCSV(acc, obj) {
  return acc + obj.id + ',' + obj.parentId + ',' + obj.name + ',' + obj.count + ',' + obj.uniqueCount + '\n';
}

function outputFile(filename, string) {
  fs.writeFile(filename, string, function (err) {
    if(err) { return console.log(err); }
    console.log(filename);
  });
}

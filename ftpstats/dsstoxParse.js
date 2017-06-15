fs = require('fs')
let foo = []
const readDSS = (cb) => {
  fs.readFile('./logfiles/dsstoxFTP.TXT', 'utf8', function(err, data) {
    if(err) {
      return console.log(err);
    }
    cb(data);
    let tree = foo.reduce(reduceFoo, { name: 'Tree', children: [], ips: [], uniqueIPs: [] });
    let array = walkTree(tree);
    array.shift();
    let headers = 'id,parent_id,name,count,unique_count\n';
    let csv = array.reduce(arrayToCSV, headers);
    fs.writeFile('dss.csv', csv, function (err) {
      if(err) { return console.log(err); }
      console.log('dss.csv');
    });
  });
};

function reduceFoo(acc, obj) {
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
  convertFolder({id}, tree, folderArray, -1);
  return folderArray;
}

function convertFolder(id, tree, folderArray, parentId) {
  let thisId = id.id + 0;
  folderArray.push({
    id: thisId,
    parentId: parentId,
    name: tree.name,
    count: tree.ips.length,
    uniqueCount: tree.uniqueIPs.length
  });
  id.id++;
  tree.children.forEach(child => convertFolder(id, child, folderArray, thisId));
}

function arrayToCSV(acc, obj) {
  return acc + obj.id + ',' + obj.parentId + ',' + obj.name + ',' + obj.count + ',' + obj.uniqueCount + '\n';
}
function callback(data) {
  let dataArray = data.split(/\n/);
  dataArray.pop();
  dataArray.forEach(line => foo.push({ date: getDate(line), ip: getIP(line), size: getDLSize(line), file: getFile(line) }));
}

const getDate = line => new Date(line.slice(0, 24));
const getIP = line => line.split(/\s+/)[6];
const getDLSize = line => line.split(/\s+/)[7];
const getFile = line => line.split(/\s+/)[8];
readDSS(callback);

fs = require('fs')
let foo = []
const readDSS = (cb) => {
  fs.readFile('./logfiles/CompTox\ Report\ 2017\-04\-06.csv', 'utf8', function(err, data) {
    if(err) {
      return console.log(err);
    }
    cb(data);
    let out = foo.reduce(reduceFoo, { name: 'Tree', children: [], ips: [], uniqueIPs: [] });
    fs.writeFile('bar.out', JSON.stringify(out), function (err) {
      if(err) { return console.log(err); }
      console.log('bar > bar.out');
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

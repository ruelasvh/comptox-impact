/**
 * Created by vruelasr on 8/30/17.
 */
const fs = require('fs');
const path = require('path');

const usa_map = 'datamaps.usa.min.js';
let src = path.join(__dirname, usa_map);
let destDir = path.join(__dirname, '../../../../node_modules/datamaps/dist');

fs.access(destDir, (err) => {
  if(err) fs.mkdirSync(destDir);
  copyFile(src, path.join(destDir, usa_map));
});

function copyFile(src, dest) {
  let readStream = fs.createReadStream(src);
  
  readStream.once('error', (err) => {
    console.log(err);
  });
  
  readStream.once('end', () => {
    console.log('Done copying USA custom-made map');
  });
  
  readStream.pipe(fs.createWriteStream(dest));
}
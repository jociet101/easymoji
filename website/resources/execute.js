// export function saveInputToFile(s) {
//     var fs = require("fs");
//     var stream;
//     stream = fs.createReadStream("D://data.txt");

//     stream.on("data", function(data) {
//     var chunk = data.toString();
//     console.log(chunk);
// }); 
// }
// import { execSync } from 'child_process'; 

export default function myHandler(req, res) {
    const execSync = require('child_process').execSync;
     // replace ^ if using ES modules

    const output = execSync('ls', { encoding: 'utf-8' });  // the default is 'buffer'
    const splitted = output.split(/\r?\n/);  
    const filtered = splitted.filter( e => {
        return e !== '';
    });

    res.status(200).json(JSON.stringify(filtered))
}
window.myHandler = myHandler;

// // https://www.youtube.com/watch?v=C3fNuqQeUdY
// // import { saveInputToFile } from './app2.js';

// // async function execCommand() {
// //     const req = await fetch("/easymoji/website/resources");
// //     const data = await req.json();
// //     console.log(data);
// // }

// window.onload = () => {
//     const [input,output] = document.querySelectorAll(".codemirror-textarea");
//     const [run, clear] = document.querySelectorAll("button");

//     // configs
//     const editor = CodeMirror.fromTextArea(input, {lineNumbers: true});
//     const shell = CodeMirror.fromTextArea(output, {lineNumbers: false});

//     run.addEventListener("click", () => {
//         const codeToRun = editor.getValue();
//         shell.replaceRange("=> "+codeToRun+"\n", CodeMirror.Pos(shell.lastLine()));
//         execCommand();
//         // try{
//         //     // saveInputToFile(codeToRun);
//         //     shell.replaceRange("=> "+eval(codeToRun)+"\n", CodeMirror.Pos(shell.lastLine()));
//         // } catch(e){
//         //     shell.replaceRange("=> "+e+"\n", CodeMirror.Pos(shell.lastLine()));
//         // }
//     });
//     clear.addEventListener("click", _ => shell.setValue(""));
// }

const bodyParser = require('body-parser');
var urlencodedParser = bodyParser.urlencoded({ extended: true });


const express = require('express');
const app = express();
const path = require('path');
const router = express.Router();
const { exec } = require("child_process");
const fs = require('fs');


router.get('/',function(req,res){
    res.sendFile(path.join(__dirname+'/index.html'))
});


router.get('/hello', urlencodedParser, function(req,res){
    console.log(req)
    fs.writeFile("write_file.txt", "Node was here", err => {
    if (err) console.log(`Failed to write file: ${err}`);
    else console.log("File written.");
    });

    exec("cp ./user_input.txt ../../codegen/user_input.txt; cd ..; cd ..; cd codegen; dune exec ./test.exe user_input.txt", (error, stdout, stderr) => {
        if (error) {
            console.log(`error: ${error.message}`);
            return;
        }
        if (stderr) {
            console.log(`stderr: ${stderr}`);
            return;
        }
        console.log(`stdout: ${stdout}`);
        res.write(stdout)
        res.end()
    });
});

app.post('/test', urlencodedParser, function(req, res) {
    var user_input = req.body.user_input;
    console.log(user_input)

    fs.writeFile("write_file.txt", user_input, err => {
    if (err) console.log(`Failed to write file: ${err}`);
    else console.log("File written.");
    });

    exec("cp ./write_file.txt ../../codegen/user_input.txt; cd ..; cd ..; cd codegen; dune exec ./test.exe user_input.txt", (error, stdout, stderr) => {
        if (error) {
            console.log(`error: ${error.message}`);
            return;
        }
        if (stderr) {
            console.log(`stderr: ${stderr}`);
            return;
        }
        console.log(`stdout: ${stdout}`);
        res.write(stdout)
        res.end()
    });
});
  
//add the router
app.use('/', router);
app.listen(process.env.port || 3000);

console.log('Running at Port 3000');

// console.log("Listening at " + serverUrl + ":" + port);
// server.listen(port, serverUrl);
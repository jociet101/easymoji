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

const express = require('express');
const app = express();
const path = require('path');
const router = express.Router();
const { exec } = require("child_process");


router.get('/',function(req,res){
    res.sendFile(path.join(__dirname+'/index.html'))
//   res.sendFile(path.join(__dirname+'/index.html'));
//   __dirname : It will resolve to your project folder.
});


router.get('/hello',function(req,res){
    res.write("hi")
    // res.end()
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


//add the router
app.use('/', router);
app.listen(process.env.port || 3000);

console.log('Running at Port 3000');

// console.log("Listening at " + serverUrl + ":" + port);
// server.listen(port, serverUrl);
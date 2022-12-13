const express = require('express');
const app = express();
const path = require('path');
const router = express.Router();
const { exec } = require("child_process");
const fs = require('fs');
const bodyParser = require('body-parser');


//add the router
app.use('/', router);
app.listen(process.env.port || 3000);
app.use(express.static(__dirname + '/public'));
app.use(bodyParser.json());

console.log('Running at Port 3000');

router.get('/',function(req,res){
    res.sendFile(path.join(__dirname+'/index.html'))
});

app.post('/idk', function(req, res) {
    var user_input = req.body.user_input;
    // console.log(user_input)

    fs.writeFile("write_file.txt", user_input, err => {
    // if (err) console.log(`Failed to write file: ${err}`);
    // else console.log("File written.");
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
        // console.log(`stdout: ${stdout}`);
        res.write(JSON.stringify(stdout))
        res.end()
    });
});

// app.post('/test', urlencodedParser, function(req, res) {
//     var user_input = req.body.user_input;
//     console.log(user_input)

//     fs.writeFile("write_file.txt", user_input, err => {
//     if (err) console.log(`Failed to write file: ${err}`);
//     else console.log("File written.");
//     });

//     exec("cp ./write_file.txt ../../codegen/user_input.txt; cd ..; cd ..; cd codegen; dune exec ./test.exe user_input.txt", (error, stdout, stderr) => {
//         if (error) {
//             console.log(`error: ${error.message}`);
//             return;
//         }
//         if (stderr) {
//             console.log(`stderr: ${stderr}`);
//             return;
//         }
//         console.log(`stdout: ${stdout}`);
//         res.write(stdout)
//         res.end()
//     });
// });

// console.log("Listening at " + serverUrl + ":" + port);
// server.listen(port, serverUrl);
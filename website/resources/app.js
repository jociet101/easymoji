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

app.post('/codegen', function(req, res) {
    var user_input = req.body.user_input;

    fs.writeFile("write_file.txt", user_input, err => {});

    exec("cp ./write_file.txt ../../codegen/user_input.txt; cd ..; cd ..; cd codegen; dune exec ./test.exe user_input.txt", (error, stdout, stderr) => {
        if (error) {
            console.log(`error: ${error.message}`);
            res.write(JSON.stringify(error.message));
            res.end();
            return;
        }
        if (stderr) {
            console.log(`stderr: ${stderr}`);
            res.write(JSON.stringify(stderr));
            res.end();
            return;
        }
        res.write(JSON.stringify(stdout));
        res.end();
    });
});
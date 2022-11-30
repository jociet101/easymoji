// https://www.youtube.com/watch?v=C3fNuqQeUdY

window.onload = () => {
    const [input,output] = document.querySelectorAll(".codemirror-textarea");
    const [run, clear] = document.querySelectorAll("button");

    // configs
    const editor = CodeMirror.fromTextArea(input, {lineNumbers: true});
    const shell = CodeMirror.fromTextArea(output, {lineNumbers: false});

    run.addEventListener("click", () => {
        const codeToRun = editor.getValue();
        try{
            // saveInputToFile(codeToRun);
            shell.replaceRange("=> "+eval(codeToRun)+"\n", CodeMirror.Pos(shell.lastLine()));
        } catch(e){
            shell.replaceRange("=> "+e+"\n", CodeMirror.Pos(shell.lastLine()));
        }
    });
    clear.addEventListener("click", _ => shell.setValue(""));
}

function saveInputToFile(s) {
    var fs = require("fs");
    var stream;
    stream = fs.createReadStream("D://data.txt");

    stream.on("data", function(data) {
    var chunk = data.toString();
    console.log(chunk);
}); 
}
// https://www.youtube.com/watch?v=C3fNuqQeUdY
// import { saveInputToFile } from './app2.js';

async function execCommand() {
    const req = await fetch("execute");
    const data = await req.json();
    console.log(data);
}

window.onload = () => {
    const [input,output] = document.querySelectorAll(".codemirror-textarea");
    const [run, clear] = document.querySelectorAll("button");

    // configs
    const editor = CodeMirror.fromTextArea(input, {lineNumbers: true});
    const shell = CodeMirror.fromTextArea(output, {lineNumbers: false});

    run.addEventListener("click", () => {
        const codeToRun = editor.getValue();
        shell.replaceRange("=> "+codeToRun+"\n", CodeMirror.Pos(shell.lastLine()));
        execCommand();
        // try{
        //     // saveInputToFile(codeToRun);
        //     shell.replaceRange("=> "+eval(codeToRun)+"\n", CodeMirror.Pos(shell.lastLine()));
        // } catch(e){
        //     shell.replaceRange("=> "+e+"\n", CodeMirror.Pos(shell.lastLine()));
        // }
    });
    clear.addEventListener("click", _ => shell.setValue(""));
}
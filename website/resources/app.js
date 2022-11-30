// https://www.youtube.com/watch?v=C3fNuqQeUdY
window.onload = () => {
    const [input,output] = document.querySelectorAll(".codemirror-textarea");
    const [run, clear] = document.querySelectorAll("button");

    // configs
    const editor = CodeMirror.fromTextArea(input, {lineNumbers: true});
    const shell = CodeMirror.fromTextArea(output, {lineNumbers: false});

    run.addEventListener("click", () => {
        const codeToRun = editor.getValue();
        // shell.setValue(eval(codeToRun));
        shell.replaceRange("=> "+eval(codeToRun)+"\n", CodeMirror.Pos(shell.lastLine()));
    });
    // run.addEventListener("click", () => console.log("running"));
    // clear.addEventListener("click", () => console.log("clearing"));
}
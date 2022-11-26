window.onload = () => {
    const [input,output] = document.querySelectorAll(".codemirror-textarea");
    const editor = CodeMirror.fromTextArea(input, {lineNumbers: true});
    const shell = CodeMirror.fromTextArea(output, {lineNumbers: false});
}

export function saveInputToFile(s) {
    var fs = require("fs");
    var stream;
    stream = fs.createReadStream("D://data.txt");

    stream.on("data", function(data) {
    var chunk = data.toString();
    console.log(chunk);
}); 
}
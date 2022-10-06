function convertToJson(){
    const jsonFormat = require('json-string-formatter');

    var input = document.getElementById('jinput').value;
    var myjson = jsonFormat.format(input);

    document.getElementById('joutput').value = myjson
}

function resetForm(){
    document.getElementById('jinput').value = "";
    document.getElementById('joutput').value = "";
}
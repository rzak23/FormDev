function convertToJson(){
    const jsonFormat = require('json-string-formatter');
    const hl = require('highlight.js');

    var input = document.getElementById('jinput').value;

    if(input == ""){
        Swal.fire(
            'Error',
            'Silahkan inputkan nilai JSON terlebih dahulu',
            'error'
        );
        return;
    }

    var myjson = jsonFormat.format(input);

    document.getElementById('joutput').innerHTML = hl.highlightAuto(myjson).value;
}

function resetForm(){
    document.getElementById('jinput').value = "";
    document.getElementById('joutput').innerHTML = "";
}
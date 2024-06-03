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

    // document.getElementById('joutput').innerHTML = hl.highlightAuto(myjson).value;
    document.getElementById('joutput').innerHTML = myjson;
}

function show_notif(){
    const Swal = require('sweetalert2').default;

    Swal.fire('Copied', 'JSON has copied', 'success');
}

function resetForm(){
    document.getElementById('jinput').value = "";
    document.getElementById('joutput').innerHTML = "";
}
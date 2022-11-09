const { default: Swal } = require("sweetalert2");

function encodeurl(){
    var url = document.getElementById('url').value;
    if(url == ""){
        Swal.fire(
            'Error',
            'Silahkan inputkan nilai terlebih dahulu',
            'error'
        );
        return;
    }
    var enc = encodeURIComponent(url);

    document.getElementById('output').value = enc;
}

function decodeurl(){
    var url = document.getElementById('url').value;
    if(url == ""){
        Swal.fire(
            'Error',
            'Silahkan inputkan nilai terlebih dahulu',
            'error'
        );
        return;
    }
    var dcd = decodeURIComponent(url);

    document.getElementById('output').value = dcd;
}

function reset_form(){
    document.getElementById('url').value = "";
    document.getElementById('output').value = "";
}
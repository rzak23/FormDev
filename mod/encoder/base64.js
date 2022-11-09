const { default: Swal } = require("sweetalert2");

function encodep(){
    var text = document.getElementById('input').value;
    if(text == ""){
        Swal.fire(
            'Error',
            'Silahkan inputkan nilai terlebih dahulu',
            'error'
        );
        return;
    }
    var enc = btoa(text);

    document.getElementById('output').value = enc;
}

function decodep(){
    var enc = document.getElementById('input').value;
    if(enc == ""){
        Swal.fire(
            'Error',
            'Silahkan inputkan nilai terlebih dahulu',
            'error'
        );
        return;
    }
    var txt = atob(enc);

    document.getElementById('output').value = txt;
}

function reset_form(){
    document.getElementById('input').value = "";
    document.getElementById('output').value = "";
}
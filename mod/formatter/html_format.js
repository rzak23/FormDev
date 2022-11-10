function convertToHTML(){
    const htmlFormat = require('html-prettify');
    const hl = require('highlight.js');

    var input = document.getElementById('htmlinput').value;

    if(input == ""){
        Swal.fire(
            'Error',
            'Silahkan inputkan code HTML terlebih dahulu',
            'error'
        );
        return;
    }

    var myHtml = htmlFormat(input);

    document.getElementById('htmloutput').innerHTML = hl.highlightAuto(myHtml).value;
}

function resetForm(){
    document.getElementById('htmlinput').value = "";
    document.getElementById('htmloutput').innerHTML = "";
}
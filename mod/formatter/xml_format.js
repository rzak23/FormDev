function convertToXML(){
    const xmlFormat = require('xml-formatter');
    const hl = require('highlight.js');

    var input = document.getElementById('xmlInput').value;

    if(input == "") {
        Swal.fire(
            'Error',
            'Silahkan inputkan code XML terlebih dahulu',
            'error'
        );
        return;
    }

    var myXml = xmlFormat(input,{
        filter: (node) => node.type !== 'Comment', 
    });

    document.getElementById('xmlOutput').innerHTML = hl.highlightAuto(myXml).value;
}

function resetForm(){
    document.getElementById('xmlInput').value = "";
    document.getElementById('xmlOutput').innerHTML = "";
}
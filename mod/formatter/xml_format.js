function convertToXML(){
    const xmlFormat = require('xml-formatter');
    const hl = require('highlight.js');

    var input = document.getElementById('xmlInput').value;
    var myXml = xmlFormat(input);

    document.getElementById('xmlOutput').innerHTML = hl.highlightAuto(myXml).value;
}

function resetForm(){
    document.getElementById('xmlInput').value = "";
    document.getElementById('xmlOutput').innerHTML = "";
}
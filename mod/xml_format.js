function convertToXML(){
    const xmlFormat = require('xml-formatter');

    var input = document.getElementById('xmlInput').value;
    var myXml = xmlFormat(input);

    document.getElementById('xmlOutput').value = myXml;
}

function resetForm(){
    document.getElementById('xmlInput').value = "";
    document.getElementById('xmlOutput').value = "";
}
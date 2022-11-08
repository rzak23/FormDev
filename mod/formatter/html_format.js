function convertToHTML(){
    const htmlFormat = require('html-prettify');
    const hl = require('highlight.js');

    var input = document.getElementById('htmlinput').value;
    var myHtml = htmlFormat(input);

    document.getElementById('htmloutput').innerHTML = hl.highlightAuto(myHtml).value;
}

function resetForm(){
    document.getElementById('htmlinput').value = "";
    document.getElementById('htmloutput').innerHTML = "";
}
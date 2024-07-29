
function previewMark(){
    const {marked} = require('marked');
    var txt = document.getElementById('inputText').value;
    
    var res = marked.parse(txt);
    document.getElementById('result').innerHTML = res;
}

function resetForm(){
    document.getElementById('inputText').value = "";
    document.getElementById('result').innerHTML = "";
}
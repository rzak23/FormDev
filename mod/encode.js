function encodep(){
    var text = document.getElementById('text').value;
    var enc = btoa(text);

    document.getElementById('output').value = enc;
}

function reset(){
    document.getElementById('text').value = "";
    document.getElementById('output').value = "";
}
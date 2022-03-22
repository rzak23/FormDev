function encodep(){
    var text = document.getElementById('input').value;
    var enc = btoa(text);

    document.getElementById('output').value = enc;
}

function decodep(){
    var enc = document.getElementById('input').value;
    var txt = atob(enc);

    document.getElementById('output').value = txt;
}

function reset(){
    document.getElementById('input').value = "";
    document.getElementById('output').value = "";
}
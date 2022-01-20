function decodep(){
    var enc = document.getElementById('encode').value;
    var txt = atob(enc);

    document.getElementById('text').value = txt;
}


function reset(){
    document.getElementById('encode').value = "";
    document.getElementById('text').value = "";
}
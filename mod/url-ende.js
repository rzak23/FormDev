function encodeurl(){
    var url = document.getElementById('url').value;
    var enc = encodeURIComponent(url);

    document.getElementById('output').value = enc;
}

function decodeurl(){
    var url = document.getElementById('url').value;
    var dcd = decodeURIComponent(url);

    document.getElementById('output').value = dcd;
}

function reset_form(){
    document.getElementById('url').value = "";
    document.getElementById('output').value = "";
}
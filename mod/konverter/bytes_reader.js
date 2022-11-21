function readerData(){
    const theSize = require('filesize');
    var b = document.getElementById('bytes').value;

    var data = theSize.filesize(b,{base: 2, standard: "jedec"});

    document.getElementById('reader').value = data;
}

function resetForm(){
    document.getElementById('bytes').value = "";
    document.getElementById('reader').value = "";
}
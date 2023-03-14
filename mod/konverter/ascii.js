var quadConv = require('quadconv');

function convertAsciiToBiner(){
    var ascii = document.getElementById('ascii').value;
    var asToBiner = quadConv.convert('asc-bin', ascii);

    document.getElementById('result').value = asToBiner;
}

function resetForm(){
    document.getElementById('form').reset();
}
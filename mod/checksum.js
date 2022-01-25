
var CryptoJS = require('crypto-js');
function readHash(){
    var reader = new FileReader();

    reader.addEventListener('load',function () {
        var sha256 = CryptoJS.SHA256(CryptoJS.enc.Latin1.parse(this.result));
        var md5 = CryptoJS.MD5(CryptoJS.enc.Latin1.parse(this.result));
        var sha1 = CryptoJS.SHA1(CryptoJS.enc.Latin1.parse(this.result));
        var sha3 = CryptoJS.SHA3(CryptoJS.enc.Latin1.parse(this.result));
                
        document.getElementById('md5').value = md5;
        document.getElementById('sha2').value = sha256;
        document.getElementById('sha1').value = sha1;
        document.getElementById('sha3').value = sha3;
    });
    reader.readAsBinaryString(document.getElementById('file').files[0]);
}

function reset(){
    document.getElementById('file').value = "";
    document.getElementById('md5').value = "";
    document.getElementById('sha1').value = "";
    document.getElementById('sha2').value = "";
    document.getElementById('sha3').value = "";
}
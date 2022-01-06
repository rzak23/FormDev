var CryptoJS = require('crypto-js');

function hashing(){
    var plain = document.getElementById('text').value;

    document.getElementById('md5').value = CryptoJS.MD5(plain);
    document.getElementById('sha1').value = CryptoJS.SHA1(plain);
    document.getElementById('sha2').value = CryptoJS.SHA256(plain);
    document.getElementById('sha3').value = CryptoJS.SHA3(plain);
}

function reset(){
    document.getElementById('text').value = "";
    document.getElementById('md5').value = "";
    document.getElementById('sha1').value = "";
    document.getElementById('sha2').value = "";
    document.getElementById('sha3').value = "";
    document.getElementById('fileh').value = "";
}

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
    reader.readAsBinaryString(document.getElementById('fileh').files[0]);
}
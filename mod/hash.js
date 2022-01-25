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
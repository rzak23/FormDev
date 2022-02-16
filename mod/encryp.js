var CryptoJS = require('crypto-js')

function encryption(){
    var plain = document.getElementById('text').value;
    var key = document.getElementById('key').value;
    var tipe = document.getElementById('tipe').value;

    if(tipe == 'aes'){
        var chiper = CryptoJS.AES.encrypt(plain,key);
    }else if(tipe == 'des'){
        var chiper = CryptoJS.DES.encrypt(plain,key);
    }else if(tipe == 'tdes'){
        var chiper = CryptoJS.TripleDES.encrypt(plain,key);
    }

    document.getElementById('hasil').value = chiper;
}

function reset(){
    document.getElementById('text').value = "";
    document.getElementById('key').value = "";
    document.getElementById('aes').value = "";
    document.getElementById('des').value = "";
    document.getElementById('tdes').value = "";
}
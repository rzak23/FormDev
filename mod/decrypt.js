function bongkar(){
    var CryptoJS = require('crypto-js');
    var option = document.getElementById('tipe').value;
    var chiper = document.getElementById('chiper').value;
    var key = document.getElementById('key').value;

    if(option == "aes"){
        var rs = CryptoJS.AES.decrypt(chiper,key);
    }else if(option == "des"){
        var rs = CryptoJS.DES.decrypt(chiper,key);
    }else if(option == "tdes"){
        var rs = CryptoJS.TripleDES.decrypt(chiper,key);
    }

    document.getElementById('plain').value = rs.toString(CryptoJS.enc.Utf8);
}

function reset(){
    document.getElementById('chiper').value = "";
    document.getElementById('key').value = "";
    document.getElementById('plain').value = "";
    document.getElementById('tipe').value = "aes";
}
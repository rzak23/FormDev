var CryptoJS = require('crypto-js')

function encryption(){
    var plain = document.getElementById('text').value;
    var key = document.getElementById('key').value;


    if(key == null || key == ""){
        document.getElementById('aes').value = "";
        document.getElementById('des').value = "";
        document.getElementById('tdes').value = "";
    }else{
        var aes = CryptoJS.AES.encrypt(plain,key);
        var des = CryptoJS.DES.encrypt(plain,key);
        var tdes = CryptoJS.TripleDES.encrypt(plain,key);

        document.getElementById('aes').value = aes;
        document.getElementById('des').value = des;
        document.getElementById('tdes').value = tdes;
    }
}

function reset(){
    document.getElementById('text').value = "";
    document.getElementById('key').value = "";
    document.getElementById('aes').value = "";
    document.getElementById('des').value = "";
    document.getElementById('tdes').value = "";
}
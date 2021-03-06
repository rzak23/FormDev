
var CryptoJS = require('crypto-js');
function readHash(){
    var reader = new FileReader();
    var option = document.getElementById('type').value;

    reader.addEventListener('load',function () {
        if(option == "md5"){
            var output = CryptoJS.MD5(CryptoJS.enc.Latin1.parse(this.result));
        }else if(option == "sha256"){
            var output = CryptoJS.SHA256(CryptoJS.enc.Latin1.parse(this.result));
        }else if(option == "sha3"){
            var output = CryptoJS.SHA3(CryptoJS.enc.Latin1.parse(this.result));
        }
        // var sha1 = CryptoJS.SHA1(CryptoJS.enc.Latin1.parse(this.result));
        
        document.getElementById('hasil').value = output;
    });
    reader.readAsBinaryString(document.getElementById('file').files[0]);
}

function notif(){
    const Swall = require('sweetalert2');

    Swall.fire(
        'Copied',
        'Text berhasil disalin',
        'success'
    );
}

function reset(){
    document.getElementById('file').value = "";
    document.getElementById('hasil').value = "";
}
var CryptoJS = require('crypto-js');

function hashing(){
    var plain = document.getElementById('text').value;
    var tipe = document.getElementById('tipe').value;
    var hash = "";

    if(tipe == "md5"){
        hash = CryptoJS.MD5(plain);
    }else if(tipe == "sha1"){
        hash = CryptoJS.SHA1(plain);
    }else if(tipe == "sha256"){
        hash = CryptoJS.SHA256(plain);
    }else if(tipe == "sha3"){
        hash = CryptoJS.SHA3(plain);
    }

    document.getElementById('output').value = hash;
}

function notif(){
    const Swal = require('sweetalert2');

    Swal.fire(
        'Copied',
        'Text copied',
        'success'
    );
}

function reset_form(){
    document.getElementById('text').value = "";
    document.getElementById('tipe').value = "md5";
    document.getElementById('output').value = "";
}
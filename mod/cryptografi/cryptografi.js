var CryptoJS = require('crypto-js');

function encryption(){
    var inp = document.getElementById('input').value;
    var kye = document.getElementById('key').value;
    var tipe = document.getElementById('tipe').value;

    if(kye == ""){
        Swal.fire(
            'Error',
            'Isikan kunci enkripsi terlebih dahulu',
            'errror'
        );
        return;
    }
    if(inp == ""){
        Swal.fire(
            'Error',
            'Isikan nilai terlebih dahulu',
            'error'
        );
        return;
    }

    if(tipe == 'aes'){
        var chiper = CryptoJS.AES.encrypt(inp,kye);
    }else if(tipe == 'des'){
        var chiper = CryptoJS.DES.encrypt(inp,kye);
    }else if(tipe == 'tdes'){
        var chiper = CryptoJS.TripleDES.encrypt(inp,ky);
    }

    document.getElementById('hasil').value = chiper;
}

function bongkar(){
    var chp = document.getElementById('input').value;
    var kyd = document.getElementById('key').value;
    var tipe = document.getElementById('tipe').value;

    if(kyd == ""){
        Swal.fire(
            'Error',
            'Isikan kunci enkripsi terlebih dahulu',
            'errror'
        );
        return;
    }
    if(chp == ""){
        Swal.fire(
            'Error',
            'Isikan nilai terlebih dahulu',
            'error'
        );
        return;
    }

    if(tipe == "aes"){
        var rs = CryptoJS.AES.decrypt(chp,kyd);
    }else if(tipe == "des"){
        var rs = CryptoJS.DES.decrypt(chp,kyd);
    }else if(tipe == "tdes"){
        var rs = CryptoJS.TripleDES.decrypt(chp,kyd);
    }

    document.getElementById('hasil').value = rs.toString(CryptoJS.enc.Utf8);
}

function reset_form(){
    document.getElementById('input').value = "";
    document.getElementById('key').value = "";
    document.getElementById('hasil').value = "";
}
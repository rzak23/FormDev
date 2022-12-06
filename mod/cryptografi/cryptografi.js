var CryptoJS = require('crypto-js');

initialize();

function initialize(){
    $(function(){
        $("input[data-bootstrap-switch]").each(function(){
            $(this).bootstrapSwitch('state');
        })
        document.getElementById('decrypt-box').style.display = "none";
        document.getElementById('labelBox').innerHTML = "Encrypt";
    })
    
}

function changeBox(){
    var page = $('#page:checked').val();

    if(page){
        // $('#encode-box').show(500);
        // $('#decode-box').hide(500);
        document.getElementById('encrypt-box').style.display = "block";
        document.getElementById('decrypt-box').style.display = "none";
        document.getElementById('labelBox').innerHTML = "Encrypt";
    }else{
        // $('#encode-box').hide(500);
        // $('#decode-box').show(500);
        document.getElementById('encrypt-box').style.display = "none";
        document.getElementById('decrypt-box').style.display = "block";
        document.getElementById('labelBox').innerHTML = "Decrypt";
    }
}

function encryption(){
    var inp = document.getElementById('plainText').value;
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
    var chp = document.getElementById('chiperText').value;
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
    document.getElementById('formCrypt').reset();
}
function generate(){
    const {v4: uuidv4, v1: uuidv1} = require('uuid');

    var version = document.getElementById('version').value;
    var capt = document.getElementById('capital').checked;

    if(capt){
        if(version == "1"){
            var rand = uuidv1();
            var result = rand.toUpperCase();
        }else if(version == "4"){
            var rand = uuidv4();
            var result = rand.toUpperCase();
        }
    }else{
        if(version == "1"){
            var rand = uuidv1();
            var result = rand
        }else if(version == "4"){
            var rand = uuidv4();
            var result = rand
        }
    }

    document.getElementById('result').value = result;
}

function cek(){
    const {version: uuidVersion} = require('uuid');
    const Swal = require('sweetalert2');

    var uid = document.getElementById('cuuid').value;
    if(uid == null || uid == ""){
        Swal.fire(
            'Error',
            'Lengkapi UUID untuk bisa di validasi',
            'error'
        );
    }else{
        var result = uuidVersion(uid);
        document.getElementById('cver').value = "Version "+result;
    }
}

function notifC(){
    const Swal = require('sweetalert2');
    Swal.fire(
        'Copied',
        'Text berhasil disalin',
        'success'
    );
}

function reset(){
    document.getElementById('result').value = "";
    document.getElementById('version').value = 1;
    document.getElementById('capital').checked = false;
}
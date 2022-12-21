$(function(){
    $("input[data-bootstrap-switch]").each(function(){
        $(this).bootstrapSwitch('state');
    })
})


function generate(){
    var version = document.getElementById('version').value;
    var capt = document.getElementById('capital').checked;
    var jmlCetak = document.getElementById('jmlCetak').value;

    if(jmlCetak == ""){
        Swal.fire(
            'Error',
            'Isikan jumlah yang ingin dibuat',
            'error'
        );
        return;
    }

    var rand = genForNum(jmlCetak,version);

    if(capt){
        var result = rand.map(element => {
            return element.toUpperCase();
        });
    }else{
        var result = rand;
    }

    var newArr = result.join(',').replace(/,/g, '').split()

    document.getElementById('result').value = newArr;
}

function genForNum(total,versi){
    const {v4: uuidv4, v1: uuidv1} = require('uuid');
    var i;
    var rs = [];

    if(versi == "1"){
        for(i=0;i<total;i++){
            rs[i] = uuidv1()+"\n"; 
        }
    }else if(versi == "4"){
        for(i=0;i<total;i++){
            rs[i] = uuidv4()+"\n"; 
        }
    }
    return rs;
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

function downloadUuid(){
    var fileSave = require('file-saver');
    var text = document.getElementById('result').value;
    var data = new Blob([text],{type:"text/plain;charset=utf-8"});
    fileSave.saveAs(data,"uuid.txt");
}

function notifC(){
    const Swal = require('sweetalert2');
    Swal.fire(
        'Copied',
        'Text copied',
        'success'
    );
}

function reset_form(){
    document.getElementById('result').value = "";
    document.getElementById('version').value = 1;
    document.getElementById('capital').checked = false;
    document.getElementById('jmlCetak').value = "";
}
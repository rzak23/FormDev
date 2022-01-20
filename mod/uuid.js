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

    var uid = document.getElementById('cuuid').value;
    var result = uuidVersion(uid);

    document.getElementById('cver').value = "Version "+result;
}

function reset(){
    document.getElementById('result').value = "";
    document.getElementById('version').value = 1;
    document.getElementById('capital').checked = false;
}
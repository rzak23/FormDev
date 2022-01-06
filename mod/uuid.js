function generate(){
    const {v4: uuidv4, v1: uuidv1} = require('uuid');

    var version = document.getElementById('version').value;

    if(version == "1"){
        var rand = uuidv1();
    }else if(version == "4"){
        var rand = uuidv4();;
    }
    document.getElementById('result').value = rand;
}

function reset(){
    document.getElementById('result').value = "";
    document.getElementById('version').value = 1;
}
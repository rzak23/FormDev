function generate(){
    const {v4: uuidv4} = require('uuid');

    document.getElementById('result').value = uuidv4();
}

function reset(){
    document.getElementById('result').value = "";
}
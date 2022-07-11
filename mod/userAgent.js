const UserAgent = require('user-agents');

function generate(){
    var uagent = new UserAgent();

    document.getElementById('result').value = uagent.toString();

    console.log(uagent.toString());
}

function reset(){
    document.getElementById('result').value = "";
}
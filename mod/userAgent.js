const UserAgent = require('user-agents');

function generate(){
    var uagent = new UserAgent();

    document.getElementById('result').value = uagent.toString();

    console.log(uagent.toString());
}

function reset_form(){
    document.getElementById('result').value = "";
}
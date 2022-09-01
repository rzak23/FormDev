function generate(){
    const UserAgent = require('user-agents');
    var uagent = new UserAgent();

    document.getElementById('result').value = uagent.toString();
}

function reset_form(){
    document.getElementById('result').value = "";
}
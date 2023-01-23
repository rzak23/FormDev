function generate(){
    const UserAgent = require('user-agents');

    var device = document.getElementById('device').value;
    var uagent = new UserAgent({
        deviceCategory: device
    });

    document.getElementById('result').value = uagent.toString();
}

function reset_form(){
    document.getElementById('result').value = "";
}
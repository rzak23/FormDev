function generate(){
    const UserAgent = require('user-agents');

    var device = document.getElementById('device');
    var jumlah = document.getElementById('jumlah');

    var uagent = new UserAgent({
        deviceCategory: device.value
    });
    const uagents = Array(parseInt(jumlah.value)).fill().map(() => uagent());

    document.getElementById('result').value = uagents;
}

function reset_form(){
    document.getElementById('result').value = "";
}
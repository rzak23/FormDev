function onReadCron(){
    const cronstrue = require('cronstrue');

    var cron = document.getElementById('cron').value;
    var reader = cronstrue.toString(cron);

    document.getElementById('result').value = reader;
}

function onResetForm(){
    document.getElementById('formCron').reset();
}
const {shell} = require('electron');
function openDev(){
    var url = "https://github.com/veler/DevToys";
    shell.openExternal(url)
}

function openRepo(){
    var url = "https://github.com/rzak23/FormDev";
    shell.openExternal(url)
}
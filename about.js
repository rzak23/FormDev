const {shell} = require('electron');
function openDev(){
    var url = "https://github.com/veler/DevToys";
    shell.openExternal(url)
}
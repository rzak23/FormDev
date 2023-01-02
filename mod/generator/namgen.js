function myName(){
    const { generateFromEmail, generateUsername } = require("unique-username-generator");

    var randomName = generateUsername();
    
    document.getElementById('name').value = randomName;
}

function notif(){
    const Swall = require('sweetalert2');

    Swall.fire(
        'Copied',
        'Text copied',
        'success'
    );
}

function reset_form(){
    document.getElementById('name').value = "";
}
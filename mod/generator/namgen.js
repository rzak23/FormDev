function myName(){
    const {uniqueNamesGenerator, adjectives, names, languages} = require('unique-names-generator');

    const randomName = uniqueNamesGenerator({
        dictionaries: [names,adjectives],
        length: 2
    });

    document.getElementById('name').value = randomName;
}

function notif(){
    const Swall = require('sweetalert2');

    Swall.fire(
        'Copied',
        'Text berhasil disalin',
        'success'
    );
}

function reset_form(){
    document.getElementById('name').value = "";
}
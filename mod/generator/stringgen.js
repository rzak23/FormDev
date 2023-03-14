function myRandomString(){
    var randomstring = require('randomstring');
    var option = document.getElementById('option').value;
    var length = document.getElementById('panjang').value;

    if(length == "" || length == 0){
        length = 32;
    }

    var randString = randomstring.generate({
        length: length,
        charset: option,
    });

    document.getElementById('string').value = randString;
}

function notif(){
    const Swal = require('sweetalert2');

    Swal.fire(
        'Copied',
        'Text copied',
        'success'
    );
}

function reset_form(){
    document.getElementById('string').value = "";
    document.getElementById('option').value = "alphabetic";
    document.getElementById('panjang').value = "";
}
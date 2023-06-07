function myRandomString(){
    var randomstring = require('randomstring');
    var option = document.getElementById('option').value;
    var panjang = document.getElementById('panjang').value;

    if(panjang == "" || panjang == 0){
        panjang = 32;
    }

    var randString = randomstring.generate({
        length: parseInt(panjang),
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
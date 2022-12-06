function myPass(){
    var alphas = "abcdefghijklmnopqrstu";
    var alphab = "ABCDEFGHIJKLMNOPQRSTU";
    var numeric = "1234567890";
    var char = "!@#$%^&*()-_=+{}[];:,.<>/?`~";
    
    var option = document.getElementById('option').value;
    var long = document.getElementById('panjang').value;

    if(option == "alpha"){
        var mix =  alphas;
    }else if(option == "AlPha"){
        var mix = alphas+alphab;
    }else if(option == "alphanumeric"){
        var mix = alphas+alphab+numeric;
    }else if(option == "alphanumchar"){
        var mix = alphas+alphab+numeric+char;
    }

    var rs = randomString(mix,long);
    
    document.getElementById('pass').value = rs;
}

function randomString(char,long) {
    var result = '';
    var length = long;
    var clenght = char.length;
    for ( var i = 0; i < length; i++ ) {
        result += char.charAt(Math.floor(Math.random() * clenght));
    }
    return result;
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
    document.getElementById('pass').value = "";
    document.getElementById('option').value = "alpha";
    document.getElementById('panjang').value = 6;
}
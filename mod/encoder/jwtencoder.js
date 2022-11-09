const { default: Swal } = require('sweetalert2');

function generateToken(){
    var njwt = require('njwt');
    var secureRandom = require('secure-random');

    var iss = document.getElementById('iss').value;
    var sub = document.getElementById('sub').value;
    var scope = document.getElementById('scope').value;

    if(iss == "" || sub == "" || scope == ""){
        Swal.fire(
            'Error',
            'Silahkan isikan nilai terlebih dahulu',
            'error'
        );
        return;
    }

    var signingKey = secureRandom(256, {type: 'Buffer'});
    var claims = {
        iss: iss,
        sub: sub,
        scope: scope
    }

    var jwt = njwt.create(claims,signingKey);
    var token = jwt.compact();

    document.getElementById('token').value = token;
}

function resetForm(){
    document.getElementById('iss').value = "";
    document.getElementById('sub').value = "";
    document.getElementById('scope').value = "";
    document.getElementById('token').value = "";
}
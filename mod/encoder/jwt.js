initialize();

function initialize(){
    $(function(){
        $("input[data-bootstrap-switch]").each(function(){
            $(this).bootstrapSwitch('state');
        })
        document.getElementById('jwtdecoder').style.display = "none";
    })
    
}

function changeBox(){
    var page = $('#page:checked').val();

    if(page){
        // $('#encode-box').show(500);
        // $('#decode-box').hide(500);
        document.getElementById('jwtencoder').style.display = "block";
        document.getElementById('jwtdecoder').style.display = "none";
    }else{
        // $('#encode-box').hide(500);
        // $('#decode-box').show(500);
        document.getElementById('jwtencoder').style.display = "none";
        document.getElementById('jwtdecoder').style.display = "block";
    }
}

// decoder
function jwt_read(){
    const jwt_decoder = require('jwt-decode');
    var token = document.getElementById('jwt').value;

    if(token == ""){
        Swal.fire(
            'Error',
            'Silahkan inputkan token terlebih dahulu',
            'error'
        );
        return;
    }

    var payload = jwt_decoder(token);
    var algojwt = jwt_decoder(token,{header: true});

    var paydata = "Role: "+payload['Role']+"\nIssuer :"+payload['Issuer']+"\nUsername :"+payload['Username']+"\nExp :"+payload['exp']+"\nIat : "+payload['iat'];
    document.getElementById('payload').value = paydata;
    document.getElementById('algo').value = "Alg : "+algojwt['alg'];
}

function resetFormDecoder(){
    document.getElementById('jwt').value = "";
    document.getElementById('payload').value = "";
    document.getElementById('algo').value = "";
}

//encoder
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

function resetFormEncoder(){
    document.getElementById('iss').value = "";
    document.getElementById('sub').value = "";
    document.getElementById('scope').value = "";
    document.getElementById('token').value = "";
}
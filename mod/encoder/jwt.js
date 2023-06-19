function onDecodeJWT(){
    const jose = require('jose');

    var token = document.getElementById('token').value;

    const claims = jose.decodeJwt(token);
    document.getElementById('iat').value = claims['iat'];
    document.getElementById('exp').value = claims['exp'];
    document.getElementById('iss').value = claims['iss'];
    document.getElementById('aud').value = claims['aud'];
}

function resetForm(){
    document.getElementById('formResult').reset();
    document.getElementById('token').value = "";
}
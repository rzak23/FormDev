async function onJWT() {
    const jose = require('jose');

    var key = document.getElementById('key').value;
    var iat = document.getElementById('iat').value;
    var iss = document.getElementById('iss').value;
    var alg = document.getElementById('algoritma').value;
    var exp = document.getElementById('exp').value;
    var aud = document.getElementById('aud').value;

    const secret = new TextEncoder().encode(key);

    const jwt = await new jose.SignJWT({ 'urn:example:claim': true })
                .setProtectedHeader({alg})
                .setIssuedAt(iat)
                .setAudience(aud)
                .setIssuer(iss)
                .setExpirationTime(exp)
                .sign(secret);
    
    document.getElementById('jwt').value = jwt;
}

function resetForm(){
    document.getElementById('myForm').reset();
    document.getElementById('jwt').value = "";
}
function jwt_read(){
    const jwt_decoder = require('jwt-decode');
    var token = document.getElementById('jwt').value;

    var payload = jwt_decoder(token);
    var algojwt = jwt_decoder(token,{header: true});

    var paydata = "Role: "+payload['Role']+"\nIssuer :"+payload['Issuer']+"\nUsername :"+payload['Username']+"\nExp :"+payload['exp']+"\nIat : "+payload['iat'];
    document.getElementById('payload').value = paydata;
    document.getElementById('algo').value = "Alg : "+algojwt['alg'];
}

function reset(){
    document.getElementById('jwt').value = "";
    document.getElementById('payload').value = "";
    document.getElementById('algo').value = "";
}
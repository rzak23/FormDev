function generateHash(){
    const bcrypt = require('bcrypt');

    var saltround = document.getElementById('salt').value;
    var plain = document.getElementById('plaintText').value;

    var salt = bcrypt.genSaltSync(parseInt(saltround));
    var hash = bcrypt.hashSync(plain,salt);
    
    document.getElementById('result').value = hash;
}

function reset_form(){
    document.getElementById('salt').value = "";
    document.getElementById('plaintText').value = "";
    document.getElementById('result').value = "";
}
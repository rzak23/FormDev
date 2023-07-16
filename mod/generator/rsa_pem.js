function generate_key(){
    const keypair = require('keypair');

    var pair = keypair();
    document.getElementById('public').value = pair['public'];
    document.getElementById('private').value = pair['private'];
}

function reset_form(){
    document.getElementById('form_rsa').reset();
}
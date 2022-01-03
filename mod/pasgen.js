function myPass(){
    var alphas = "abcdefghijklmnopqrstu";
    var alphab = "ABCDEFGHIJKLMNOPQRSTU";
    var numeric = "1234567890";
    var char = alphas+alphab+numeric;

    var rs = randomString(char);
    
    document.getElementById('pass').value = rs;
}

function randomString(char) {
    var result           = '';
    var length = 8;
    var clenght = char.length;
    for ( var i = 0; i < length; i++ ) {
        result += char.charAt(Math.floor(Math.random() * clenght));
    }
    return result;
}

function reset(){
    document.getElementById('pass').value = "";
}
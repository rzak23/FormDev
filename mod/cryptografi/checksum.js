
var CryptoJS = require('crypto-js');
function readHash() {
    var reader = new FileReader();
    var option = document.getElementById('type');
    var loading = document.getElementById('loading');
    var file = document.getElementById('file');
    var btnReset = document.getElementById('btn-reset');
    

    loading.style.display = 'block';
    option.setAttribute('disabled', 'disabled');
    file.setAttribute('disabled', 'disabled');
    btnReset.setAttribute('disabled', 'disabled');

    reader.addEventListener('load', function () {
        setTimeout(function () {
            var wordArray = CryptoJS.lib.WordArray.create(new Uint8Array(reader.result)); // Konversi ke WordArray
            var output;

            if (option.value == "md5") {
                output = CryptoJS.MD5(wordArray);
            } else if (option.value == "sha256") {
                output = CryptoJS.SHA256(wordArray);
            } else if (option.value == "sha3") {
                output = CryptoJS.SHA3(wordArray);
            }

            document.getElementById('output').value = output;
            loading.style.display = 'none';
            option.removeAttribute('disabled');
            file.removeAttribute('disabled');
            btnReset.removeAttribute('disabled');
        }, 500);
    });

    reader.readAsArrayBuffer(document.getElementById('file').files[0]); // Gunakan readAsArrayBuffer()
}

function notif(){
    const Swall = require('sweetalert2');

    Swall.fire(
        'Copied',
        'Text copied',
        'success'
    );
}

function reset_form(){
    document.getElementById('file').value = "";
    document.getElementById('output').value = "";
}
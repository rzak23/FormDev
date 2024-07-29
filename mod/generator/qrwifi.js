function generate(){
    const qrCode = require('wifi-qr-code-generator');

    let ssid = document.getElementById('ssid').value;
    let pass = document.getElementById('pass').value;
    let type = document.getElementById('encryption').value;

    const wifiQR = qrCode.generateWifiQRCode({
        ssid: ssid,
        password: pass,
        encryption: type,
        hiddenSSID: false,
        outputFormat: {type: 'image/png'}
    });
    wifiQR.then(function(data){
        const image = document.createElement('img');
        image.setAttribute('src', data);
        image.setAttribute('width', '400');

        document.getElementById('qr-image').appendChild(image);
    });
}
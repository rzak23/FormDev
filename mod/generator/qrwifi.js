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
        let qrImageDiv = document.getElementById('qr-image');
        qrImageDiv.innerHTML = '';

        let downloadLink = document.createElement('a');
        downloadLink.setAttribute('href', data);
        downloadLink.setAttribute('download', `${ssid}.png`);

        let image = document.createElement('img');
        image.setAttribute('src', data);
        image.setAttribute('width', '300');

        downloadLink.appendChild(image); // untuk keperluan download qr
        qrImageDiv.appendChild(downloadLink);
    });
}

function myQR(){
    const QRCodeStyling = require("qr-code-styling");

    var text = document.getElementById('text').value;
    var color = document.getElementById('warnaq').value;
    var background = document.getElementById('warnab').value;
    const qrCode = new QRCodeStyling({
        width: 300,
        height: 300,
        type: "svg",
        data: text,
        image: "./page/icon.png",
        dotsOptions: {
            color: color,
            type: "rounded"
        },
        backgroundOptions: {
            color: background,
        },
        imageOptions: {
            crossOrigin: "anonymous",
            margin: 20
        }
    });

    document.getElementById('canvas').innerHTML = "";
    qrCode.append(document.getElementById("canvas"));
}

function downloadQR(){
    const QRCodeStyling = require("qr-code-styling");

    var text = document.getElementById('text').value;
    var color = document.getElementById('warnaq').value;
    var background = document.getElementById('warnab').value;
    const qrCode = new QRCodeStyling({
        width: 300,
        height: 300,
        type: "svg",
        data: text,
        image: "./page/icon.png",
        dotsOptions: {
            color: color,
            type: "rounded"
        },
        backgroundOptions: {
            color: background,
        },
        imageOptions: {
            crossOrigin: "anonymous",
            margin: 20
        }
    });

    qrCode.download({ name: text, extension: "png" });
}

function reset_form(){
    document.getElementById('text').value = "";
    document.getElementById('canvas').innerHTML = "";
    document.getElementById('bt-download').hidden = true;
}
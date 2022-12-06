function myLorem(){
    const LoremIpsum = require("lorem-ipsum").LoremIpsum;
    var paragraf = parseInt(document.getElementById('paragraf').value);
    var mink = parseInt(document.getElementById('mink').value);
    var mank = parseInt(document.getElementById('mank').value);
    var mint = parseInt(document.getElementById('mint').value);
    var mant = parseInt(document.getElementById('mant').value);

    if(mink.toString() == "NaN" || mank.toString() == "NaN" || mint.toString() == "NaN" || mant.toString() == "NaN"){
        Swal.fire(
            'Error',
            'Silahkan isikan nilai terlebih dahulu',
            'error'
        );
        return;
    }



    const lorem = new LoremIpsum({
    sentencesPerParagraph: {
        max: mank,
        min: mink
    },
    wordsPerSentence: {
        max: mant,
        min: mint
    }
    });

    document.getElementById('output').value = lorem.generateParagraphs(paragraf);
}

function notif(){
    Swal.fire(
        'Copied',
        'Text copied',
        'success'
    );
}

function saveTxt(){
    var fileSave = require('file-saver');
    var text = document.getElementById('output').value;
    var data = new Blob([text],{type:"text/plain;charset=utf-8"});
    fileSave.saveAs(data,"lorem.txt");
}

function reset_form(){
    document.getElementById('output').value = "";
    document.getElementById('mink').value = "";
    document.getElementById('mank').value = "";
    document.getElementById('mint').value = "";
    document.getElementById('mant').value = "";
    document.getElementById('paragraf').value = 1;
}
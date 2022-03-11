function myLorem(){
    const LoremIpsum = require("lorem-ipsum").LoremIpsum;
    var paragraf = parseInt(document.getElementById('paragraf').value);
    var mink = parseInt(document.getElementById('mink').value);
    var mank = parseInt(document.getElementById('mank').value);
    var mint = parseInt(document.getElementById('mint').value);
    var mant = parseInt(document.getElementById('mant').value);

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

    document.getElementById('hasil').value = lorem.generateParagraphs(paragraf);
}

function notif(){
    const Swall = require('sweetalert2');

    Swall.fire(
        'Copied',
        'Text berhasil disalin',
        'success'
    );
}

function saveTxt(){
    var fileSave = require('file-saver');
    var text = document.getElementById('hasil').value;
    var data = new Blob([text],{type:"text/plain;charset=utf-8"});
    fileSave.saveAs(data,"lorem.txt");
}

function reset(){
    document.getElementById('hasil').value = "";
}
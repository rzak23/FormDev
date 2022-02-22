function myLorem(){
    const LoremIpsum = require("lorem-ipsum").LoremIpsum;
    var paragraf = parseInt(document.getElementById('paragraf').value);

    const lorem = new LoremIpsum({
    sentencesPerParagraph: {
        max: 7,
        min: 4
    },
    wordsPerSentence: {
        max: 8,
        min: 4
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
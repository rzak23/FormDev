function myLorem(){
    const LoremIpsum = require("lorem-ipsum").LoremIpsum;

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

    document.getElementById('hasil').value = lorem.generateParagraphs(3);
}

function notif(){
    const Swall = require('sweetalert2');

    Swall.fire(
        'Copied',
        'Text berhasil disalin',
        'success'
    );
}

function reset(){
    document.getElementById('hasil').value = "";
}
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

function reset(){
    document.getElementById('hasil').value = "";
}
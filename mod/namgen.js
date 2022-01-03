function myName(){
    const {uniqueNamesGenerator, adjectives, names, languages} = require('unique-names-generator');

    const randomName = uniqueNamesGenerator({
        dictionaries: [names,adjectives],
        length: 2
    });

    document.getElementById('name').value = randomName;
}

function reset(){
    document.getElementById('name').value = "";
}
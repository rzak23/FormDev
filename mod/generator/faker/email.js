function onCreateFakerEmail(){
    const {faker} = require('@faker-js/faker');

    const randomEmail = faker.internet.email();
    document.getElementById('res').value = randomEmail;
}

function onResetForm(){
    document.getElementById('fakerForm').reset();
}
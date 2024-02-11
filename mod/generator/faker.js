function onCreateFakerEmail(){
    const {faker} = require('@faker-js/faker');

    const randomEmail = faker.internet.email();
    document.getElementById('res').value = randomEmail;
}

function onCreateFakerFullName(){
    const {faker} = require('@faker-js/faker');

    const randomFullName = faker.person.fullName();
    document.getElementById('res').value = randomFullName;
}

function onCreateFakerCreditCardNumber(){
    const {faker} = require('@faker-js/faker');

    let creditNumber = faker.finance.creditCardNumber();
    document.getElementById('res').value = creditNumber;
}

function onResetForm(){
    document.getElementById('fakerForm').reset();
}
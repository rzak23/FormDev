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

function onCreateFakerCryptoAddress(){
    const {faker} = require('@faker-js/faker');

    let address = '';
    let option = document.getElementById('option');
    if(option.value == 'bitcoin'){
        address = faker.finance.bitcoinAddress();
    }else if(option.value == 'ethereum'){
        address = faker.finance.ethereumAddress();
    }else if(option.value == 'litecoin'){
        address = faker.finance.litecoinAddress();
    }

    document.getElementById('res').value = address;
}

function onResetForm(){
    document.getElementById('fakerForm').reset();
}
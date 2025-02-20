function faker_name(){
    const {faker} = require('@faker-js/faker');

    let fullname = faker.person.fullName();
    document.getElementById('result').value = fullname;
}

function faker_email(){
    const {faker} = require('@faker-js/faker');

    let email = faker.internet.email();
    document.getElementById('result').value = email;
}

function reset_form(){
    document.getElementById('form-faker').reset();
}
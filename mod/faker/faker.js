function faker_name(){
    const {faker} = require('@faker-js/faker');

    let fullname = faker.person.fullName();
    document.getElementById('result').value = fullname;
}

function reset_form(){
    document.getElementById('form-faker').reset();
}
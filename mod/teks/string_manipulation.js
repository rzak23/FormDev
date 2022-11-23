const to = require('to-case');
var txt = "";
var res = "";

function upper(){
    txt = document.getElementById('text_type').value
    res = to.upper(txt);
    console.log(res);
    document.getElementById('text_type').value = res;
}

function capital(){
    txt = document.getElementById('text_type').value
    res = to.capital(txt);
    document.getElementById('text_type').value = res;
}

function camel(){
    txt = document.getElementById('text_type').value
    res = to.camel(txt);
    document.getElementById('text_type').value = res;
}

function slug(){
    txt = document.getElementById('text_type').value
    res = to.slug(txt);
    document.getElementById('text_type').value = res;
}

function lower(){
    txt = document.getElementById('text_type').value
    res = to.lower(txt);
    document.getElementById('text_type').value = res;
}

function dot(){
    txt = document.getElementById('text_type').value
    res = to.dot(txt);
    document.getElementById('text_type').value = res;
}

function snake(){
    txt = document.getElementById('text_type').value
    res = to.snake(txt);
    document.getElementById('text_type').value = res;
}

function reset_form(){
    document.getElementById('text_type').value = "";
}
function gen_crc(){
    const crc = require('crc');

    var char = document.getElementById('string').value;
    const res = document.getElementById('result');

    const convert = crc.crc32(char).toString(16);
    res.value = convert;
}
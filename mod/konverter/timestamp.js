function readTimeStamp(){
    const converter = require('timestamp-conv');

    var timestamp = document.getElementById('timestamp').value;
    const res = new converter.date(timestamp);

    document.getElementById('year').value = res.getYear();
    document.getElementById('month').value = res.getMonth();
    document.getElementById('day').value = res.getDay();
    document.getElementById('hour').value = res.getHour();
    document.getElementById('minute').value = res.getMinute();
    document.getElementById('second').value = res.getSeconds();
}

function resetForm(){
    document.getElementById('formTime').reset();
}
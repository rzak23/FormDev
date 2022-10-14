function convertToSQL(){
    const SqlFormat = require('sql-formatter');
    const hl = require('highlight.js');

    var sqlInput = document.getElementById('sqlInput').value;
    var mySql = SqlFormat.format(sqlInput);

    document.getElementById('sqlOutput').innerHTML = hl.highlightAuto(mySql).value;
}

function resetForm(){
    document.getElementById('sqlInput').value = "";
    document.getElementById('sqlOutput').innerHTML = "";
}
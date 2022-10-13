function convertToSQL(){
    const SqlFormat = require('sql-formatter');

    var sqlInput = document.getElementById('sqlInput').value;
    var mySql = SqlFormat.format(sqlInput);

    document.getElementById('sqlOutput').value = mySql;
}

function resetForm(){
    document.getElementById('sqlInput').value = "";
    document.getElementById('sqlOutput').value = "";
}
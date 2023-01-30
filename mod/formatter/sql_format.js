function convertToSQL(){
    const SqlFormat = require('sql-formatter');
    const hl = require('highlight.js');

    var sqlInput = document.getElementById('sqlInput').value;

    if(sqlInput == ""){
        Swal.fire(
            'Error',
            'Silahkan inputkan code SQL terlebih dahulu',
            'error'
        );
        return;
    }

    var mySql = SqlFormat.format(sqlInput,{
        keywordCase: 'upper',
        linesBetweenQueries: 2
    });

    document.getElementById('sqlOutput').innerHTML = hl.highlightAuto(mySql).value;
}

function resetForm(){
    document.getElementById('sqlInput').value = "";
    document.getElementById('sqlOutput').innerHTML = "";
}
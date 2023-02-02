function findPath(){
    const {JSONPath} = require('jsonpath-plus');

    var find = document.getElementById('path').value;
    var jsondata = document.getElementById('jsondata').value;

    let json = JSON.parse(jsondata);

    var res = JSONPath({
        path: find,
        json
    });

    jpath = JSON.stringify(res, null, 2);
    document.getElementById('output').value = jpath;
}

function reset_form(){
    document.getElementById('jsonpathForm').reset();
}
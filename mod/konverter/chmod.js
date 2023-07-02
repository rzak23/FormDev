function onChmodCalculated(){
    var num = document.getElementById('num').value;
    const chmod = chmod_generate(num);

    document.getElementById('res').value = chmod;
}

function chmod_generate(num){
    const permissions = ['---', '--x', '-w-', '-wx', 'r--', 'r-x', 'rw-', 'rwx'];
    const owner = permissions[Math.floor(num / 100)];
    const group = permissions[Math.floor((num % 100) / 10)];
    const others = permissions[num % 10];
    return `${owner}${group}${others}`;
}

function onResetForm(){
    document.getElementById('chmodForm').reset();
}
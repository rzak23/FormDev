function cekText(){
    require('colors');
    const Diff = require('diff');

    const old = document.getElementById('lama').value;
    const baru = document.getElementById('baru').value;
    var hasil = document.getElementById('hasil');
    const fragment = document.createDocumentFragment();

    hasil.innerHTML = "";

    const diff = Diff.diffChars(old,baru);
    diff.forEach((part) => {
        // green for additions, red for deletions
        // grey for common parts
        const color = part.added ? 'green' : part.removed ? 'red' : 'white';
        span = document.createElement('span');
        span.style.color = color;
        span.appendChild(document.createTextNode(part.value));
        fragment.appendChild(span);
    });
    hasil.appendChild(fragment);
}

function reset_form(){
    document.getElementById('lama').value = "";
    document.getElementById('baru').value = "";
    document.getElementById('hasil').innerHTML = "";
}
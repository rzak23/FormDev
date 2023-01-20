// function cekText(){
//     require('colors');
//     const Diff = require('diff');

//     const old = document.getElementById('lama').value;
//     const baru = document.getElementById('baru').value;
//     var output = document.getElementById('output');
//     const fragment = document.createDocumentFragment();

//     output.innerHTML = "";

//     if(old == ""){
//         Swal.fire(
//             'Error',
//             'Isikan teks lama terlebih dahulu',
//             'error',
//         );
//         return;
//     }

//     if(baru == ""){
//         Swal.fire(
//             'Error',
//             'Silahkan isikan teks baru terlebih dahulu',
//             'error'
//         );
//         return;
//     }

//     const diff = Diff.diffChars(old,baru);
//     diff.forEach((part) => {
//         // green for additions, red for deletions
//         // grey for common parts
//         const color = part.added ? 'green' : part.removed ? 'red' : 'white';
//         span = document.createElement('span');
//         span.style.color = color;
//         span.appendChild(document.createTextNode(part.value));
//         fragment.appendChild(span);
//     });
//     output.appendChild(fragment);
// }

function cekText(){
    const diff = require('simple-text-diff');

    var old = document.getElementById('lama').value;
    var baru = document.getElementById('baru').value;

    const result = diff.default.diffPatch(old, baru, '.');
    
    document.getElementById('outBefore').innerHTML = result['before'];
    document.getElementById('outAfter').innerHTML = result['after'];
}

function reset_form(){
    document.getElementById('lama').value = "";
    document.getElementById('baru').value = "";
    document.getElementById('outBefore').innerHTML = "";
    document.getElementById('outAfter').innerHTML = "";
}
import { nanoid } from '../../node_modules/nanoid/nanoid.js';

document.getElementById('generateNanoId').addEventListener("click", () => {
    var nanid = nanoid();

    document.getElementById('nanoid').value =nanid;
});

document.getElementById('resetForm').addEventListener("click", () => {
    document.getElementById('form').reset();
})
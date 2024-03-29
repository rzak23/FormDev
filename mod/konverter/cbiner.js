// (function(){

//     var ConvertBase = function (num) {
//         return {
//             from : function (baseFrom) {
//                 return {
//                     to : function (baseTo) {
//                         return parseInt(num, baseFrom).toString(baseTo);
//                     }
//                 };
//             }
//         };
//     };
        
//     // binary to decimal
//     ConvertBase.bin2dec = function (num) {
//         return ConvertBase(num).from(2).to(10);
//     };
    
//     // binary to hexadecimal
//     ConvertBase.bin2hex = function (num) {
//         return ConvertBase(num).from(2).to(16);
//     };
    
//     // decimal to binary
//     ConvertBase.dec2bin = function (num) {
//         return ConvertBase(num).from(10).to(2);
//     };
    
//     // decimal to hexadecimal
//     ConvertBase.dec2hex = function (num) {
//         return ConvertBase(num).from(10).to(16);
//     };
    
//     // hexadecimal to binary
//     ConvertBase.hex2bin = function (num) {
//         return ConvertBase(num).from(16).to(2);
//     };
    
//     // hexadecimal to decimal
//     ConvertBase.hex2dec = function (num) {
//         return ConvertBase(num).from(16).to(10);
//     };
    
//     this.ConvertBase = ConvertBase;
    
// })(this);

var quadConv = require('quadconv');

function ambilData(){
    let angka = document.getElementById('angka').value;

    if(angka == ""){
        const Swal = require('sweetalert2');
        Swal.fire(
            'Error',
            'Silahkan isikan nilai desimal terlebih dahulu',
            'error'
        );
    }else{
        var decToBin = quadConv.convert('dec-bin', angka);
        document.getElementById('output').value = decToBin;
    }
}

function reset_form(){
    document.getElementById('angka').value = "";
    document.getElementById('output').value = "";
}
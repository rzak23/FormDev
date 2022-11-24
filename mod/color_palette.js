function findCodeColor(){
    const breakColor = require('color');

    var colorPick = document.getElementById('mycolor').value;
    var theBreak = breakColor(colorPick);

    document.getElementById('rgb').value = theBreak.rgb().array();
    document.getElementById('rgbnumber').value = theBreak.rgbNumber();
    document.getElementById('hex').value = theBreak.hex();
    document.getElementById('cmyk').value = theBreak.cmyk().round().array();
    document.getElementById('hsl').value = theBreak.hsl().string();
}
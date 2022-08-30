function calIp(){
    var NetMask = require('netmask').Netmask;
    var ip = document.getElementById('ip').value;
    var sub = document.getElementById('sub').value;

    var comb = ip+sub;
    var block = new NetMask(comb);

    var base = block.base;
    var netmask = block.mask;
    var broadcast = block.broadcast;
    var first = block.first;
    var last = block.last;
    var tblock = block.size;

    document.getElementById('base').innerHTML = base;
    document.getElementById('subnet').innerHTML = netmask;
    document.getElementById('broadcast').innerHTML = broadcast;
    document.getElementById('first').innerHTML = first;
    document.getElementById('last').innerHTML = last;
    document.getElementById('ipall').innerHTML = tblock-2;
}

function reset_form(){
    document.getElementById('ip').value = "";
    document.getElementById('sub').value = "";
    document.getElementById('base').innerHTML = "";
    document.getElementById('subnet').innerHTML = "";
    document.getElementById('broadcast').innerHTML = "";
    document.getElementById('first').innerHTML = "";
    document.getElementById('last').innerHTML = "";
    document.getElementById('ipall').innerHTML = "";
}
function calculated(){
    var text = document.getElementById('teks').value;
	// console.log(text);
	var h = text.length;
    var s = text.replace(/(^\s*)|(\s*$)/gi,"");
    s = text.replace(/[ ]{2,}/gi," ");
    s = text.replace(/\n /,"\n");
	document.getElementById("karakter").innerHTML = h;
    document.getElementById("kata").innerHTML = s.split(' ').length;
    document.getElementById("kalimat").innerHTML = s.split('.').length;

    // per char
    var obj = {};
    var pc = "";
    
    for(var i=0; i < text.length; i++){
        var l = text.charAt(i);
        obj[l] = (isNaN(obj[l]) ? 1 : obj[l] + 1);
    }

    for(var key in obj){
        pc += key+" : "+obj[key]+"<br>";
    }
    document.getElementById('perchar').innerHTML = pc;
}

function reset(){
    document.getElementById('teks').value = "";
    document.getElementById('karakter').innerHTML = "";
    document.getElementById('kata').innerHTML = "";
    document.getElementById('kalimat').innerHTML = "";
    document.getElementById('perchar').innerHTML = "";
}
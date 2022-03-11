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
}

function reset(){
    document.getElementById('teks').value = "";
    document.getElementById('karakter').innerHTML = "";
    document.getElementById('kata').innerHTML = "";
}
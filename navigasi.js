index_page();

function index_page(){
	fetch('./page/index.html')
  	.then(response=> response.text())
  	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();
}

function remove_script_modular(){
	const element = document.getElementById('sc');
	const element2 = document.getElementById('sc2');
	if(element){
		element.remove();
	}

	if(element2){
		element2.remove();
	}
}

function base64_page(){
	fetch('./page/base64.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();
	
	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/base64.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function url_page(){
	fetch('./page/url-ende.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/url-ende.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function jwt_decoder_page(){
	fetch('./page/jwt-decode.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/jwtdecoder.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function cryptografi_page(){
	fetch('./page/cryptografi.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/cryptografi.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function checksum_page(){
	fetch('./page/checksum.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/checksum.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function uuid_page(){
	fetch('./page/uuid.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/uuid.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function hash_page(){
	fetch('./page/hash.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/hash.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function string_page(){
	fetch('./page/string.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/stringgen.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function name_page(){
	fetch('./page/name.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/namgen.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function qr_code_page(){
	fetch('./page/qrcode.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'node_modules/qr-code-styling/lib/qr-code-styling.js';
	script.id = 'sc';
	const script2 = document.createElement('script');
	script2.src = 'mod/qrcode.js';
	script2.id = 'sc2';

	// Append to the `head` element
	document.head.appendChild(script);
	document.head.appendChild(script2);
}

function lorem_page(){
	fetch('./page/lorem.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/lorem.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function user_agent_page(){
	fetch('./page/useragent.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/userAgent.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function cal_biner_page(){
	fetch('./page/cbiner.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/cbiner.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function ip_cal_page(){
	fetch('./page/ipcal.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/ipcal.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function text_diff_page(){
	fetch('./page/banding.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/banding.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function text_check_page(){
	fetch('./page/teks-checker.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/checker.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}
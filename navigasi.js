index_page();

function index_page(){
	fetch('./page/index.html')
  	.then(response=> response.text())
  	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();
}

function remove_script_modular(){
	const element = document.getElementById('sc');
	if(element){
		element.remove();
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
const { default: Swal } = require("sweetalert2");

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
	fetch('./page/encoder/base64.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();
	
	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/encoder/base64.js';
	script.id = 'sc';

	// Append to the `head` element
	document.body.appendChild(script);
}

function url_page(){
	fetch('./page/encoder/url-ende.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/encoder/url-ende.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function jwt_decoder(){
	fetch('./page/encoder/jwt.html')
	.then(response => response.text())
	.then(text => document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/encoder/jwt.js';
	script.id = 'sc';

	// Append to the `body` element
	document.body.appendChild(script);
}

function jwt_page(){
	fetch('./page/encoder/jwt.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/encoder/jwt.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function cryptografi_page(){
	fetch('./page/cryptografi/cryptografi.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/cryptografi/cryptografi.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function checksum_page(){
	fetch('./page/cryptografi/checksum.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/cryptografi/checksum.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function bcrypt_page(){
	fetch('./page/generator/bcrypt.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/generator/bcrypt.js';
	script.id = 'sc';

	// Append to the `head` element
	document.body.appendChild(script);
}

function uuid_page(){
	fetch('./page/generator/uuid.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/generator/uuid.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function nanoid_page(){
	fetch('./page/generator/nanoid.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.type = 'module';
	script.src = 'mod/generator/nanoid.js';
	script.id = 'sc';

	// Append to the `head` element
	document.body.appendChild(script);
}

function hash_page(){
	fetch('./page/generator/hash.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/generator/hash.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function string_page(){
	fetch('./page/generator/string.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/generator/stringgen.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function username_page(){
	fetch('./page/generator/name.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/generator/namgen.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function qr_code_page(){
	fetch('./page/generator/qrcode.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	// const script = document.createElement('script');
	// script.src = 'node_modules/qr-code-styling/lib/qr-code-styling.js';
	// script.id = 'sc';
	const script2 = document.createElement('script');
	script2.src = 'mod/generator/qrcode.js';
	script2.id = 'sc2';

	// Append to the `head` element
	// document.head.appendChild(script);
	document.head.appendChild(script2);
}

function qr_wifi_page(){
	fetch('./page/generator/qrwifi.html')
	.then(response => response.text())
	.then(text => document.getElementById('page').innerHTML = text);

	remove_script_modular();
	const script = document.createElement('script');
	script.src = 'mod/generator/qrwifi.js';
	script.id = 'sc2';
	document.body.appendChild(script);
}

function lorem_page(){
	fetch('./page/generator/lorem.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/generator/lorem.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function user_agent_page(){
	fetch('./page/generator/useragent.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/generator/userAgent.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function jwt_generator(){
	fetch('./page/generator/jwt.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/generator/jwt.js';
	script.id = 'sc';

	// Append to the `head` element
	document.body.appendChild(script);
}

function faker_email(){
	fetch('./page/generator/faker/email.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/generator/faker.js';
	script.id = 'sc';

	// Append to the `head` element
	document.body.appendChild(script);
}

function faker_fullname(){
	fetch('./page/generator/faker/full_name.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/generator/faker.js';
	script.id = 'sc';

	// Append to the `head` element
	document.body.appendChild(script);
}

function faker_credit_card(){
	fetch('./page/generator/faker/credit_card.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/generator/faker.js';
	script.id = 'sc';

	// Append to the `head` element
	document.body.appendChild(script);
}

function faker_crypto_address(){
	fetch('./page/generator/faker/crypto_address.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/generator/faker.js';
	script.id = 'sc';

	// Append to the `head` element
	document.body.appendChild(script);
}

function rsa_pem_generator(){
	fetch('./page/generator/rsa_pem.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/generator/rsa_pem.js';
	script.id = 'sc';

	// Append to the `head` element
	document.body.appendChild(script);
}

function crc_generator(){
	fetch('./page/generator/crc.html')
	.then(response => response.text())
	.then(text => document.getElementById('page').innerHTML = text);

	remove_script_modular();
	const script = document.createElement('script');
	script.src = 'mod/generator/crc.js';
	script.id = 'sc';
	document.body.appendChild(script);
}

function cal_biner_page(){
	fetch('./page/konverter/cbiner.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/konverter/cbiner.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function ip_cal_page(){
	fetch('./page/konverter/ipcal.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/konverter/ipcal.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function bytes_reader_page(){
	fetch('./page/konverter/bytes_reader.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/konverter/bytes_reader.js';
	script.id = 'sc';

	// Append to the `head` element
	document.body.appendChild(script);
}

function timestamp_page(){
	fetch('./page/konverter/timestamp.html')
	.then(response => response.text())
	.then(text => document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/konverter/timestamp.js';
	script.id = 'sc';

	// Append to the `body` element
	document.body.appendChild(script);
}

function ascii_page(){
	fetch('./page/konverter/ascii.html')
	.then(response => response.text())
	.then(text => document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/konverter/ascii.js';
	script.id = 'sc';

	// Append to the `body` element
	document.body.appendChild(script);
}

function crontab_reader(){
	fetch('./page/konverter/crontab.html')
	.then(response => response.text())
	.then(text => document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/konverter/crontab.js';
	script.id = 'sc';

	// Append to the `body` element
	document.body.appendChild(script);
}

function chmod_calculator(){
	fetch('./page/konverter/chmod.html')
	.then(response => response.text())
	.then(text => document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/konverter/chmod.js';
	script.id = 'sc';

	// Append to the `body` element
	document.body.appendChild(script);
}

function text_diff_page(){
	fetch('./page/teks/banding.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/teks/banding.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function text_check_page(){
	fetch('./page/teks/teks-checker.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/teks/checker.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function string_manipulation_page(){
	fetch('./page/teks/string-manipulation.html')
	.then(response=> response.text())
	.then(text=> document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/teks/string_manipulation.js';
	script.id = 'sc';

	// Append to the `head` element
	document.body.appendChild(script);
}

function json_format_page(){
	fetch('./page/formatter/json-format.html')
	.then(response => response.text())
	.then(text => document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/formatter/json_format.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function sql_format_page(){
	fetch('./page/formatter/sql-format.html')
	.then(response => response.text())
	.then(text => document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/formatter/sql_format.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function xml_format_page(){
	fetch('./page/formatter/xml-format.html')
	.then(response => response.text())
	.then(text => document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/formatter/xml_format.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function html_format_page(){
	fetch('./page/formatter/html-format.html')
	.then(response => response.text())
	.then(text => document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/formatter/html_format.js';
	script.id = 'sc';

	// Append to the `head` element
	document.head.appendChild(script);
}

function color_palette_page(){
	fetch('./page/color_palette.html')
	.then(response => response.text())
	.then(text => document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/color_palette.js';
	script.id = 'sc';

	// Append to the `head` element
	document.body.appendChild(script);
}

function markdown_page(){
	fetch('./page/markdown.html')
	.then(response => response.text())
	.then(text => document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/markdown.js';
	script.id = 'sc';

	// Append to the `head` element
	document.body.appendChild(script);
}

function jsonpath_page(){
	fetch('./page/jsonpath.html')
	.then(response => response.text())
	.then(text => document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/jsonpath.js';
	script.id = 'sc';

	// Append to the `head` element
	document.body.appendChild(script);
}

function portdetect_page(){
	fetch('./page/port.html')
	.then(response => response.text())
	.then(text => document.getElementById('page').innerHTML = text);

	remove_script_modular();

	// Create new script element
	const script = document.createElement('script');
	script.src = 'mod/port.js';
	script.id = 'sc';

	// Append to the `head` element
	document.body.appendChild(script);
}

const {shell} = require('electron');
function openDev(){
    var url = "https://github.com/veler/DevToys";
    shell.openExternal(url)
}

// function openRepo(){
//     var url = "https://github.com/rzak23/FormDev";
//     shell.openExternal(url)
// }

function openFeedback(){
	var url = "https://formdev.my.id/feedback/add";
	shell.openExternal(url);
}
const Route = require('./routes/route');
index_page();

function index_page(){
	let route = new Route();
	route.loadPage('index.html');
}

function base64_page(){
	let route = new Route();
	route.loadPage('encoder/base64.html', 'encoder/base64.js');
}

function url_page(){
	let route = new Route();
	route.loadPage('encoder/url-ende.html', 'encoder/url-ende.js');
}

function jwt_decoder(){
	let route = new Route();
	route.loadPage('encoder/jwt.html', 'encoder/jwt.js');
}

function cryptografi_page(){
	let route = new Route();
	route.loadPage('cryptografi/cryptografi.html', 'cryptografi/cryptografi.js');
}

function checksum_page(){
	let route = new Route();
	route.loadPage('cryptografi/checksum.html', 'cryptografi/checksum.js');
}

function bcrypt_page(){
	let route = new Route();
	route.loadPage('generator/bcrypt.html', 'generator/bcrypt.js');
}

function uuid_page(){
	let route = new Route();
	route.loadPage('generator/uuid.html', 'generator/uuid.js');
}

function nanoid_page(){
	let route = new Route();
	route.loadPage('generator/nanoid.html', 'generator/nanoid.js');
}

function hash_page(){
	let route = new Route();
	route.loadPage('generator/hash.html', 'generator/hash.js');
}

function string_page(){
	let route = new Route();
	route.loadPage('generator/string.html', 'generator/stringgen.js');
}

function username_page(){
	let route = new Route();
	route.loadPage('generator/name.html', 'generator/namgen.js');
}

function qr_code_page(){
	let route = new Route();
	route.loadPage('generator/qrcode.html', 'generator/qrcode.js');

	// // Create new script element
	// const script = document.createElement('script');
	// script.src = 'node_modules/qr-code-styling/lib/qr-code-styling.js';
	// script.id = 'sc';

	// // Append to the `head` element
	// document.head.appendChild(script);
}

function lorem_page(){
	let route = new Route();
	route.loadPage('generator/lorem.html', 'generator/lorem.js');
}

function user_agent_page(){
	let route = new Route();
	route.loadPage('generator/useragent.html', 'generator/userAgent.js');
}

function jwt_generator(){
	let route = new Route();
	route.loadPage('generator/jwt.html', 'generator/jwt.js');
}

function faker_email(){
	let route = new Route();
	route.loadPage('generator/faker/email.html', 'generator/faker.js');
}

function faker_fullname(){
	let route = new Route();
	route.loadPage('generator/faker/full_name.html', 'generator/faker.js');
}

function faker_credit_card(){
	let route = new Route();
	route.loadPage('generator/faker/credit_card.html', 'generator/faker.js');
}

function faker_crypto_address(){
	let route = new Route();
	route.loadPage('generator/faker/crypto_address.html', 'generator/faker.js');
}

function rsa_pem_generator(){
	let route = new Route();
	route.loadPage('generator/rsa_pem.html', 'generator/rsa_pem.js');
}

function crc_generator(){
	let route = new Route();
	route.loadPage('generator/crc.html', 'generator/crc.js');
}

function cal_biner_page(){
	let route = new Route();
	route.loadPage('konverter/cbiner.html', 'konverter/cbiner.js');
}

function ip_cal_page(){
	let route = new Route();
	route.loadPage('konverter/ipcal.html', 'konverter/ipcal.js');
}

function bytes_reader_page(){
	let route = new Route();
	route.loadPage('konverter/bytes_reader.html', 'konverter/bytes_reader.js');
}

function timestamp_page(){
	let route = new Route();
	route.loadPage('konverter/timestamp.html', 'konverter/timestamp.js');
}

function ascii_page(){
	let route = new Route();
	route.loadPage('konverter/ascii.html', 'konverter/ascii.js');
}

function crontab_reader(){
	let route = new Route();
	route.loadPage('konverter/crontab.html', 'konverter/crontab.js');
}

function chmod_calculator(){
	let route = new Route();
	route.loadPage('konverter/chmod.html', 'konverter/chmod.js');
}

function text_diff_page(){
	let route = new Route();
	route.loadPage('teks/banding.html', 'teks/banding.js');
}

function text_check_page(){
	let route = new Route();
	route.loadPage('teks/teks-checjer.html', 'teks/checker.js');
}

function string_manipulation_page(){
	let route = new Route();
	route.loadPage('teks/string-manipulation.html', 'teks/string_manipulation.js');
}

function json_format_page(){
	let route = new Route();
	route.loadPage('formatter/json-format.html', 'formatter/json_format.js');
}

function sql_format_page(){
	let route = new Route();
	route.loadPage('formatter/sql-format.html', 'formatter/sql_format.js');
}

function xml_format_page(){
	let route = new Route();
	route.loadPage('formatter/xml-format.html', 'formatter/xml_format.js');
}

function html_format_page(){
	let route = new Route();
	route.loadPage('formatter/html-format.html', 'formatter/html_format.js');
}

function color_palette_page(){
	let route = new Route();
	route.loadPage('color_palette.html', 'color_palette.js');
}

function markdown_page(){
	let route = new Route();
	route.loadPage('markdown.html', 'markdown.js');
}

function jsonpath_page(){
	let route = new Route();
	route.loadPage('jsonpath.html', 'jsonpath.js');
}

function portdetect_page(){
	let route = new Route();
	route.loadPage('port.html', 'port.js');
}

const {shell} = require('electron');
function openDev(){
    var url = "https://github.com/veler/DevToys";
    shell.openExternal(url)
}

function openRepo(){
    var url = "https://github.com/rzak23/FormDev";
    shell.openExternal(url)
}

function openFeedback(){
	var url = "https://github.com/rzak23/FormDev/issues";
	shell.openExternal(url);
}
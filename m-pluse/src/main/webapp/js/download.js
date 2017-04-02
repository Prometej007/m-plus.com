function download(name, href) {
	var link = document.createElement('a');
	link.setAttribute('href', href);
	link.setAttribute('download', name);
	onload = link.click();
}
function copy(str) {
	let
	tmp = document.createElement('INPUT'), focus = document.activeElement;

	tmp.value = str;

	document.body.appendChild(tmp);
	tmp.select();
	document.execCommand('copy');
	document.body.removeChild(tmp);
	focus.focus();
}

function copypast(value, id) {

	// if (buff != "") {
	try {
		// document.getElementById(id).value="";
		copy(value);

		return false;

	} catch (e) {
		return false;

	}
	// }
}
function upBuffer(id) {
	// document.getElementById(id).value="&#128190";
}
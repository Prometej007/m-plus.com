function download(name, href) {
	var link = document.createElement('a');
	link.setAttribute('href', href);
	link.setAttribute('download', name);
	onload = link.click();
}
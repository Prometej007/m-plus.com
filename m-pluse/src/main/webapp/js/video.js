function playVideoPresentation() {

	document.getElementById("background-presentation").style.display = "none";
	document.getElementById("close-button-presentation").style.display = "block";
	$("#video-player")[0].pause();
	$("#video-player")[0].currentTime = 0;
	$("#video-player")[0].play();
	$("#video-player")[0].loop = false;
	$("#video-player")[0].volume = 1;
	document.getElementById("dow").style.display = "none";

}
// statisticadddownloadarar
function addDownloadAR() {
	$.ajax({

		url : 'statisticadddownloadarar?' + $('input[name=csrf_name]').val()
				+ "=" + $('input[name=csrf_value]').val(),
		method : 'POST',
		contentType : 'application/json; charset=UTF-8',
		dataType : 'json',
		success : function(res) {

		}
	})
}
// statisticadddownloadarsite
function addDownloadSite() {
	$.ajax({

		url : 'statisticadddownloadarsite?' + $('input[name=csrf_name]').val()
				+ "=" + $('input[name=csrf_value]').val(),
		method : 'POST',
		contentType : 'application/json; charset=UTF-8',
		dataType : 'json',
		success : function(res) {

		}
	})
}
function closeVideoPresentation() {

	document.getElementById('dowbutt').style.right = "6%";
	document.getElementById('dowbutt').style.bottom = "2%";
	document.getElementById('dowbutt').style.display = "block";
	document.getElementById("formmenu").style.display = "none";

	document.getElementById("background-presentation").style.display = "block";
	document.getElementById("close-button-presentation").style.display = "none";
	// $("#video-player")[0].currentTime = 0;
	$("#video-player")[0].play();
	$("#video-player")[0].loop = true;
	$("#video-player")[0].volume = 0;
	document.getElementById("dow").style.display = "block";

}
// $("#video-player")
// .addEventListener(
// "ended",
// function() {
// if (document.getElementById("background-presentation").style.display ==
// "none") {
// document.getElementById("download").style.bottom = "50%";
// document.getElementById("download").style.right = "50%";
// document.getElementById("download").style.background = "green";
// }
// }, false);

$(document)
		.ready(
				function() {
					$('video')
							.on(
									'ended',
									function() {
										if (document
												.getElementById("background-presentation").style.display == "none") {

											startDownload();
										}
									});
				});
function startDownload() {

	// document.getElementById("dow").style.display = "block";
	// document.getElementById("dowbutt").style.bottom = "50%";
	// document.getElementById("dowbutt").style.right = "50%";

	document.getElementById("dow").style.display = "block";
	document.getElementById("dowbutt").style.bottom = "10%";
	document.getElementById("dowbutt").style.right = "10%";

}
function startEmail() {
	if (document.getElementById("formmenu").style.display == "none") {
		document.getElementById('dowbutt').style.display = "none";
		document.getElementById("formmenu").style.display = "block";
	} else {
		document.getElementById('dowbutt').style.display = "block";
		closeDoubleClick();
	}
}
function sendEmail(name, href, type) {
	var email = document.getElementById('emailVideo').value;
	var check = true;
	for (var i = 0; i < email.length; i++) {

		if ((email[i] != "@") && check) {

		} else {
			check = false;
		}
	}
	if (!check) {
		download(name, href);
		messageSave();
		closeDownload();
		closeVideoPresentation();
		document.getElementById('dowbutt').style.right = "6%";
		document.getElementById('dowbutt').style.bottom = "2%";
		document.getElementById('dowbutt').style.display = "block";
	} else {
		// log
	}
	if (type == "VR") {

		addDownloadAR();
	} else if (type == "SITE") {

		addDownloadSite();
	}
}
function closeDownload() {
	closeVideoPresentation();
	document.getElementById('dowbutt').style.right = "6%";
	document.getElementById('dowbutt').style.bottom = "2%";
	document.getElementById('dowbutt').style.display = "block";
	document.getElementById("formmenu").style.display = "none";

}
function download(name, href) {
	var link = document.createElement('a');
	link.setAttribute('href', href);
	link.setAttribute('download', name);
	onload = link.click();
}

function messageSave() {

	var user = {

		email : document.getElementById('emailVideo').value,

	}

	document.getElementById('emailVideo').value = '';

	$.ajax({
		url : 'messageSave?' + $('input[name=csrf_name]').val() + "="
				+ $('input[name=csrf_value]').val(),
		method : 'POST',
		contentType : 'application/json; charset=UTF-8',
		dataType : 'json',
		data : JSON.stringify(user),
		success : function(res) {
		}
	})

}
function closeDoubleClick() {
	document.getElementById("formmenu").style.display = "none";
}
function nameFile(name) {

	document.getElementById("download-info-name").style.display = "block";
	document.getElementById("circle").style.display = "block";
	document.getElementById("dowblock").style.display = "block";
}
function closeNameFile() {
	document.getElementById("dowblock").style.display = " none";
	document.getElementById("download-info-name").style.display = "none";
	document.getElementById("circle").style.display = "none";

}

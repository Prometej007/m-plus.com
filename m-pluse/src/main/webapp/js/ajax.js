window.onload = function () {

    $.ajax({

        url: 'loadMessages?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
        method: 'POST',
        contentType: 'application/json; charset=UTF-8',
        dataType: 'json',
        success: function (res) {

            var all = '';

            for (var i = 0; i < res.length; i++) {
                var index = res[i].id;
                all += '<div class="box">'+res[i].name +'<a onclick="deleteMessage(' + index + ')"> delete </div><br>';
            }
            document.getElementById('allMessages').innerHTML = all;
        }
    })

}

function deleteMessage(index) {

    $.ajax({

        url: 'deleteMessage?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
        method: 'POST',
        contentType: 'application/json; charset=UTF-8',
        dataType: 'json',
        data: '' + index,
        success: function (res) {

            var all = '';

            for (var i = 0; i < res.length; i++) {
                var index = res[i].id;
                all += '<div class="box">'+res[i].name +'<a onclick="deleteMessage(' + index + ')"> delete </div><br>';
            }
            document.getElementById('allMessages').innerHTML = all;
        	
        }
    })


}

function wasRead(index) {

    $.ajax({

        url: 'wasRead?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
        method: 'POST',
        contentType: 'application/json; charset=UTF-8',
        dataType: 'json',
        data: '' + index,
        success: function (res) {

            var all = '';

            for (var i = 0; i < res.length; i++) {
                var index = res[i].id;
                all += '<div class="box">'+res[i].name +'<a onclick="deleteMessage(' + index + ')"> delete </div><br>';
            }
            document.getElementById('allMessages').innerHTML = all;
        	
        }
    })


}

//==============================================================================================================
//==============================================================================================================
//==============================================================================================================
//==============================================================================================================
function messageSave() {

	var user = {

		name : document.getElementById('nameUser').value,
		email : document.getElementById('emailBot').value,
		message : document.getElementById('message').value

	}

	document.getElementById('nameUser').value = '';
	document.getElementById('emailBot').value = '';
	document.getElementById('message').value = '';
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

function messageSaveBottom() {

	var user = {

		name : document.getElementById('nameUser-bottom').value,
		email : document.getElementById('email-bottom').value,
		message : document.getElementById('message-bottom').value

	}

	document.getElementById('nameUser-bottom').value = '';
	document.getElementById('email-bottom').value = '';
	document.getElementById('message-bottom').value = '';
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

function wrapperSave() {

	var userWrapper = {

		name : document.getElementById('nameFormLeft').value,
		phoneOrEmail : document.getElementById('emailOfPhoneFormLeft').value,

	}

	document.getElementById('nameFormLeft').value = '';
	document.getElementById('emailOfPhoneFormLeft').value = '';

	$.ajax({

		url : 'messageCall?' + $('input[name=csrf_name]').val() + "="
				+ $('input[name=csrf_value]').val(),
		method : 'POST',
		contentType : 'application/json; charset=UTF-8',
		dataType : 'json',
		data : JSON.stringify(userWrapper),
		success : function(res) {

		}

	})

}
// _________________________________________________валідація для правої
// форми________start_________________________________
function validationEmailOfPhoneFormLeft() {

	var emailOfPhoneFormLeft = document.getElementById('emailOfPhoneFormLeft').value;
	var nameFormLeft = document.getElementById('nameFormLeft').value;
	var checkPhone = true;
	var checkPhoneOrPhone = true;
	for (var i = 0; i < emailOfPhoneFormLeft.length; i++) {
		if (checkPhoneOrPhone && emailOfPhoneFormLeft[i] != '@') {
			checkPhoneOrPhone = true;
		} else {
			checkPhoneOrPhone = false;
		}
	}
	if (checkPhoneOrPhone) {

		for (var i = 0; i < emailOfPhoneFormLeft.length; i++) {
			if (emailOfPhoneFormLeft[i] == '1' && checkPhone) {
				check = true;
			} else if (emailOfPhoneFormLeft[i] == '2' && checkPhone) {
				check = true;
			} else if (emailOfPhoneFormLeft[i] == '3' && checkPhone) {
				check = true;
			} else if (emailOfPhoneFormLeft[i] == '4' && checkPhone) {
				check = true;
			} else if (emailOfPhoneFormLeft[i] == '5' && checkPhone) {
				check = true;
			} else if (emailOfPhoneFormLeft[i] == '6' && checkPhone) {
				check = true;
			} else if (emailOfPhoneFormLeft[i] == '7' && checkPhone) {
				check = true;
			} else if (emailOfPhoneFormLeft[i] == '8' && checkPhone) {
				check = true;
			} else if (emailOfPhoneFormLeft[i] == '9' && checkPhone) {
				check = true;
			} else if (emailOfPhoneFormLeft[i] == '0' && checkPhone) {
				check = true;
			} else {
				check = false;
			}
		}
	}
	if (!checkPhoneOrPhone && nameFormLeft != "") {

		wrapperSave();
		document.getElementById('loggerFormLeft').innerHTML = "ready";
		document.getElementById('loggerFormLeft').style = "color:green;";
	} else {

		if (checkPhone
				&& (emailOfPhoneFormLeft.length == 10 || emailOfPhoneFormLeft.length == 12)
				&& nameFormLeft != "") {
			wrapperSave();
			document.getElementById('loggerFormLeft').innerHTML = "ready";
			document.getElementById('loggerFormLeft').style = "color:green;";

		} else {
			if (nameFormLeft == "") {
				document.getElementById('loggerFormLeft').style = "color:red;"
				document.getElementById('loggerFormLeft').innerHTML = "name not found";
			} else {
				document.getElementById('loggerFormLeft').innerHTML = "Incorrect telephone number of eMail";
				document.getElementById('loggerFormLeft').style = "color:red;"

			}

		}
	}
	return false;
}
// _________________________________________________валідація для правої
// форми________end_________________________________

// _________________________________________________валідація для bottom
// форми________start_________________________________
function validationEmailOfPhoneFormBottom() {
	// nameUser-bottom email-bottom message-bottom
	var email = document.getElementById('email-bottom').value;
	var name = document.getElementById('nameUser-bottom').value;
	var message = document.getElementById('message-bottom').value;

	var checkEmail = true;
	for (var i = 0; i < email.length; i++) {
		if (checkEmail && email[i] != '@') {
			checkEmail = true;
		} else {
			checkEmail = false;
		}
	}
	if (!checkEmail && email != "") {

		if (name != "") {
			document.getElementById('loggerFormBottom').innerHTML = "";
			if (message != "") {
				document.getElementById('loggerFormBottom').style = "color:green;";
				document.getElementById('loggerFormBottom').innerHTML = "ready!";
				messageSaveBottom();
			} else {
				document.getElementById('loggerFormBottom').style = "color:red;";
				document.getElementById('loggerFormBottom').innerHTML = "not found message";
			}
		} else {
			document.getElementById('loggerFormBottom').style = "color:red;";
			document.getElementById('loggerFormBottom').innerHTML = "name not found";
		}

	} else {
		document.getElementById('loggerFormBottom').style = "color:red;";
		if(checkEmail){
			document.getElementById('loggerFormBottom').innerHTML = "incorrectly eMail";
		}else{
			document.getElementById('loggerFormBottom').innerHTML = "eMail not found";
		}
	}

}

// _________________________________________________валідація для bottom
// форми________end_________________________________

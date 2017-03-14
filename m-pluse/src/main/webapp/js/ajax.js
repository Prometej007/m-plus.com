 function messageSave() {
	

        var user = {

            name: document.getElementById('nameUser').value,
            email: document.getElementById('emailBot').value,
    		message: document.getElementById('message').value

        }

        document.getElementById('nameUser').value = '';
        document.getElementById('emailBot').value = '';
        document.getElementById('message').value = '';
        $.ajax({


            url: 'messageSave?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
            method: 'POST',
            contentType: 'application/json; charset=UTF-8',
            dataType: 'json',
            data: JSON.stringify(user),
            success: function (res) { 
            	
    	
            }
            

        })
    
}
 
 
 
 function messageSaveRight() {
		

     var user = {

         name: document.getElementById('nameUser').value,
         email: document.getElementById('emailBot').value,
 		 phone: document.getElementById('phone').value
 		 
     }

     document.getElementById('nameUser').value = '';
     document.getElementById('emailBot').value = '';
     document.getElementById('phone').value = '';
     $.ajax({


         url: 'messageSave?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
         method: 'POST',
         contentType: 'application/json; charset=UTF-8',
         dataType: 'json',
         data: JSON.stringify(user),
         success: function (res) { 
         	
 	
         }
         
     })

}
 
 
 function wrapperSave() {
		

     var userWrapper = {

         name: document.getElementById('nameFormLeft').value,
         phoneOrEmail: document.getElementById('emailOfPhoneFormLeft').value,
 		
 		 
     }

     document.getElementById('nameFormLeft').value = '';
     document.getElementById('emailOfPhoneFormLeft').value = '';
     
     $.ajax({


         url: 'messageCall?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
         method: 'POST',
         contentType: 'application/json; charset=UTF-8',
         dataType: 'json',
         data: JSON.stringify(userWrapper),
         success: function (res) { 
         	
 	
         }
         
     })

}
 function validationEmailOfPhoneFormLeft() {

		var emailOfPhoneFormLeft = document.getElementById('emailOfPhoneFormLeft').value;
		var checkPhone = true;
		var checkPhoneOrPhone = true;
		for (var i = 0; i < emailOfPhoneFormLeft.length; i++) {
			if (checkPhoneOrPhone && emailOfPhoneFormLeft[i] != '@') {
				checkPhoneOrPhone = true;
			} else {
				checkPhoneOrPhone = false;
			}
		}
	if(checkPhoneOrPhone){
		

		for (var i = 0; i < emailOfPhoneFormLeft.length; i++) {
			if (emailOfPhoneFormLeft[i] == '1' && checkPhone ) {
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
		if (!checkPhoneOrPhone) {
			
			wrapperSave();
			document.getElementById('loggerFormLeft').innerHTML = "ready";
		} else {

			if (checkPhone
					&& (emailOfPhoneFormLeft.length == 10 || emailOfPhoneFormLeft.length == 12)) {
				wrapperSave();
				document.getElementById('loggerFormLeft').innerHTML = "ready";
			} else {
				document.getElementById('loggerFormLeft').innerHTML = "Incorrect telephone number of eMail";
			}
		}
		return false;
	}
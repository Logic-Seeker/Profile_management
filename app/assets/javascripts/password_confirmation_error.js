$(document).ready(function()
		{
			$("#user_password_confirmation").focusout(function(){
		if ($("#user_password_confirmation").val() == "") {
			$('.password_confirmation_error p').html("Password confirmation can not be blank");
		  }	
		else{
			$('.password_confirmation_error p').html('');
		}
			})
		}
		);

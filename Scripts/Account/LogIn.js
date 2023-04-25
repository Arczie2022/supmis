$('#btnLogin').on('click', function(evt){
	$('#LogInForm').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalLoading("Signing In");
			
			var userdata = {
				'cnsc_supmis': $('#cnsc_supmis').val(),
				'username': $('#username').val(),
				'password': $('#password').val(),
				'level': $('#level').val(),
				'gotoHere': $('#gotoHere').val()
			};
			console.log(userdata);
			ajaxCustom("Account/GetAuthorization.php", userdata, function(data){
				location.replace(data[0].link);
			}, true, true, true);
		}
	});
	ajaxRules("username password", "required minlength", [true, [3, 3]], evt);
});


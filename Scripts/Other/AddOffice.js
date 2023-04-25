$('#btnAdd').on('click', function(evt){
	VerifyOffice();
	$('#FormAddOffice').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Save?", "", "info", function(){
				swalLoading("Adding new Offices");
				var userdata = {
					'Code': $('#Code').val(),
					'Name': $('#Name').val(),
					'Campus': $('#Campus').val()
				};

				ajaxCustom("Other/InsertOffice.php", userdata, function(data){
					swalAddAgain("Added Successfully", "", function(){
						swal.close();
						location.replace("../../View/Other/Office_View.php");
					});
				});
			});
		}
	});
	ajaxRules("Code Name", "required InputTextBox duplicate", [true, true, true], evt);
	ajaxRules("Campus", "required number min", [true, true, 1], evt);
});
$('#btnAdd').on('click', function(evt){
	VerifyOffice();
	$('#FormUpdateOffice').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Updated?", "", "info", function(){
				swalLoading("Updating Office Information");
				var userdata = {
					'ID': $('#ID').val(),
					'Code': $('#Code').val(),
					'Name': $('#Name').val(),
					'Campus': $('#Campus').val()
				};

				ajaxCustom("Other/UpdateOffice.php", userdata, function(data){
					swalMessage("Updated Successfully", "", "success", false, function(){
						swal.close();
						$("#FormUpdateOffice").css("display", "none");
						RetrieveOffice();
					});
				});
			});
		}
	});
	ajaxRules("Code Name", "required InputTextBox duplicate", [true, true, true], evt);
	ajaxRules("Campus", "required number min", [true, true, 1], evt);
});
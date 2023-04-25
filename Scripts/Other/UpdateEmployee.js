$('#btnAdd').on('click', function(evt){
	VerifyEmployee();
	$('#FormUpdateEmployee').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Update?", "", "info", function(){
				swalLoading("Updating Employee Information");
				var userdata = {
					'ID': $('#ID').val(),
					'Code': $('#Code').val(),
					'Name': $('#Name').val(),
					'Position': $('#Position').val(),
					'Office': $('#Office').val()
				};
				ajaxCustom("Other/UpdateEmployee.php", userdata, function(data){
					swalMessage("Updated Successfully", "", "success", false, function(){
						$("#FormUpdateEmployee").css("display", "none");
						swal.close();
						RetrieveEmployee();
					});
				});
			});
		}
	});
	ajaxRules("Code Name Position", "required InputTextBox duplicate", [true, true, [true, true, ""]], evt);
	ajaxRules("Office", "required number min", [true, true, 1], evt);
});
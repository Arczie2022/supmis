$('#btnAdd').on('click', function(evt){
	VerifySupplier();
	$('#FormUpdateSupplier').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Update?", "", "info", function(){
				swalLoading("Updating Supplier Information");
				var userdata = {
					'ID': $('#ID').val(),
					'Name': $('#Name').val(),
					'Address': $('#Address').val(),
					'Email': $('#Email').val(),
					'CPerson': $('#CPerson').val(),
					'Position': $('#Position').val(),
					'Telephone': $('#TelNo').val(),
					'Cellphone': $('#CPNo').val(),
					'DBP': $('#DBP').val(),
					'GEPS': $('#GEPS').val(),
					'TIN': $('#TIN').val(),
					'Status': $('#Status').val()
				};
				ajaxCustom("Other/UpdateSupplier.php", userdata, function(data){
					swalMessage("Updated Successfully", "", "success", false, function(){
						swal.close();
						$("#FormUpdateSupplier").css("display", "none");
						RetrieveSupplier();
					});
				});
					
			});
		}
	});
	ajaxRules("Name GEPS", "InputTextBox required duplicate", [true, true, true], evt);
	ajaxRules("Address CPerson Position", "InputTextBox required", [true, true], evt);
	ajaxRules("Email", "required email", [true, true], evt);
	ajaxRules("CPNo TelNo Status", "required number min", [true, true, 1], evt);
	ajaxRules("DBP TIN", "required number duplicate min", [true, true, true, 1], evt);
});
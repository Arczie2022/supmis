$('#btnAdd').on('click', function(evt){
	VerifyChartOfAccount();
	$('#FormUpdateChart').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Update?", "", "info", function(){
				swalLoading("Updating Chart of Account Information");
				var userdata = {
					'ID': $('#ID').val(),
					'Code': $('#Code').val(),
					'Name': $('#Name').val(),
					'Life': $('#noLife').val() + " " + $('#textLife').val(),
					'Legend': $('#Legend').val()
				};
				ajaxCustom("Other/UpdateChartOfAccount.php", userdata, function(data){
					swalMessage("Updated Successfully", "", "success", false, function(){
						swal.close();
						RetrieveChartOfAccount();
						$("#FormUpdateChart").css("display", "none");
					});
				});
			});
		}
	});

	ajaxRules("Code Name Legend", "required InputTextBox duplicate", [true, true, true], evt);
	ajaxRules("noLife", "required number min", [true, true, 1], evt);
	ajaxRules("textLife", "required InputTextBox", [true, true], evt);
});

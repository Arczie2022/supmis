$('#btnAdd').on('click', function(evt){
	VerifyChartOfAccount();
	$('#FormAddChart').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Save?", "", "info", function(){
				swalLoading("Adding New Chart of Account");
				var userdata = {
					'Code': $('#Code').val(),
					'Name': $('#Name').val(),
					'Life': $('#noLife').val() + " " + $('#textLife').val(),
					'Legend': $('#Legend').val()
				};
				ajaxCustom("Other/InsertChartOfAccount.php", userdata, function(data){
					swalAddAgain("Saved Successfully", "", function(){
						swal.close();
						location.replace("../../View/Other/Chart_of_Accounts.php");
					});
				}, true, true);
			});
		}
	});

	ajaxRules("Code Name Legend", "required InputTextBox duplicate", [true, true, true], evt);
	ajaxRules("noLife", "required number min", [true, true, 1], evt);
	ajaxRules("textLife", "required InputTextBox", [true, true], evt);
});
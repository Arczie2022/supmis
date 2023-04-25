$('#btnAdd').on('click', function(evt){
	VerifyEmployee();
	$('#FormAddEmployee').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Save?", "", "info", function(){
				swalLoading("Adding New Employees");
				var userdata = {
					'Code': $('#Code').val(),
					'Name': $('#Name').val(),
					'Position': $('#Position').val(),
					'Office': $('#Office').val()
				};
				ajaxCustom("Other/InsertEmployee.php", userdata, function(data){
					swalAddAgain("Added Successfully", "", function(){
						swal.close();
						location.replace("../../View/Other/Employee_view.php");
								
					});
				}, true, true);
			});
		}
	});
	ajaxRules("Code Name Position", "required InputTextBox duplicate", [true, true, [true, true, ""]], evt);
	ajaxRules("Office", "required number min", [true, true, 1], evt);
});
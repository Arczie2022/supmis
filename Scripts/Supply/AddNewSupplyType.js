$('#btnAdd').on('click', function(evt){
	VerifySupplyTypeInformation();
	$('#FormAddType').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Save?", "", "info", function(){
				swalLoading("Saving New Type of Supply");

				var userdata = {
					'Code': $('#Code').val(),
					'Name': $('#Name').val()
				};

				ajaxCustom("Supply/AddNewSupplyType.php", userdata, function(data){
					swalAddAgain("Successfully Added", "", function(){
						location.replace("../../View/Supply/Supply_Type.php");
					});
				}, true, true);
			});
		}
	});
	
	ajaxRules("Code Name", "required duplicate InputTextBox", [true, true, true], evt);
});
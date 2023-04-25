$('#btnAdd').on('click', function(evt){
	VerifySupplyInformation();
	$('#FormAddSupply').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Save?", "", "info", function(){
				swalLoading("Saving New Supply / Equipment");

				var userdata = {
					'Code': $('#Code').val(),
					'Name': $('#Name').val(),
					'Property': $('#Property').val(),
					'Type': $('#Type').val()
				};

				ajaxCustom("Supply/AddNewSupply.php", userdata, function(data){
					swalAddAgain("Successfully Added", "", function(){
						location.replace("../../View/Supply/List_of_Item.php");
					});
				}, true, true);
			});
		}
	});
	
	ajaxRules("Code Name Property Type", "required duplicate InputTextBox", [[false, true, true, true],[true, true, true, false], true], evt);
});
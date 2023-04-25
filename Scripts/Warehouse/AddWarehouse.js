$('#btnAdd').on('click', function(evt){
	VerifyWarehouse();
	$('#FormAddWarehouse').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Save?", "", "info", function(){
				swalLoading("Adding New Warehouse");
				var userdata = {
					'Code': $('#Code').val(),
					'Name': $('#Name').val()
				};
				ajaxCustom("Warehouse/InsertWarehouse.php", userdata, function(data){
					swalAddAgain("Saved Successfully", "", function(){
						swal.close();
						location.replace("../../View/Other/Warehouse.php");
					});
				}, true, true);
			});
		}
	});
	ajaxRules("Code Name", "required InputTextBox duplicate", [true, true, true], evt);
});
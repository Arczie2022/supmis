$('#btnAdd').on('click', function(evt){
	VerifyWarehouse();
	$('#FormUpdateWarehouse').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Update?", "", "info", function(){
				swalLoading("Update Warehouse Information");
				var userdata = {
					'ID': $('#ID').val(),
					'Code': $('#Code').val(),
					'Name': $('#Name').val()
				};
				ajaxCustom("Warehouse/UpdateWarehouse.php", userdata, function(data){
					swalMessage("Updated Successfully", "", "success", false, function(){
						swal.close();
						RetrieveWarehouse();
						$("#FormUpdateWarehouse").css("display", "none");
					});
				});
			});
		}
	});
	ajaxRules("Code Name", "required InputTextBox duplicate", [true, true, true], evt);
});
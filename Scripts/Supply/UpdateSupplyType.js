$('#btnAdd').on('click', function(evt){
	VerifySupplyTypeInformation();
	$('#FormUpdateType').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Update", "", "info", function(){
				swalLoading("Updating Information");
				var userdata = {
					'ID': $('#ID').val(),
					'Code': $('#Code').val(),
					'Name': $('#Name').val()
				};
				ajaxCustom("Supply/UpdateSupplyTypeByID.php", userdata, function(data){
					swalMessage("Updated Successfully", "", "success", false, function(){
						swal.close();
           				$('#FormUpdateType').css( "display", "none" );
						RetrieveSupplyType();
					});
				});
			});
		}
	});
	ajaxRules("Code Name", "required duplicate InputTextBox", [true, true, true], evt);
});
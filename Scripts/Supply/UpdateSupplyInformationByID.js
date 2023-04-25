$('#btnAdd').on('click', function(evt){
	VerifySupplyInformation();
	$('#FormSupplyInformation').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Update", "", "info", function(){
				swalLoading("Updating Supply Information");
				var userdata = {
					'ID': $('#ID').val(),
					'Code': $('#Code').val(),
					'Name': $('#Name').val(),
					'Property': $('#Property').val(),
					'Type': $('#Type').val()
				};
				ajaxCustom("Supply/UpdateSupplyInformationByID.php", userdata, function(data){
					swalMessage("Updated Successfully", "", "success", false, function(){
						swal.close();
           				$('#FormSupplyInformation').css( "display", "none" );
						RetrieveSupply();
					});
				});
			});
		}
	});

	ajaxRules("Code Name Property Type", "required duplicate InputTextBox", [[false, true, true, true, true],[true, true, true, false, false], true], evt);
});
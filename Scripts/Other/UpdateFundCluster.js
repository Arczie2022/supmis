$('#btnAdd').on('click', function(evt){
	VerifyFund();
	$('#FormUpdateFund').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Update?", "", "info", function(){
				swalLoading("Updating Fund Cluster Information");
				var userdata = {
					'ID': $('#ID').val(),
					'Code': $('#Code').val(),
					'Name': $('#Name').val(),
					'Legend': $('#Legend').val()
				};
				ajaxCustom("Other/UpdateFund.php", userdata, function(data){
					swalMessage("Updated Successfully", "", "success", false, function(){
						swal.close();
						$("#FormUpdateFund").css("display", "none");
						RetrieveFundCluster();
					});
				});
			});
		}
	});
	ajaxRules("Code Name Legend", "required InputTextBox duplicate", [true, true, true], evt);
});
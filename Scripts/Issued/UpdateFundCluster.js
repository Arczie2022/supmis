$("#btnFund").on("click", function(evt){
	var poVal = $("#divListPO").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Update?", "", "info", function(){
				swalLoading("Updating Fund Cluster");
				var userdata = {
					'Fund': $("#Fund").val(),
					'PO': $("#POID").val()
				};
				ajaxCustom("Issued/UpdateFundCluster.php", userdata, function(data){
					swalMessage("Updated Successfully", "", "success", false, function(){
						swal.close();
					});
				});
			});
			poVal.destroy();
		}
	});
	ajaxRules("Fund", "required InputTextBox", [true, true], evt);
});

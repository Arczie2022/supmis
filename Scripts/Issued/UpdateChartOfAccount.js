$("#btnChart").on("click", function(evt){
	var equipVal = $("#divEquipDetails").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Update?", "", "info", function(){
				swalLoading("Updating Chart of Account");
				var userdata = {
					'ID': $("#descID").val(),
					'Chart': $("#Chart").val()
				};
				ajaxCustom("Issued/UpdateChartOfAccount.php", userdata, function(data){
					swalMessage("Updated Successfully", "", "success", false, function(){
						swal.close();
					});
				});
			});
			equipVal.destroy();
		}
	});
	ajaxRules("Chart", "required InputTextBox", [true, true], evt);
});
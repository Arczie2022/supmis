$('#btnAdd').on('click', function(evt){
	$('#FormUpdateOfficer').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Update?", "", "info", function(){
				swalLoading("Updating Supply Officer");
				var userdata = {
					'Employee': $("#ID").val(),
					'UserLevel': $('#UserLevel').val(),
					'oldLevel': $('#oldLevel').val()
				};
				ajaxCustom("Other/InsertSupplyOfficer.php", userdata, function(data){
					swalMessage("Updated Successfully", "", "success", false, function(){
						$("#FormUpdateEmployee").css("display", "none");
						swal.close();
						RetrieveSupplyOfficer();
					});
				});
			});
		}
	});

	ajaxRules("UserLevel", "required number min", [true, true, 1], evt);
});
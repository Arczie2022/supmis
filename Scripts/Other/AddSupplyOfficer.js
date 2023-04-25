$('#btnAdd').on('click', function(evt){
	$('#FormAddSupplyOfficer').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Update?", "", "info", function(){
				swalLoading("Updating Supply Officer");
				var userdata = {
					'Employee': $("#Employee").val(),
					'UserLevel': $('#UserLevel').val(),
					'oldLevel': "7"
				};
				ajaxCustom("Other/InsertSupplyOfficer.php", userdata, function(data){
					swalAddAgain("Updated Successfully", "", function(){
						swal.close();
						location.replace("../../View/Other/Supply_Officer.php");
					});
				});
			});
		}
	});

	ajaxRules("Employee UserLevel", "required number min", [true, true, 1], evt);
});
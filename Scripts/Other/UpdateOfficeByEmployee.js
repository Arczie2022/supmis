$("#btnAdd").on("click", function(evt){
	$("#FormSupplyOfficer").validate({
		submitHandler: function(form, e) {
			e.preventDefault();

			swalConfirm("Are you sure you want to Update?", "", "info", function(){
				swalLoading("Updating Employee Office");
				var userdata = {
					"Employee": $("#Employee").val(),
					"Office": $("#Office").val()
				};
				ajaxCustom("Other/UpdateOfficeByEmployee.php", userdata, function(data){
					swalMessage("Office Updated", "", "success", true);
				});
			});
		}
	});
	ajaxRules("Employee Office", "required number min", [true, true, 1], evt);
});
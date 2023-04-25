$("#btnAdd").on("click", function(evt){
	$("#FormReturn").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalLoading("Retrieving List of Returned Item");
			var userdata = {
				'Year': $("#Period").val(),
				'Status': $("#Status").val(),
				'Office': $("#Office").val()
			};
			ajaxCustom("Return/RetrieveListOfReturnItemByPeriod.php", userdata, function(data){
				JSTable(data, "#tblReturn", ["Employee", "Office", "Supply", "Serial", "Property"]);
				swal.close();
			});

		}
	});
	ajaxRules("Period Status Office", "required number", [true, true], evt);
});
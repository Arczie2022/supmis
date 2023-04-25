$('#btnAdd').on('click', function(evt){
	VerifyFund();
	$('#FormAddFund').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Save?", "", "info", function(){
				swalLoading("Adding New Fund CLuster");
				var userdata = {
					'Code': $('#Code').val(),
					'Name': $('#Name').val(),
					'Legend': $('#Legend').val()
				};
				ajaxCustom("Other/InsertFund.php", userdata, function(data){
					swalAddAgain("Saved Successfully", "", function(){
						swal.close();
						location.replace("../../View/Other/Fund_Cluster.php");
					});
				}, true, true);
			});
		}
	});
	ajaxRules("Code Name Legend", "required InputTextBox duplicate", [true, true, true], evt);
});
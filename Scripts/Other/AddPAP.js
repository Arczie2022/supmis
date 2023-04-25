$('#btnAdd').on('click', function(evt){
	VerifyPAP();
	$('#FormAddPAP').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Save?", "", "info", function(){
				swalLoading("Adding New MFO/PAP");
				var userdata = {
					'Code': $('#Code').val(),
					'Name': $('#Name').val()
				};
				ajaxCustom("Other/InsertPAP.php", userdata, function(data){
					swalAddAgain("Saved Successfully", "", function(){
						swal.close();
						location.replace("../../View/Other/PAP.php");
					});
				}, true, true);
			});
		}
	});
	ajaxRules("Code Name", "required InputTextBox duplicate", [true, true, true], evt);
});
$('#btnAdd').on('click', function(evt){
	VerifyPAP();
	$('#FormUpdatePAP').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Update?", "", "info", function(){
				swalLoading("Updating MFO/PAP Information");
				var userdata = {
					'ID': $('#ID').val(),
					'Code': $('#Code').val(),
					'Name': $('#Name').val()
				};
				ajaxCustom("Other/UpdatePAP.php", userdata, function(data){
					swalMessage("Updated Successfully", "", "success", false, function(){
						swal.close();
						$("#FormUpdatePAP").css("display", "none");
						RetrievePAP();
					});
				});
			});
		}
	});
	ajaxRules("Code Name", "required InputTextBox duplicate", [true, true, true], evt);
});
$('#Approved').on('click', function(){
	if($('#ID').val() != ""){
		swalConfirm("Are you sure you want to Approve the RIS?", "", "info", function(){
			swalLoading("Approving RIS");
			var userdata = {
				'ID': $('#ID').val(),
				'Status': '4'
			};
			ajaxCustom("Issuance/ApprovedRIS.php", userdata, function(data){
				swalGenerate("Successfully Approved", "", "Print Form", GetURL("../../View/PrintedPage/RIS.php", ["ID"], [$('#rowID').val()]));
			});
		});
	}
});
$('#Disapproved').on('click', function(){
	if($('#ID').val() != ""){
		swalConfirm("Are you sure you want to Disapprove the RIS?", "", "info", function(){
			swalLoading("Disapproving RIS");
			var userdata = {
				'ID': $('#ID').val(),
				'Status': '5'
			};
			ajaxCustom("Issuance/ApprovedRIS.php", userdata, function(data){
				swalGenerate("Disapproved Successfully", "", "Print Form", GetURL("../../View/PrintedPage/RIS.php", ["ID"], [$('#rowID').val()]));
			});
		});
	}
});
$(document).ready(function(){
	RetrieveApprovalRIS();
});
function RetrieveApprovalRIS(){
	swalLoading("Retrieving List of For Approval RIS");
	var userdata = {};
	ajaxCustom("Issuance/ListOfRISApproval.php", userdata, function(data){
		JSTable(data, "#tblListRequestedSupply", ["Date", "Code", "Employee", "Office"]);
		$("#requested").css("display", "none");
		swal.close();
	}, false);
}
$(document).ready(function(){
	RetrieveReturnInSPMO();
});
function RetrieveReturnInSPMO(){
	swalLoading("Retrieving List of Returned Equipment in SPMO");
	var userdata = {};
	ajaxCustom("Return/ListOfReturnInSupplyOfficer.php", userdata, function(data){
		JSTable(data, "#tableListReturn", ["Date", "Employee", "Supply", "Office", "Status"]);
		$("#FormEquipmentInfo").css("display", "none");
		swal.close();
	}, false);
}
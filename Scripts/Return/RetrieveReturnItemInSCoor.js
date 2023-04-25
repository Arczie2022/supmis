$(document).ready(function(){
	RetrieveReturnItemInSCoor();
});
function RetrieveReturnItemInSCoor(){
	swalLoading("Retrieving List of Returned Equipment");
	var userdata = {};
	ajaxCustom("Return/ListOfReturnItemByEmployee.php", userdata, function(data){
		JSTable(data, "#tableListReturn", ["Date", "Employee", "Supply", "Office", "Status"]);
		$("#FormEquipmentInfo").css("display", "none");
		swal.close();
	}, false);
}
$(document).ready(function(){
	ReturnRepairItem();
});
function ReturnRepairItem(){
	swalLoading("Retrieving List of Equipment to be Repaired");
	var userdata = {};
	ajaxCustom("Return/ListOfRepairItem.php", userdata, function(data){
		JSTable(data, "#tableListRepair", ["repairDate", "returnDate", "Employee", "Supply", "Office"]);
		$("#FormEquipmentInfo").css("display", "none");
		swal.close();
	}, false);
}
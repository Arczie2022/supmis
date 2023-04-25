$(document).ready(function(){
	RetrieveRepairedEquipment();
});
function RetrieveRepairedEquipment(){
	swalLoading("Retrieving List of Repaired Equipment");
	var userdata = {};
	ajaxCustom("Return/ListOfRepairedEquipment.php", userdata, function(data){
		JSTable(data, "#tableListRepaired", ["Supply", "Serial", "StartDate", "EndDate", "Employee", "SupplyOfficer"]);
		$("#divEquipInfo").css("display", "none");
		swal.close();
	}, false);
}
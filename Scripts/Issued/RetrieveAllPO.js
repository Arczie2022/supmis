$(document).ready(function(){
	RetrieveAllPO();
});
function RetrieveAllPO(){
	swalLoading("Retrieving List of Purchase Order Number");
	var userdata = {};
	ajaxCustom("Issued/RetrieveAllPO.php", userdata, function(data){
		JSTable(data, "#tblListPO", ["Date", "Code"]);
		$("#divListPO").css("display", "none");
		$("#divListDR").css("display", "none");
		$("#divListEquip").css("display", "none");
		$("#divEquipDetails").css("display", "none");
		swal.close();
	}, false);
}
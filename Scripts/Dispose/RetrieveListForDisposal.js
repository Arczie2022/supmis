$(document).ready(function(){
	RetrieveDisposalItem();
});
function RetrieveDisposalItem(){
	swalLoading("Retrieving the List of Equipment to be Disposed");
	var userdata = {};
	ajaxCustom("Dispose/ListOfDisposalItem.php", userdata, function(data){
		JSTable(data, "#tableForDisposalItem", ["Date", "SupplyCode", "Supply", "Serial", "Employee", "Office"]);
		$("#FormEquipmentInfo").css("display", "none");
		swal.close();
	}, false);
}
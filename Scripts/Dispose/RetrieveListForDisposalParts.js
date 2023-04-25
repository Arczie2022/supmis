$(document).ready(function(){
	RetrieveDisposalParts();
});
function RetrieveDisposalParts(){
	swalLoading("Retrieving the List of Parts to be Disposed");
	var userdata = {};
	ajaxCustom("Dispose/ListOfDisposalParts.php", userdata, function(data){
		JSTable(data, "#tableForDisposalParts", ["Date", "Supply", "Parts", "Serial", "Employee", "Office"]);
		$("#FormEquipmentInfo").css("display", "none");
		swal.close();
	}, false);
}
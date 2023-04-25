$(document).ready(function(){
	RetrieveOfficerRecords();
});
function RetrieveOfficerRecords(){
	swalLoading("Retrieving the Records of Supply Officer");
	var userdata = {};
	ajaxCustom("Other/RetrieveAllOfficerRecords.php", userdata, function(data){
		JSTable_WoRestrict(data, "#tblOfficer", ["Date", "employee", "remarks", "officer"]);
		swal.close();
	}, false);
}
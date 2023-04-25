$(document).ready(function(){
	RetrieveSupplyOfficer();
});
function RetrieveSupplyOfficer(){
	swalLoading("Retrieving List of Supply of Officers");
	var userdata = {};
	ajaxCustom("Other/RetrieveAllSupplyOfficer.php", userdata, function(data){
		JSTable(data, "#tblListOfficer", ["Code", "Name", "Position", "Office"]);
		$("#FormUpdateOfficer").css("display", "none");
		swal.close();
	}, false);
}
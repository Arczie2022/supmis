$(document).ready(function(){
	RetrieveMyEquipment();
});
function RetrieveMyEquipment(){
	swalLoading("Retrieving List of My Issued Equipment");
	var userdata = {};
	ajaxCustom("User/GetUserEquipment.php", userdata, function(data){
		JSTable(data, "#tblListMyEquipment", ["Code", "Name", "Date", "Serial"]);
		$("#FormReturnEquipment").css("display", "none");
		swal.close();
	}, false);
}
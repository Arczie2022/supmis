$(document).ready(function(){
	RetrieveWarehouse();
});
function RetrieveWarehouse(){
	swalLoading("Retrieving List of Warehouse");
	var userdata = {};
	ajaxCustom("Warehouse/RetrieveAllWarehouse.php", userdata, function(data){
		JSTable(data, "#tblWarehouse", ["Code", "Name"]);
		$("#FormUpdateFund").css("display", "none");
		swal.close();
	}, false);
}
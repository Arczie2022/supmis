$(document).ready(function(){
	RetrieveWarehouseData();
});
function RetrieveWarehouseData(){
	swalLoading("Retrieving List of Stocks in Warehouse");
	var userdata = {};
	ajaxCustom("Warehouse/RetrieveAllWarehousedataPerDepartment.php", userdata, function(data){
		JSTable(data, "#tblWarehouseStock", ["supplyName", "Serial", "lastEmployee", "SupplyOfficer", "warehouseDate"]);
		$("#FormWarehouse").css("display", "none");
		swal.close();
	}, false);
}

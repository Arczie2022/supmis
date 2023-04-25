function RetrieveAvailableStock(){
	var userdata = {};
	swalLoading("Retrieving List of Available Stocks");
	ajaxCustom("Supply/RetrieveAllSupplyWithStock.php", userdata, function(data){
		JSTable(data, "#tblListSupply", ["Property", "Name", "Stock"]);
		swal.close();
	}, false, false);
}
$(document).ready(function(){
    RetrieveAvailableStock();
}); 
$(document).ready(function(){
	RetrieveDisposedItem();
});
function RetrieveDisposedItem(){
	swalLoading("Retrieving the List of Disposed Equipment");
	var userdata = {};
	ajaxCustom("Dispose/ListOfDisposedItem.php", userdata, function(data){

		for (var i = 0; i < data.length; i++) {
			data[i].Cost = formatMoney(data[i].Cost);
		}

		JSTable(data, "#tblListDisposed", ["Date", "SupplyCode",  "Supply", "Serial", "Employee", "Type", "Cost"]);
		swal.close();
	}, false);
}
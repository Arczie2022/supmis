function DormantInventories(){
	swalLoading("Retrieving Dormant Inventories");
	var userdata = {};
	ajaxCustom("Reports_Other/RetrieveDormantInventories.php", userdata, function(data){
		JSTable(data, "#tblDormant", ["Supply", "Property", "Unit", "Stock", "Date"]);
		swal.close();
	}, false);
}

$(document).ready(function(){
	DormantInventories();
});
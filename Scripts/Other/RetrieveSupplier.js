$(document).ready(function(){
	RetrieveSupplier();
});
function RetrieveSupplier(){
	swalLoading("Retrieving List of Suppliers");
	var userdata = {};
	ajaxCustom("Other/RetrieveAllSupplier.php", userdata, function(data){
		JSTable(data, "#tblListSupplier", ["Code", "Name", "Status"]);
		$("#FormUpdateSupplier").css("display", "none");
		swal.close();
	}, false);
}
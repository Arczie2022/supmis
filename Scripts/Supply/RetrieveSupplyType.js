function RetrieveSupplyType(){
	swalLoading("Retrieving List of Supply Type");
	var userdata = {};
	ajaxCustom("Supply/RetrieveAllSupplyType.php", userdata, function(data){
		JSTable(data, "#tblListSupplyType", ["Code", "Name"]);
		swal.close();
	}, false);
}
$(document).ready(function(){
	RetrieveSupplyType();
});
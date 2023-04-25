function RetrieveSupply(){
	swalLoading("Retrieving List of Supplies and Equipment");
	var userdata = {};
	ajaxCustom("Supply/RetrieveAllSupply.php", userdata, function(data){
		JSTable(data, "#tblListSupply", ["Code", "Name", "Property"]);
		swal.close();
	}, false);
}
$(document).ready(function(){
	RetrieveSupply();
});
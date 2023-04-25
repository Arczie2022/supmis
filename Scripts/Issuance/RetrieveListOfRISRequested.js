$(document).ready(function(){
	RetrieveListOfRISRequested();
});
function RetrieveListOfRISRequested(){
	swalLoading("Retrieving List of RIS");
	var userdata = {};
	ajaxCustom("Issuance/ListOfRISRequested.php", userdata, function(data){
		JSTable(data, "#tblListRequestedSupply", ["Date", "Code", "Employee", "Office"]);
		swal.close();
	}, false);
}
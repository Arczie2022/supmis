$(document).ready(function(){
	RetrieveListOfRISRequested_Campus();
});
function RetrieveListOfRISRequested_Campus(){
	swalLoading("Retrieving the List of RIS");
	var userdata = {};
	ajaxCustom("Issuance/ListOfRISRequested_Campus.php", userdata, function(data){
		JSTable(data, "#tblListRequestedSupply", ["Date", "Code", "Employee", "Office"]);
		swal.close();
	}, false);
}
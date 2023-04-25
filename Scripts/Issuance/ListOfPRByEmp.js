$(document).ready(function(){
	RetrievePR();
});
function RetrievePR(){
	swalLoading("Retrieving List of Purchase Request");
	var userdata = {};
	ajaxCustom("Issuance/ListOfPRByEmp.php", userdata, function(data){
		JSTable(data, "#tblMyRequest", ["Equipment", "Description", "Type", "Serial", "Quantity", "Price", "Status"], "", [], [20,20,22,20,20,20,20]);
		swal.close();
	}, false);
}
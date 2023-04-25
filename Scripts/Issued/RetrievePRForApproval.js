$(document).ready(function(){
	RetrievePR();
});
function RetrievePR(){
	swalLoading("Retrieving the List of Purchase Request");
	var userdata = {};
	ajaxCustom("Issued/ListOfPRForApproval.php", userdata, function(data){
		JSTable(data, "#tblPR", ["Employee", "Equipment", "Description", "Type", "Serial", "Quantity", "Price"], "", [], [20,20,20,22,20,20,20]);
		swal.close();
	}, false);
}
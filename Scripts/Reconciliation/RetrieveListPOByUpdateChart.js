function RetrieveListPO(){
	swalLoading("Retrieving List of Chart of Account");
	var userdata = {};
	ajaxCustom("Reconciliation/RetrieveListPOByUpdateChart.php", userdata, function(data){
		JSTable(data, "#tblListPO", ["Date", "poCode"]);
		swal.close();
	}, false);
}
$(document).ready(function(){
	RetrieveListPO();
});
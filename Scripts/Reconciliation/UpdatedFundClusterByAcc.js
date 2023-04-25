function RetrieveFundCluster(){
	swalLoading("Retrieving List of Fund Cluster");
	var userdata = {};
	ajaxCustom("Reconciliation/UpdatedFundClusterByAcc.php", userdata, function(data){
		JSTable(data, "#tblFund", ["Date", "poCode", "SPMO_Fund", "Acc_Fund"]);
		swal.close();
	}, false);
}
$(document).ready(function(){
	RetrieveFundCluster();
});
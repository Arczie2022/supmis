$(document).ready(function(){
	RetrieveFundCluster();
});
function RetrieveFundCluster(){
	swalLoading("Retrieving List of Fund Cluster");
	var userdata = {};
	ajaxCustom("Other/RetrieveAllFundCluster.php", userdata, function(data){
		JSTable(data, "#tblFund", ["Code", "Name", "Legend"]);
		$("#FormUpdateFund").css("display", "none");
		swal.close();
	}, false);
}
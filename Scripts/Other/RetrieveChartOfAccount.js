$(document).ready(function(){
	RetrieveChartOfAccount();
});
function RetrieveChartOfAccount(){
	swalLoading("Retrieving List of Chart of Accounts");
	var userdata = {};
	ajaxCustom("Other/RetrieveAllChartOfAccount.php", userdata, function(data){
		JSTable(data, "#tblChartOfAccount", ["Code", "Name", "Legend"]);
		$("#FormUpdateChart").css("display", "none");
		swal.close();
	}, false);
}
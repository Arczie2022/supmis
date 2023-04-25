function RetrieveLogs(){
	var Type = $("#Type").val();
	var fromDate = $("#fromDate").val();
	var toDate = $("#toDate").val();
	swalLoading("Retrieving Logs");
	var userdata = {
		'Type': Type,
		'fromDate': fromDate,
		'toDate': toDate
	};
	ajaxCustom("Home/RetrieveLogs.php", userdata, function(data){
		JSTable_WoRestrict(data, "#tblLogs", ["logDate", "Remarks", "Officer"]);
		swal.close();
	}, false);
}
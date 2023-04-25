function ExceedUsefulLife(){
	swalLoading("Retrieving List of Equipment exceeding useful life");
	var userdata = {};
	ajaxCustom("Reports_Other/RetrieveExceedUsefulLife.php", userdata, function(data){
		JSTable(data, "#tblExceed", ["Code", "Supply", "Property", "Employee", "FirstDate"]);
		swal.close();
	}, false);
}

$(document).ready(function(){
	ExceedUsefulLife();
});
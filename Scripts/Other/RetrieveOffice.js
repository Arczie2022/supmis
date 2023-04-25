function RetrieveOffice(){
	swalLoading("Retrieving List of Offices");
	var userdata = {};
	ajaxCustom("Other/RetrieveAllOffices.php", userdata, function(data){
		JSTable(data, "#tblListOffice", ["Code", "Name", "Campus"]);
		swal.close();
	}, false);
}
$(document).ready(function(){
	RetrieveOffice();
});
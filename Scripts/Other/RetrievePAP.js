$(document).ready(function(){
	RetrievePAP();
});
function RetrievePAP(){
	swalLoading("Retrieving List of MFO/PAP");
	var userdata = {};
	ajaxCustom("Other/RetrieveAllPAP.php", userdata, function(data){
		JSTable(data, "#tblPAP", ["Code", "Name"]);
		$("#FormUpdatePAP").css("display", "none");
		swal.close();
	}, false);
}
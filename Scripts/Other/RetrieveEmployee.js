$("#Campus").on("change", function(){
	RetrieveEmployee();
});
function RetrieveEmployee(){
	swalLoading("Retrieving List of Employees");
	var userdata = {
		"ID": $("#Campus").val()
	};
	ajaxCustom("Other/RetrieveAllEmployees.php", userdata, function(data){
		JSTable(data, "#tblListEmployee", ["Code", "Name", "officeName"]);
		$("#FormUpdateEmployee").css("display", "none");
		swal.close();
	});
}
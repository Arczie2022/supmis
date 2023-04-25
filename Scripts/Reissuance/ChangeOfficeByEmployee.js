$("#Employee").on("change", function(){
	swalLoading("Retrieving the office");
	var userdata = {
		'ID': $("#Employee").val()
	};
	ajaxCustom("Reissuance/GetOfficeByEmployee.php", userdata, function(data){
		newDatalistOption("Office", data[0].ID, data[0].Name + " (" + data[0].Code + ")", data[0].ID, 0, "none");
		$("#Office").val(data[0].ID);
		swal.close();
	});	

});
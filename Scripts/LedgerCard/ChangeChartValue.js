$("#Chart").on("change", function(){
	swalLoading("Retrieving the List of Equipment");
	var userdata = {
		'ID': $("#Chart").val()
	};
	ajaxCustom("LedgerCard/GetEquipmentByChart.php", userdata, function(data){
		$("#Life").val(data[0].Life);
		for (var i = 0; i < data.length; i++) {
			newSelect2Option("Equipment", data[i].ID, data[i].Name, data[i].Code, i);
		}
		swal.close();
	});
});
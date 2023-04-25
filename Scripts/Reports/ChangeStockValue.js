$("#Supply").on("change", function(){
	swalLoading("Retrieving Supply Details");
	var userdata = {
		'Supply': $("#Supply").val()
	};
	ajaxCustom("Reports/GetSupplyUnitBySupply.php", userdata, function(data){
		for (var i = 0; i < data.length; i++) {
			newDatalistOption("Unit", data[i].Unit, data[i].Unit, data[i].Unit, i);
		};
		swal.close();
	});
});
$("#Unit").on("change", function(){
	swalLoading("Retrieving Supply Description");
	var userdata = {
		'Supply': $("#Supply").val(),
		'Unit': $("#Unit").val()
	};
	ajaxCustom("Reports/GetSpecificUnitBySupply.php", userdata, function(data){
		for (var i = 0; i < data.length; i++) {
			newDatalistOption("Description", data[i].Specific, data[i].Specific, data[i].Specific, i);
		};
		swal.close();
	});

});
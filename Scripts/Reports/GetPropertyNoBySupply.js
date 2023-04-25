$("#Equipment").on("change", function(){
	swalLoading("Please Wait");
	var userdata = {
		'ID': $("#Equipment").val()
	};
	ajaxCustom("Reports/GetPropertyNoBySupply.php", userdata, function(data){
		$("#Property").val(data[0].Property);
		swal.close();
	});
});
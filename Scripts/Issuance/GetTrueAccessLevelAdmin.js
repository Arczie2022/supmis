$(document).ready(function(){
	CheckStorage();
});

function CheckStorage(){
	swalLoading("Please Wait");

	var userdata = {};
	ajaxCustom("Issuance/GetTrueAccessLevelAdmin.php", userdata, function(data){
		$("#Storage").val("");
		$("#Storage").removeAttr('disabled');
		if ( data[0].level != "4" && data[0].level != "1" ){
			$("#Storage").val("0");
			$("#Storage").attr('disabled', 'disabled');
		}

		if ((data[0].level == "4" && data[0].campus == "1" )|| data[0].campus == $("#Stockroom").val()){
			$("#Storage").val("0");
			$("#Storage").attr('disabled', 'disabled');
		}
		swal.close();
	});
}
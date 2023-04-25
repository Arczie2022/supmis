$(document).ready(function(){
	$("#Type").val("-1");
	RetrieveLogs();
});
$("#btnAdd").on("click", function(evt){
	$("#formFilter").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			RetrieveLogs();
		}
	});
});
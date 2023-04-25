$("#Specific").on("change", function(){
	$("#EstimatedStock").val($("#Specific").val());
	$("#Unit").val($("#Specific").val());
});
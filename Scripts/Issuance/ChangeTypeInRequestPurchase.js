$("#New").on("click", function(){
	if($("#New").val() == "1")
		$("#Serial").prop("disabled", "");
	else
		$("#Serial").prop("disabled", "disabled");
});
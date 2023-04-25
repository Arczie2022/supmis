$("#btnAdd").on("click", function(evt){
	var formValidate = $("#FormIIRUP").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			formValidate.destroy();
				window.open(GetURL("../../View/PrintedPage/IIRUP.php", 
					["Fund", "Start", "End", "FName"], 
					[$("#Fund").val(), $("#Start").val(), $("#End").val(), $("#Fund option:selected").text()]), 
					"_blank");
		}
	});
	ajaxRules("Fund", "required InputTextBox", [true, true], evt);
	ajaxRules("Start End", "required InputTextBox dateFormat", [true, true, true], evt);
});

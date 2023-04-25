$("#btnAdd").on("click", function(evt){
	var formValidate = $("#FormWMR").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			formValidate.destroy();
				window.open(GetURL("../../View/PrintedPage/WMR.php", 
					["Fund", "Period", "FName"], 
					[$("#Fund").val(), $("#Period").val(), $("#Fund option:selected").text()]), 
					"_blank");
		}
	});
	ajaxRules("Fund Period", "required InputTextBox", [true, true], evt);
});

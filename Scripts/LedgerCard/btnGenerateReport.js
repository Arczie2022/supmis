$("#btnAdd").on("click", function(evt){
	$("#FormSearch").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			windowOpen(GetURL("../../View/PrintedPage/PPELC.php", 
				["Fund", "Chart", "Supply"], 
				[$("#Fund").val(), $("#Chart").val(), $("#Equipment").val()]));
		}
	});

	ajaxRules("Fund Chart Equipment", "required InputTextBox", [true, true], evt);
});
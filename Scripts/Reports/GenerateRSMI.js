$("#btnAdd").on("click", function(evt){
	$("#FormRSMI").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			var date = $("#Date").val();
			var date = date.split(" ");
			M = date[0];
			Y = date[1];
			var d = new Date(M + "1, 2021");
			d = d.getMonth() + 1;
			windowOpen(GetURL("../../View/PrintedPage/RSMI.php", 
				["Fund", "M", "Y", "Campus"], [$("#Fund").val(), d.toString(), Y, $("#Campus").val()]));
		}
	});
	ajaxRules("Fund Date Campus", "required InputTextBox", [true, true], evt);
});
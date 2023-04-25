$("#btnAdd").on("click", function(evt){
	$("#FormSLC").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			window.open(GetURL("../../View/PrintedPage/SLC.php", 
				["Fund", "Supply", "Year"], 
				[$("#Fund").val(), $("#Supply").val(), $("#Year").val()]),'_blank');
		}
	});
	ajaxRules("Supply Fund Year", "required number", [true, true], evt);
});
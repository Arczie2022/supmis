$("#btnAdd").on("click", function(evt){
	$("#FormStockCard").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			windowOpen(GetURL("../../View/PrintedPage/StockCard.php", 
				["Fund", "Supply", "Unit", "Specific", "Year", "Warehouse"], 
				[$("#Fund").val(), $("#Supply").val(), $("#Unit").val(), $("#Description").val(), $("#Year").val(), $("#Campus").val()])
			);
		}
	});
	ajaxRules("Supply Unit Description", "required InputTextBox", [true, true], evt);
	ajaxRules("Fund", "required number", [true, true], evt);
	ajaxRules("Year", "required number minlength maxlength", [true, true, 4, 4], evt);
});
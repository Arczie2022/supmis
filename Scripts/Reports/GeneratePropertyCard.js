$("#btnAdd").on("click", function(evt){
	$("#FormEquipment").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			windowOpen(GetURL("../../View/PrintedPage/PropertyCard.php", 
				["ID"], [$("#Equipment").val()]));
		}
	});
	ajaxRules("Equipment", "required InputTextBox", [true, true], evt);
});
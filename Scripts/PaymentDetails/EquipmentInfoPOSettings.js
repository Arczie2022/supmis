$("#Replace").on("change", function(){
	if ($("#Replace").val() == "1") $("#ReplaceParts").removeAttr("disabled");
	else $("#ReplaceParts").attr("disabled", "disabled")
});

$("#Price, #Stock").on("change", function(){
	formatMoney($("#Stock").val() * BackToNumbers($("#Price").val()), "Total");
});
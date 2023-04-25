$("#Quantity, #Budget").on("change", function(){
	var Quantity = $("#Quantity").val();
	var Budget = BackToNumbers($("#Budget").val());
	var total = Quantity*Budget;
	total = formatMoney(total);
	$("#Total").val(total);
});
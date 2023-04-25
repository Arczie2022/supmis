$("#Amount, #Tax, #Liquidated").on("change", function(){
	var amount = BackToNumbers($("#Amount").val());
	if(isNaN(amount)) amount = 0;
	
	var tax = BackToNumbers($("#Tax").val());
	if(isNaN(tax)) tax = 0;
	
	var liquidated = BackToNumbers($("#Liquidated").val());
	if(isNaN(liquidated)) liquidated = 0;

	var total = amount + tax + liquidated;
	total = formatMoney(total);

	$("#Total").val(total)

	total = BackToNumbers(total);
	balance = BackToNumbers($("#BalancePO").val());

	if(isNaN(total)) total = 0;
	if(isNaN(balance)) balance = 0;

	var remaining = balance - total;
	remaining = remaining < 0 ? 0 : remaining;
	remaining = formatMoney(remaining);

	$("#remainingBalance").val(remaining);
});
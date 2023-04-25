$("#PONo").on("change", function(){
	swalLoading("Retrieving PO/Contract Information");

	$("#DatePO").val("");
	$("#BalancePO").val("");
	$("#Supplier").val("");
	$("#Fund").val("");
	$("#PAP").val("");
	$("#Equipment").empty();
	
	$("#remainingBalance").val("");

	var userdata = {
		'ID': $("#PONo").val()
	};
	ajaxCustom("PaymentDetails/GetPDetailsByPO.php", userdata, function(data){
		$("#DatePO").val(data[0].datePO);
		$("#Supplier").val(data[0].Supplier);
		$("#Fund").val(data[0].Fund);
		$("#BalancePO").val(formatMoney(data[0].Balance));
		$("#PAP").val(data[0].PAP);
		var bal = BackToNumbers($("#BalancePO").val());
		if(formatMoney(bal) == "0.000") $("#remainingBalance").val($("#BalancePO").val());
		else{
			var total = BackToNumbers($("#Total").val());
			if(isNaN(total)) total = 0;
			
			total = bal - total;
			if (total < 0) total = bal;
			$("#remainingBalance").val(formatMoney(total));
		} 
		for (var i = 0; i < data.length; i++) {
			newDatalistOption("Equipment", data[i].supplyID, data[i].supplyName, data[i].supplyID, i);
		}
		swal.close();
	});
});
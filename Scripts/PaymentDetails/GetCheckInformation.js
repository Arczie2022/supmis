$("#tblListCheck").on("click", "tbody tr", function(){
	var table = $("#tblListCheck").DataTable();
	var row = table.row(this).data();
	
	if (row != undefined){
		ChangeRowColor("tblListCheck", this);
		$("#CheckInfo").css("display", "none");

		swalLoading("Retrieving Check Information");
		var userdata = {
			'ID': row.ID
		};
		ajaxCustom("PaymentDetails/GetCheckInformation.php", userdata, function(data){
			$("#CheckInfo").css("display", "");
			
			$("#CheckNo").val(data[0].CheckNo);
			$("#DatePayment").val(data[0].Date);
			$("#TypePayment").val(data[0].Type);
			$("#Amount").val(formatMoney(data[0].Amount));
			$("#Tax").val(formatMoney(data[0].Tax));
			$("#Liquidated").val(formatMoney(data[0].Liquidate));
			$total = (parseFloat(data[0].Amount) + parseFloat(data[0].Tax) + parseFloat(data[0].Liquidate));
			$("#Total").val(formatMoney($total));
			$("#SupplyOfficer").val(data[0].Officer);

			swal.close();
		});
	}
});
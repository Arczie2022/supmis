$("#btnPeriod").on("click", function(){
	var period = $("#Period").val();

	if (period != ""){
		$("#divPO").css("display", "none");
		$("#divEquipment").css("display", "none");
		$("#divInfo").css("display", "none");
		swalLoading("Retrieving List of PO/Contract Number");
		var userdata = {
			'Period': period
		};
		ajaxCustom("PaymentDetails/RetrieveListofPOByYear.php", userdata, function(data){
			JSTable(data, "#tblPO", ["Date", "Code", "Fund", "Supplier", "MFO"]);
			$("#divPO").css("display", "");
			swal.close();
		});
	}
});
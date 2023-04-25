$("#tblListPO").on("click", "tbody tr", function(){
	var table = $("#tblListPO").DataTable();
	var row = table.row(this).data();
	
	if (row != undefined){

		$("#POInfo").css("display", "none");
		$("#CheckInfo").css("display", "none");

		ChangeRowColor("tblListPO", this);
		$("#DatePO").val(row.Date);
		$("#PONo").val(row.Code);
		$("#Supplier").val(row.Supplier);
		$("#BalancePO").val(row.Balance);

		swalLoading("Retrieving PO Information");
		var userdata = {
			'ID': row.ID
		};
		ajaxCustom("PaymentDetails/GetPOInformation.php", userdata, function(data){
			$("#POInfo").css("display", "");
	
			$("#Fund").val(data[0].Fund);
			$("#PAP").val(data[0].PAP);

			for (var i = 0; i < data.length; i++) {
				var code = data[i].Code;
				data[i].Code = code == null ? "-" : code;
				data[i].Price = formatMoney(data[i].Price);
				data[i].Total = formatMoney(data[i].Total);
			}

			JSTable(data, "#tblListEquipment", ["Code", "Name", "Unit", "Item", "Price", "Total"]);
			
			var tblCheck = $("#tblListCheck").DataTable();
			tblCheck.rows().clear().draw();
			ajaxCustom("PaymentDetails/GetListCheckByPO.php", userdata, function(data){
				if(data[0].Date != undefined)
					JSTable(data, "#tblListCheck", ["Date", "CheckNo", "Type", "Amount"]);
				swal.close();
			});
		});
	}
});
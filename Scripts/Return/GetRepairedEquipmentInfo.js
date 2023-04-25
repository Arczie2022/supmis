$("#tableListRepaired").on("click", "tbody tr", function(){
	var table = $("#tableListRepaired").DataTable();
	var row = table.row(this).data();
	if (row != undefined){
		ChangeRowColor("tableListRepaired", this);

		swalLoading("Retrieving Equipment Information");

		$("#divEquipInfo").css("display", "");

		$("#Equipment").val(row.Supply);
		$("#Serial").val(row.Serial);
		$("#StartDate").val(row.StartDate);
		$("#Enddate").val(row.EndDate);
		$("#Employee").val(row.Employee);
		$("#SupplyOfficer").val(row.SupplyOfficer);

		var userdata = {
			'ID': row.ID
		};
		ajaxCustom("Return/GetRepairedEquipmentInfo.php", userdata, function(data){
			$("#IssueCode").val(data[0].issuanceCode);
			$("#IssueDate").val(data[0].issueDate);
			$("#Reissuedate").val(data[0].reissueDate);
			$("#EquipmentCode").val(data[0].supplyCode);
			$("#RepairType").val(data[0].repairType);
			$("#Cost").val(formatMoney(data[0].repairCost));

			swal.close();
		});
	}

});
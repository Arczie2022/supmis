$("#tblRepairBuilding").on("click", "tbody tr", function(){
	var table = $("#tblRepairBuilding").DataTable();
	var rows = table.row(this).data();

	if (rows != undefined){
		ChangeRowColor("tblRepairBuilding", this);
		$("#RepairBuildingID").val(rows.ID);

		swalLoading("Retrieving the Major Repair Details");

		var userdata = {
			'ID': rows.ID
		};
		ajaxCustom("Supply/GetMajorRepairBuildingInfo.php", userdata, function(data){
			$("#ContractDate").val(data[0].poDateReceipt);
			$("#ContractNo").val(data[0].poCode);
			Select2Default("Contractor", data[0].supplierID, data[0].supplierName);
			$("#StartDateRepair").val(data[0].repairStart);
			$("#EndDateRepair").val(data[0].repairEnd);
			$("#Description").val(data[0].majorDesc);
			Select2Default("Chart", data[0].chartID, data[0].chartName);
			$("#Fund").val(data[0].fundID);
			$("#PAP").val(data[0].papID);
			$("#NatureRepair").val(data[0].repairNature);
			$("#Amount").val(formatMoney(data[0].repairAmount));


			$("#ContractNo").prop('disabled', true);
			$("#ContractDate").prop('disabled', true);
			$("#Contractor").prop('disabled', true);
			$("#Fund").prop('disabled', true);
			$("#PAP").prop('disabled', true);

			$("#btnAdd").val("Update Major Repair");

			swal.close();
		});
	}
});
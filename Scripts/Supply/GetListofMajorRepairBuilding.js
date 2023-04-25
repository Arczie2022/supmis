$("#tblBuildings").on("click", "tbody tr", function(){
	var table = $("#tblBuildings").DataTable();
	var rows = table.row(this).data();

	if (rows != undefined){
		ChangeRowColor("tblBuildings", this);
		RetrieveMajorBuilding(rows.ID);
	}
});

function RetrieveMajorBuilding(ID){
	swalLoading("Retrieve the List of Major Repair");
	$("#BuildingID").val(ID);
	var userdata = {
		'ID': ID
	};
	ajaxCustom("Supply/GetListofMajorRepairBuilding.php", userdata, function(data){
		for (var i = 0; i < data.length; i++) {
			data[i].Cost = formatMoney(data[i].Cost);
		};
		JSTable(data, "#tblRepairBuilding", ["Description", "StartDate", "EndDate", "Cost", "Chart"]);
		
		$("#RepairBuildingID").val("0");
		$("#ContractDate").val("");
		$("#ContractNo").val("");
		Select2Default("Contractor", "", "");
		$("#StartDateRepair").val("");
		$("#EndDateRepair").val("");
		$("#Description").val("");
		Select2Default("Chart", "", "");
		$("#Fund").val("");
		$("#NatureRepair").val("");
		$("#Amount").val("");

		$("#ContractNo").prop('disabled', false);
		$("#ContractDate").prop('disabled', false);
		$("#Contractor").prop('disabled', false);
		$("#Fund").prop('disabled', false);
		$("#PAP").prop('disabled', false);

		$("#btnAdd").val("Add Major Repair");
		
		swal.close();
	});
	$("#divRepairBuilding").css("display", "");
}
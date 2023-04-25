function RetrieveAllBuildings(){
	swalLoading("Retrieving List of Buildings");
	var userdata = {};
	ajaxCustom("Supply/RetrieveAllBuildings.php", userdata, function(data){
		if(data!=null){
			for (var i = 0; i < data.length; i++) {
				data[i].Price = formatMoney(data[i].Price);
			};
		}
		JSTable(data, "#tblBuildings", ["Code", "Name", "Property", "Price", "Chart"]);
		
		if($("#RepairBuildingID").val() != undefined){
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
		}

		swal.close();
	}, false);
}
$(document).ready(function(){
	RetrieveAllBuildings();
});
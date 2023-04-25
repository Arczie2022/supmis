$("#tblListSupply").on("click", "tbody tr", function(){
	var table = $("#tblListSupply").DataTable();
	var rows = table.row(this).data();

	if (rows != undefined){
		$("#Chart_SPMO").val(rows.SPMO_Chart);
		$("#Chart_Acc").val(rows.Acc_Chart);
	}
});
$("#tblChartOfAccount").on('click', 'tbody tr', function(){
	var table = $("#tblChartOfAccount").DataTable();
	var row = table.row(this).data();
	if(row != undefined){
		swalLoading("Retrieving Information");
		$("#FormUpdateChart").css("display", "");
		ChangeRowColor("tblChartOfAccount", this);
		$("#Code").val(row.Code);
		$("#Name").val(row.Name);
		$("#Legend").val(row.Legend);
		$("#noLife").val((row.Life).split(" ")[0]);
		$("#textLife").val((row.Life).split(" ")[1]);
		$("#ID").val(row.ID);
		$("#Code").focus();
		swal.close();
	}
});
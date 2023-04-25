$("#tblFund").on('click', 'tbody tr', function(){
	var table = $("#tblFund").DataTable();
	var row = table.row(this).data();
	if(row != undefined){
		swalLoading("Retrieving Information");
		$("#FormUpdateFund").css("display", "");
		ChangeRowColor("tblFund", this);
		$("#Code").val(row.Code);
		$("#Name").val(row.Name);
		$("#Legend").val(row.Legend);
		$("#ID").val(row.ID);
		$("#Code").focus();
		swal.close();
	}
});
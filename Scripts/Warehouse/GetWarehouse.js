$("#tblWarehouse").on('click', 'tbody tr', function(){
	var table = $("#tblWarehouse").DataTable();
	var row = table.row(this).data();
	if(row != undefined){
		swalLoading("Retrieving Information");
		$("#FormUpdateWarehouse").css("display", "");
		ChangeRowColor("tblWarehouse", this);
		$("#Code").val(row.Code);
		$("#Name").val(row.Name);
		$("#ID").val(row.ID);
		$("#Code").focus();
		swal.close();
	}
});
$("#tblPAP").on('click', 'tbody tr', function(){
	var table = $("#tblPAP").DataTable();
	var row = table.row(this).data();
	if(row != undefined){
		swalLoading("Retrieving Information");
		$("#FormUpdatePAP").css("display", "");
		ChangeRowColor("tblPAP", this);
		$("#Code").val(row.Code);
		$("#Name").val(row.Name);
		$("#ID").val(row.ID);
		$("#Code").focus();
		swal.close();
	}
});
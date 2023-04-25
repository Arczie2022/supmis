$("#tblListOffice").on('click', 'tbody tr', function(){
	var table = $("#tblListOffice").DataTable();
	var row = table.row(this).data();
	$("#FormUpdateOffice").css("display", "none");
	if(row != undefined){
		ChangeRowColor("tblListOffice", this);

		$("#FormUpdateOffice").css("display", "");
		$("#ID").val(row.ID);
		$("#Code").val(row.Code);
		$("#Name").val(row.Name);
		$("#Campus").val(row.CampusID);
		$("#Code").focus();
	}
});
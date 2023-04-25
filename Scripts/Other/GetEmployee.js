$("#tblListEmployee").on("click", "tbody tr", function(){
	var table = $("#tblListEmployee").DataTable();
	var row = table.row(this).data();
	$("#FormUpdateEmployee").css("display", "none");
	if (row != undefined){
		ChangeRowColor("tblListEmployee", this);
		$("#FormUpdateEmployee").css("display", "");

		$("#ID").val(row.ID);
		$("#Code").val(row.Code);
		$("#Name").val(row.Name);
		$("#Position").val(row.Position);
		Select2Default("Office", row.officeID, row.officeName);
		$("#Name").focus();
	}
});
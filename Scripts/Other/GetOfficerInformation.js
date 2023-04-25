$("#tblListOfficer").on("click", "tbody tr", function(){
	var table = $("#tblListOfficer").DataTable();
	var row = table.row(this).data();

	if(row != undefined){
		ChangeRowColor("tblListOfficer", this);
		$("#FormUpdateOfficer").css("display", "");

		$("#ID").val(row.ID);
		$("#UserLevel").val(row.PositionID);
		$("#oldLevel").val(row.PositionID);
		$("#Office").val(row.Office);
		$("#Employee").val(row.Name + " (" + row.Code + ")");
		$("#UserLevel").focus();
	}
});
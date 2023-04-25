$("#tblComponents").on("click", "tbody tr", function(){
	var table = $("#tblComponents").DataTable();
	var rows = table.row(this).data();

	if(rows != undefined){
		swalLoading("Retrieving Component Details");
		ChangeRowColor("tblComponents", this);
		$("#Equipment").focus();
		$("#ComponentID").val(rows.ID);
		$("#btnAdd").val("Update Components");
		var userdata = {
			'ID': rows.ID
		};
		ajaxCustom("Supply/GetComponentsDetails.php", userdata, function(data){
			Select2Default("Equipment", data[0].supplyID, data[0].supplyName);
			Select2Default("Chart", data[0].chartID, data[0].chartName + " (" + data[0].chartCode + ")");
			$("#Unit").val(data[0].Unit);
			$("#Description").val(data[0].Description);
			$("#Purpose").val(data[0].Purpose);
			$("#Stock").val(data[0].Stock);
			$("#Cost").val(data[0].Price);
			var total = data[0].Stock * data[0].Price;
			$("#Total").val(formatMoney(total));
			swal.close();
		});
	}
});
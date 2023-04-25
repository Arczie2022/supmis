$("#tblListEquip").on("click", "tbody tr", function(){
	var table = $("#tblListEquip").DataTable();
	var rows = table.row(this).data();

	if (rows.ID != "undefined"){
		ChangeRowColor("tblListEquip", this);

		swalLoading("Retrieving Equipment Details");

		$("#divEquipDetails").css("display", "");
		$("#Description").val(rows.Description);
		$("#Purpose").val(rows.Purpose);
		$("#Price").val(rows.Price);
		$("#Unit").val(rows.Unit);
		$("#EquipID").val(rows.ID);
		$("#descID").val(rows.descID);
		
		var userdata = {
			'descID': rows.descID,
			'PO': $("#POID").val(),
			'DR': $("#DRID").val()
		};
		ajaxCustom("Issued/GetEquipmentDetails.php", userdata, function(data){
			$("#Code").val(data[0].Code);
			$("#Supply").val(data[0].Name);
			$("#Property").val(data[0].Property);

			Select2Default("Chart", data[0].Chart, (data[0].chartName + " (" + data[0].chartCode + ")"));
			$("#Chart").val(data[0].Chart);
			$("#Life").val(data[0].Life);

			$("#Specific").val(data[0].Specific);
			$("#Stock").val(data[0].Stock);

			var total = parseInt(data[0].Stock) * BackToNumbers(rows.Price);

			$("#Total").val(formatMoney(total));

			swal.close();
		});
	}
});
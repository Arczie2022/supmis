$("#tblListPO").on("click", "tbody tr", function(){
	var table = $("#tblListPO").DataTable();
	var rows = table.row(this).data();

	if(rows.ID != "undefined"){
		ChangeRowColor("tblListPO", this);
		swalLoading("Retrieving Purchase Order Details");

		$("#divListPO").css("display", "");
		$("#divListDR").css("display", "");

		$("#divListEquip").css("display", "none");
		$("#divEquipDetails").css("display", "none");

		$("#POID").val(rows.ID);

		var userdata = {
			'ID': rows.ID
		};
		ajaxCustom("Issued/GetPODetails.php", userdata, function(data){
			$("#Supplier").val(data[0].Supplier);
			$("#Fund").val(data[0].Fund);
			$("#PAP").val(data[0].PAP);

			JSTable(data, "#tblListDR", ["Date", "Code"]);

			swal.close();
		});
	}
});
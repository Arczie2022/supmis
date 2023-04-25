$("#tblListDR").on("click", "tbody tr", function(){
	var table = $("#tblListDR").DataTable();
	var rows = table.row(this).data();

	if (rows != undefined){
		swalLoading("Retrieving the List of DR/SI Details");
		ChangeRowColor("tblListDR", this);
		
		$("#divListEquip").css("display", "");
		$("#DRID").val(rows.Code);
		var userdata = {
			'DR': rows.Code,
			'PO': $("#POID").val()
		};
		ajaxCustom("Issued/GetDRDetails.php", userdata, function(data){
			for (var i = 0; i < data.length; i++) {
				data[i].Price = formatMoney(data[i].Price);
			}

			JSTable(data, "#tblListEquip", ["Supply", "Description", "Purpose", "Unit", "Price"]);
			swal.close();
		});

	}
});
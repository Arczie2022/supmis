$("#tblReturn").on("click", "tbody tr", function(){
	var table = $("#tblReturn").DataTable();
	var row = table.row(this).data();

	if(row != undefined){
		swalLoading("Retrieving the Returned History of the Equipment");

		var userdata = {
			'ID': row.reissueID
		};
		ajaxCustom("Return/GetHistoryReturnEquipmentByReissue.php", userdata, function(data){
			JSTable(data, "#tblHistory", ["Date", "Description", "Status", "Remarks"]);
			swal.close();
		});
	}

});
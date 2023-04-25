$("#tblSerial").on("click", "tbody tr", function(){
	var table = $("#tblSerial").DataTable();
	var rowData = table.row(this).data();

	if(rowData != undefined){
        $('#divReissue').css('display', '');
		swalLoading("Retrieving History of Issuance");
		var userdata = {
			'ID': rowData.parentID
		};
		ajaxCustom("Issued/GetHistoryEquipmentByParent.php", userdata, function(data){
			JSTable(data, "#tblHistory", ["Date", "Employee", "Code", "Supply", "Serial"]);
			swal.close();
		});
	}

});
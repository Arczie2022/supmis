$("#tblListPO").on("click", "tbody tr", function(){
	var table = $("#tblListPO").DataTable();
	var rows = table.row(this).data();

	if (rows != undefined){
		ChangeRowColor("tblListPO", this);
		swalLoading("Retrieving List of Equipment");
		var userdata = {
			'ID': rows.ID
		};
		ajaxCustom("Reconciliation/GetListEquipmentByPOInUpdated.php", userdata, function(data){
			JSTable(data, "#tblListSupply", ["Code", "Name", "Description", "Purpose", "Price"]);
			swal.close();
		});
	}
});
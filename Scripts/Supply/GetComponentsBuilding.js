$("#tblBuildings").on("click", "tbody tr", function(){
	var table = $("#tblBuildings").DataTable();
	var rows = table.row(this).data();

	if(rows != undefined){
		ChangeRowColor("tblBuildings", this);

		swalLoading("Retreiving List of Components in the Building");

		$("#BuildingID").val(rows.ID);
		Select2Default("Equipment", "", "");
		Select2Default("Chart", "", "");
		$("#Unit").val("");
		$("#Description").val("");
		$("#Purpose").val("");
		$("#Stock").val("");
		$("#Cost").val("");
		$("#Total").val("");
		$("#divComponents").css("display", "");
		var userdata = {
			'ID': rows.ID
		};
		ajaxCustom("Supply/GetComponentsBuilding.php", userdata, function(data){
			$("#ComponentID").val("0");
			$("#btnAdd").val("Add Components");
			for (var i = 0; i < data.length; i++) {
				data[i].Price = formatMoney(data[i].Price);
			}
			JSTable(data, "#tblComponents", ["Supply", "Description", "Purpose", "Price", "Chart"]);
			swal.close();
		});


	}
});
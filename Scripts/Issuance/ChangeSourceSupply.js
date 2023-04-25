$("#Stockroom").on("change", function(){
	var table = $("#tblListRequestSupply").DataTable();
	var rows = table.rows().data();
	CheckStorage();
	if (rows.length != "0"){
		swalConfirm("Are you sure you want to change the source of supply?", 
			"<h6>The Selected Supplies in <span style = 'color:maroon'>List of Requested Supplies</span> will be removed and cannot be undone.</h6>", "warning", function(){

			table.clear().draw();

			$("#warehouseID").val($("#Stockroom").val());
		}, function(){
			$("#Stockroom").val($("#warehouseID").val());
		});
	}else{
		$("#warehouseID").val($("#Stockroom").val());
	}
	if($("#warehouseID").val() == ""){
		$("#warehouseID").val($("#Stockroom").val());
	}

	$("#Supply").val("");
	$("#Supply").empty();
	$("#Description").val("");
	$("#Description").empty();
	$("#EstimatedStock").val("");
	$("#EstimatedStock").empty();
	$("#Quantity").val("");
	$("#Unit").val("");
	$("#Unit").empty();

	$("#divRequestStock").css("display", "");

});
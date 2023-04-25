$("#tblPO").on("click", 'tbody tr', function(){
	var table = $("#tblPO").DataTable();
	var row = table.row(this).data();

	if(row != undefined){
		RetrieveEquipmentByPONo(row.ID);
		ChangeRowColor("divPO", this);
	}
});

function RetrieveEquipmentByPONo(id){
	$("#divEquipment").css("display", "none");
	$("#divInfo").css("display", "none");
	swalLoading("Retrieving List of Equipment");
	var userdata = {
		'ID': id
	};
	ajaxCustom("PaymentDetails/RetrieveEquipmentByPONo.php", userdata, function(data){
		JSTable(data, "#tblEquipment", ["SupplyCode", "SupplyName", "Description", "Unit", "Quantity", "Balance", "Price"]);
		$("#divEquipment").css("display", "");
		swal.close();
	});
}
$("#PONo").on("change", function(){
	swalLoading("Retrieving Purchase Order Information");
	var userdata = {
		'ID': $("#PONo").val()
	};
	ajaxCustom("Encoding/GetPOInformation.php", userdata, function(data){
		$("#Fund").append("<option value = '"+data[0].fundID+"' selected>"+data[0].fundName+"</option>");
		$("#PAP").append("<option value = '"+data[0].papID+"' selected>"+data[0].papName+"</option>");
		$("#Supplier").append("<option value = '"+data[0].supplierID+"' selected>"+data[0].supplierName+"</option>");
		for (var i = 0; i < data.length; i++) {
			data[i].Price = formatMoney(data[i].Price);
		};
		JSTable(data, "#tblEquipment", ["Supply", "Description", "Purpose", "Quantity", "Price"]);
        JSTable([], "#tblPARE", ["", "", "", ""]);
		swal.close();
	});
});
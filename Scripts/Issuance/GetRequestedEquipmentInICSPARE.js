$("#RISPPE").on("change", function(){
    var tableICS = $('#tblICS').DataTable();
    var rowICS = tableICS.rows().data();
    var tablePARE = $('#tblPARE').DataTable();
    var rowPARE = tablePARE.rows().data();	

    if (rowICS.length == 0 && rowPARE.length == 0){
		RetrieveRequestEquipment();
    }else{
    	swalConfirm("Are you sure you want to Search <span style = 'color:maroon'>RIS-PPE</span> again?", 
    		"<h5>Note: If you will change the <span style = 'color:maroon'>RIS-PPE</span> Again, the <span style = 'color:maroon'>Equipment</span> from <span style = 'color:maroon'>ICS</span> and <span style = 'color:maroon'>PARE</span> that you have previously placed will be removed.</h5>", 
    		"info", function(){
				RetrieveRequestEquipment();
    		}, function(){
    			$("#RISPPE").empty();
    			var table = $("#tblListSelected").DataTable();
    			table.clear().draw();
    		});
    }
});

function RetrieveRequestEquipment(){
	swalLoading("Retrieving Contract/PO Details");

	var userdata = {
		'ID': $("#RISPPE").val()
	};
	ajaxCustom("Issuance/GetRequestedEquipmentInICSPARE.php", userdata, function(data){

		$("#Fund").append("<option value = '"+data[0].fundID+"' selected>"+data[0].fundName+"</option>");
        $("#Supplier").append("<option value = '"+data[0].supplierID+"' selected>"+data[0].supplierName+"</option>");
        $("#PONo").append("<option value = '"+data[0].poID+"' selected>"+data[0].poCode+"</option>");
        
        for (var i = 0; i <data.length; i++) {
			data[i].Price = formatMoney(data[i].Price);
		};
		JSTable(data, "#tblListSelected", ["Equipment", "Description", "Purpose", "Item", "Price"]);
		newDatalistOption("Employee", data[0].accountID, data[0].accountName, data[0].accountID, 0, "none");
		swal.close();
	});	
}
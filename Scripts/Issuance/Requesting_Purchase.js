$("#btnSave").on("click", function(evt){
	var table = $("#ListRequest").DataTable();
	var rows = table.rows().data();

	if(rows.length > 0){
		swalConfirm("Are you sure you want Request this Supply/Equipment?", "", "info", function(){
			swalLoading("Saving the Request");
			var obj = [];
			for (var i = 0; i < rows.length; i++) {
				obj.push({
					Supply: rows[i].EquipmentID, 
					Descr: rows[i].Description, 
					Purpose: rows[i].Purpose, 
					Unit: rows[i].Unit, 
					Replacement: rows[i].NewID, 
					reissueID: rows[i].SerialID, 
					Quantity: rows[i].Quantity, 
					Budget: (BackToNumbers(rows[i].Budget)).toString()
				});
			};
			var userdata = {
				'purchase': obj
			};
			ajaxCustom("Issuance/RequestForPurchase.php", userdata, function(data){
				swalGenerate("Successfully Requested", "", "Generate",  
					GetURL("../../View/PrintedPage/PR.php", ["Employee", "DateRequest"], [data[0].Employee, data[0].DateNow]));	
			});
		});
	}else{
		swalMessage("Add List of Equipment Request first", "", "warning", false, function(){
			swal.close();
		});
	}
});
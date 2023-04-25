$("#tblRequested").on("click", "tbody tr", function(){
	var table = $("#tblRequested").DataTable();
	var rows = table.row(this).data();

	if (rows != undefined){
		var SaveData = [];

		var tblDescription = $("#tblDescription").DataTable();
		var allRowDesc = tblDescription.rows().data();
		var bool = true;

		for (var i = 0; i < allRowDesc.length; i++) {
			if (allRowDesc[i].StockID == rows.StockID){
				SaveData.push({
		            StockID: rows.StockID, 
					poID: rows.poID, 
					poCode: rows.poCode, 
					Fund: rows.Fund, 
					EquipmentID: rows.EquipmentID, 
					EquipmentName: rows.EquipmentName, 
					Balance: (parseInt(allRowDesc[i].Balance) + 1),
					Desc: rows.Desc, 
					Purpose: rows.Purpose, 
					Unit: rows.Unit, 
					Price: rows.Price
				});
				bool = false;
			}else{
				SaveData.push(allRowDesc[i]);
			}
		}
		if (bool){
			SaveData.push({
	            StockID: rows.StockID, 
				poID: rows.poID, 
				poCode: rows.poCode, 
				Fund: rows.Fund, 
				EquipmentID: rows.EquipmentID, 
				EquipmentName: rows.EquipmentName, 
				Balance: 1,
				Desc: rows.Desc, 
				Purpose: rows.Purpose, 
				Unit: rows.Unit, 
				Price: rows.Price
			});
		}
		JSTable(SaveData, "#tblDescription", ["Desc", "Purpose", "Balance", "Unit", "Price"]);

        var allRowSelected = table.rows().data();
        var arrTemp = [];
        for (var i = 0; i < allRowSelected.length; i++) {
        	if (allRowSelected[i].StockID == rows.StockID){
        		allRowSelected[i].Quantity = parseInt(allRowSelected[i].Quantity) - 1;
        	}
			if (allRowSelected[i].Quantity != 0 && allRowSelected[i].Quantity != "0")
				arrTemp.push(allRowSelected[i]);
        }

		JSTable(arrTemp, "#tblRequested", ["poCode", "EquipmentName", "Desc", "Quantity", "Price"]);
	} 
});
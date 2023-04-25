$("#tblDescription").on("click", "tbody tr", function(){
	var table = $("#tblDescription").DataTable();
	var rows = table.row(this).data();

	if (rows != undefined){
		var SaveData = [];

		var tblRequested = $("#tblRequested").DataTable();
		var allRowSelected = tblRequested.rows().data();
		var bool = true;

		for (var i = 0; i < allRowSelected.length; i++) {
			if (allRowSelected[i].StockID == rows.StockID){
				SaveData.push({
		            StockID: rows.StockID, 
					poID: rows.poID, 
					poCode: rows.poCode, 
					Fund: rows.Fund, 
					EquipmentID: rows.EquipmentID, 
					EquipmentName: rows.EquipmentName, 
					Desc: rows.Desc, 
					Purpose: rows.Purpose, 
		            Quantity: (parseInt(allRowSelected[i].Quantity) + 1),
					Unit: rows.Unit, 
					Price: rows.Price
				});
				bool = false;
			}else{
				SaveData.push(allRowSelected[i]);
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
				Desc: rows.Desc, 
				Purpose: rows.Purpose, 
	            Quantity: 1,
				Unit: rows.Unit, 
				Price: rows.Price
			});
		}
		JSTable(SaveData, "#tblRequested", ["poCode", "EquipmentName", "Desc", "Quantity", "Price"]);

        var allRows = table.rows().data();
        var arrTemp = [];
        for (var i = 0; i < allRows.length; i++) {
        	if (allRows[i].StockID == rows.StockID){
        		allRows[i].Balance = parseInt(allRows[i].Balance) - 1;
        	}
			if (allRows[i].Balance != 0 && allRows[i].Balance != "0")
				arrTemp.push(allRows[i]);
        }
		JSTable(arrTemp, "#tblDescription", ["Desc", "Purpose", "Balance", "Unit", "Price"]);

	} 
});
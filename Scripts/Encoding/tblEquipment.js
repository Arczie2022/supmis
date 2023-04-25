$("#tblEquipment").on("click", "tbody tr", function(){
	var tableEquip = $("#tblEquipment").DataTable();
	var rowEquip = tableEquip.row(this).data();
	if(rowEquip != undefined){
	    var data = []
        
	    var tableIssued = $('#tblIssued').DataTable();
	    var rowIssued = tableIssued.rows().data();
	    if(rowIssued != undefined){
	    	var isTrue = true;
	        for (var i = 0; i < rowIssued.length; i++) {
	        	if (rowIssued[i].ID == rowEquip.ID){
	        		data.push({
			            ID: rowEquip.ID,
			            Supply: rowEquip.Supply,
			            SupplyID: rowEquip.SupplyID,
			            Description: rowEquip.Description,
			            Purpose: rowEquip.Purpose,
			            Quantity: rowIssued[i].Quantity + 1,
			            Price: rowEquip.Price
			        });
			        isTrue = false;
	        	}else{
		            data.push({
		                ID: rowIssued[i].ID,
		                Supply: rowIssued[i].Supply,
		                SupplyID: rowIssued[i].SupplyID,
		                Description: rowIssued[i].Description,
		                Purpose: rowIssued[i].Purpose,
		                Quantity: rowIssued[i].Quantity,
		                Price: rowIssued[i].Price
		            });
	        	}
	        }

	        if (isTrue){
	        	data.push({
		            ID: rowEquip.ID,
		            Supply: rowEquip.Supply,
		            SupplyID: rowEquip.SupplyID,
		            Description: rowEquip.Description,
		            Purpose: rowEquip.Purpose,
		            Quantity: 1,
		            Price: rowEquip.Price
		        });
	        }
	    	JSTable(data, "#tblIssued", ["Supply", "Description", "Purpose", "Quantity", "Price"]);

	    	data = [];
			var rowsAllEquip = tableEquip.rows().data();
	        
	        for (var i = 0; i < rowsAllEquip.length; i++) {
	        	if (rowsAllEquip[i].ID == rowEquip.ID){
	        		var tempQuantity = rowsAllEquip[i].Quantity - 1;
	        		if (tempQuantity != 0 && tempQuantity != "0"){
	        			data.push({
				            ID: rowEquip.ID,
				            Supply: rowEquip.Supply,
				            SupplyID: rowEquip.SupplyID,
				            Description: rowEquip.Description,
				            Purpose: rowEquip.Purpose,
				            Quantity: tempQuantity,
				            Price: rowEquip.Price
				        });
	        		}
	        		
	        	}else{
		            data.push({
		                ID: rowsAllEquip[i].ID,
		                Supply: rowsAllEquip[i].Supply,
		                SupplyID: rowsAllEquip[i].SupplyID,
		                Description: rowsAllEquip[i].Description,
		                Purpose: rowsAllEquip[i].Purpose,
		                Quantity: rowsAllEquip[i].Quantity,
		                Price: rowsAllEquip[i].Price
		            });
	        	}
	        };

	    	JSTable(data, "#tblEquipment", ["Supply", "Description", "Purpose", "Quantity", "Price"]);
	    }

	}
});

$("#tblIssued").on("click", "tbody tr", function(){
	var tableIssued = $("#tblIssued").DataTable();
	var rowIssued = tableIssued.row(this).data();

	if(rowIssued != undefined){
		 var data = []
        
	    var tableEquip = $('#tblEquipment').DataTable();
	    var rowEquip = tableEquip.rows().data();
	    if(rowEquip != undefined){
	    	var isTrue = true;
	        for (var i = 0; i < rowEquip.length; i++) {
	        	if (rowEquip[i].ID == rowIssued.ID){
	        		data.push({
			            ID: rowIssued.ID,
			            Supply: rowIssued.Supply,
			            SupplyID: rowIssued.SupplyID,
			            Description: rowIssued.Description,
			            Purpose: rowIssued.Purpose,
			            Quantity: rowEquip[i].Quantity + 1,
			            Price: rowIssued.Price
			        });
			        isTrue = false;
	        	}else{
		            data.push({
		                ID: rowEquip[i].ID,
		                Supply: rowEquip[i].Supply,
		                SupplyID: rowEquip[i].SupplyID,
		                Description: rowEquip[i].Description,
		                Purpose: rowEquip[i].Purpose,
		                Quantity: rowEquip[i].Quantity,
		                Price: rowEquip[i].Price
		            });
	        	}
	        }

	        if (isTrue){
	        	data.push({
		            ID: rowIssued.ID,
		            Supply: rowIssued.Supply,
		            SupplyID: rowIssued.SupplyID,
		            Description: rowIssued.Description,
		            Purpose: rowIssued.Purpose,
		            Quantity: 1,
		            Price: rowIssued.Price
		        });
	        }
	    	JSTable(data, "#tblEquipment", ["Supply", "Description", "Purpose", "Quantity", "Price"]);

	    	data = [];
			var rowsAllIssue = tableIssued.rows().data();
	        
	        for (var i = 0; i < rowsAllIssue.length; i++) {
	        	if (rowsAllIssue[i].ID == rowIssued.ID){
	        		var tempQuantity = rowsAllIssue[i].Quantity - 1;
	        		if (tempQuantity != 0 && tempQuantity != "0"){
	        			data.push({
				            ID: rowIssued.ID,
				            Supply: rowIssued.Supply,
				            SupplyID: rowIssued.SupplyID,
				            Description: rowIssued.Description,
				            Purpose: rowIssued.Purpose,
				            Quantity: tempQuantity,
				            Price: rowIssued.Price
				        });
	        		}
	        		
	        	}else{
		            data.push({
		                ID: rowsAllIssue[i].ID,
		                Supply: rowsAllIssue[i].Supply,
		                SupplyID: rowsAllIssue[i].SupplyID,
		                Description: rowsAllIssue[i].Description,
		                Purpose: rowsAllIssue[i].Purpose,
		                Quantity: rowsAllIssue[i].Quantity,
		                Price: rowsAllIssue[i].Price
		            });
	        	}
	        };

	    	JSTable(data, "#tblIssued", ["Supply", "Description", "Purpose", "Quantity", "Price"]);
	    }
	}
});
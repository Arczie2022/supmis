$('#tblRIS').on('click', 'tbody tr', function(){
	var table = $('#tblRIS').DataTable();
	var data = table.row(this).data();
	var dis = this;
	if(data != undefined){
		swalConfirm("", "<h5>Are you sure you want to Remove <span style = 'color:#203354'>" + data.SupplyName + "</span> in your List of Requested Supply?</h5>", "info", function(){
			table.rows(dis).remove().draw();
		});
	}
});

$("#tblPARE").on("click", 'tbody tr', function(){
	var tablePARE = $("#tblPARE").DataTable();
	var rowPARE = tablePARE.row(this).data();

	if(rowPARE != undefined){
		swalConfirm("", "<h5>Are you sure you want to Remove <span style = 'color:#203354'>" + rowPARE.Supply + "</span> in your List of Equipment?</h5>", "info", function(){
			var data = []
	        
		    var tableEquip = $('#tblEquipment').DataTable();
		    var rowEquip = tableEquip.rows().data();
		    if(rowEquip != undefined){
		    	var isTrue = true;
		        for (var i = 0; i < rowEquip.length; i++) {
		        	if (rowEquip[i].ID == rowPARE.ID){
		        		data.push({
				            ID: rowPARE.ID,
				            Supply: rowPARE.Supply,
				            SupplyID: rowPARE.SupplyID,
				            Description: rowPARE.Description,
				            Purpose: rowPARE.Purpose,
				            Quantity: rowEquip[i].Quantity + 1,
				            Price: rowPARE.Price
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
			            ID: rowPARE.ID,
			            Supply: rowPARE.Supply,
			            SupplyID: rowPARE.SupplyID,
			            Description: rowPARE.Description,
			            Purpose: rowPARE.Purpose,
			            Quantity: 1,
			            Price: rowPARE.Price
			        });
		        }
		    	JSTable(data, "#tblEquipment", ["Supply", "Description", "Purpose", "Quantity", "Price"]);

		    	data = [];
				var rowsAllPARE = tablePARE.rows().data();
		        
		        for (var i = 0; i < rowsAllPARE.length; i++) {
		        	if (rowsAllPARE[i].tableID != rowPARE.tableID){
			            data.push({
			                ID: rowsAllPARE[i].ID,
			                Supply: rowsAllPARE[i].Supply,
			                SupplyID: rowsAllPARE[i].SupplyID,
			                Description: rowsAllPARE[i].Description,
			                Purpose: rowsAllPARE[i].Purpose,
			                Quantity: rowsAllPARE[i].Quantity,
			                Price: rowsAllPARE[i].Price,
			                Serial: rowsAllPARE[i].Serial,
	                    	tableID: data.length
			            });
		        	}
		        };

	            JSTable(data, "#tblPARE", ["Supply", "Description", "Serial", "Price"]);
		    }
		});
	}
});

$("#tblICS").on("click", 'tbody tr', function(){
	var tableICS = $("#tblICS").DataTable();
	var rowICS = tableICS.row(this).data();

	if(rowICS != undefined){
		swalConfirm("", "<h5>Are you sure you want to Remove <span style = 'color:#203354'>" + rowICS.Supply + "</span> in your List of Equipment?</h5>", "info", function(){
			var data = []
	        
		    var tableEquip = $('#tblEquipment').DataTable();
		    var rowEquip = tableEquip.rows().data();
		    if(rowEquip != undefined){
		    	var isTrue = true;
		        for (var i = 0; i < rowEquip.length; i++) {
		        	if (rowEquip[i].ID == rowICS.ID){
		        		data.push({
				            ID: rowICS.ID,
				            Supply: rowICS.Supply,
				            SupplyID: rowICS.SupplyID,
				            Description: rowICS.Description,
				            Purpose: rowICS.Purpose,
				            Quantity: rowEquip[i].Quantity + 1,
				            Price: rowICS.Price
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
			            ID: rowICS.ID,
			            Supply: rowICS.Supply,
			            SupplyID: rowICS.SupplyID,
			            Description: rowICS.Description,
			            Purpose: rowICS.Purpose,
			            Quantity: 1,
			            Price: rowICS.Price
			        });
		        }
		    	JSTable(data, "#tblEquipment", ["Supply", "Description", "Purpose", "Quantity", "Price"]);

		    	data = [];
				var rowsAllICS = tableICS.rows().data();
		        
		        for (var i = 0; i < rowsAllICS.length; i++) {
		        	if (rowsAllICS[i].tableID != rowICS.tableID){
			            data.push({
			                ID: rowsAllICS[i].ID,
			                Supply: rowsAllICS[i].Supply,
			                SupplyID: rowsAllICS[i].SupplyID,
			                Description: rowsAllICS[i].Description,
			                Purpose: rowsAllICS[i].Purpose,
			                Quantity: rowsAllICS[i].Quantity,
			                Price: rowsAllICS[i].Price,
			                Serial: rowsAllICS[i].Serial,
	                    	tableID: data.length
			            });
		        	}
		        };

	            JSTable(data, "#tblICS", ["Supply", "Description", "Serial", "Price"]);
		    }
		});
	}
});
$("#tblPR").on("click", "tbody tr", function(){
	var Request = $("#tblPR").DataTable();
	var rowRequest = Request.row(this).data();
	var ForApproval = $("#tblApproval").DataTable();
	var rowApproval = ForApproval.rows().data();
	var tempStorage = [];

	for (var i = 0; i < rowApproval.length; i++) {
		tempStorage.push({
			ID: rowApproval[i].ID, 
			Employee: rowApproval[i].Employee, 
			Equipment: rowApproval[i].Equipment, 
			Description: rowApproval[i].Description, 
			Type: rowApproval[i].Type, 
			Serial: rowApproval[i].Serial, 
			Quantity: rowApproval[i].Quantity, 
			Price: rowApproval[i].Price
		});
	};
	tempStorage.push({
		ID: rowRequest.ID, 
		Employee: rowRequest.Employee, 
		Equipment: rowRequest.Equipment, 
		Description: rowRequest.Description, 
		Type: rowRequest.Type, 
		Serial: rowRequest.Serial, 
		Quantity: rowRequest.Quantity, 
		Price: rowRequest.Price
	});
	JSTable(tempStorage, "#tblApproval", ["Employee", "Equipment", "Description", "Type", "Serial", "Quantity", "Price"], "", [], [20,20,20,22,20,20,20]);
	Request.row(this).remove().draw();
});

$("#tblApproval").on("click", "tbody tr", function(){
	var ForApproval = $("#tblApproval").DataTable();
	var rowApproval = ForApproval.row(this).data();
	var Request = $("#tblPR").DataTable();
	var rowRequest = Request.rows().data();
	var tempStorage = [];

	for (var i = 0; i < rowRequest.length; i++) {
		tempStorage.push({
			ID: rowRequest[i].ID, 
			Employee: rowRequest[i].Employee, 
			Equipment: rowRequest[i].Equipment, 
			Description: rowRequest[i].Description, 
			Type: rowRequest[i].Type, 
			Serial: rowRequest[i].Serial, 
			Quantity: rowRequest[i].Quantity, 
			Price: rowRequest[i].Price
		});
	};
	tempStorage.push({
		ID: rowApproval.ID, 
		Employee: rowApproval.Employee, 
		Equipment: rowApproval.Equipment, 
		Description: rowApproval.Description, 
		Type: rowApproval.Type, 
		Serial: rowApproval.Serial, 
		Quantity: rowApproval.Quantity, 
		Price: rowApproval.Price
	});

	JSTable(tempStorage, "#tblPR", ["Employee", "Equipment", "Description", "Type", "Serial", "Quantity", "Price"], "", [], [20,20,20,22,20,20,20]);
	ForApproval.row(this).remove().draw();

});

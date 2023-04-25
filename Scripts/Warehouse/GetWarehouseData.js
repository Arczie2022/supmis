$("#tblWarehouseStock").on('click', 'tbody tr', function(){
	var table = $("#tblWarehouseStock").DataTable();
	var row = table.row(this).data();
	if(row != undefined){
		swalLoading("Retrieving Information");
		$("#FormWarehouse").css("display", "");
		ChangeRowColor("tblWarehouseStock", this);
		$("#empID").val(row.lastEmployeeID);
		$("#warehousedet").val(row.warehousedetID);
		$("#return").val(row.returnID);
		$("#reissue").val(row.reissueID);
		$("#reissue").val(row.reissueID);
		$("#icsDet").val(row.icsdetID);
		$("#paredet").val(row.paredetID);
		$("#Code").val(row.supplyCode);
		$("#Name").val(row.supplyName);
		$("#Remarks").val(row.Remarks);
		$("#Property").val(row.Property);
		$("#Barcode").val(row.Serial);
		$("#Life").val(row.Life);
		$("#IssuanceCode").val(row.issuanceCode);
		$("#IssuedEmployee").val(row.lastEmployee);
		$("#Officer").val(row.SupplyOfficer);
		$("#FirstIssuance").val(row.firstIssuedDate);
		$("#LastIssuance").val(row.lastIssuedDate);
		$("#DateWarehouse").val(row.warehouseDate);
		var dateDiff = new Date(row.lastIssuedDate) - new Date(row.firstIssuedDate);
		swal.close();
		
		var dateNow = new Date();
		var year = dateNow.getFullYear();
		var month = (dateNow.getMonth()+1);
		month = month.toString().length == 1 ? "0" + month : month;
		var day = dateNow.getDate();
		day = day.toString().length == 1 ? "0" + day : day;
		UsefulDate(row.firstIssuedDate, year + "-" + month + "-" + day, row.Life);
	}
});

function UsefulDate(firstDate, lastDate, usefulLife){
	var dateDiff = new Date(lastDate) - new Date(firstDate);
	var result = 0;
	var life = usefulLife.split(" ");
	var type = life[1]; 
	type = type.toUpperCase();
	if(type == "YEAR" || type == "YEARS"){
		result = dateDiff / 31536000000;
	}
	else if (type == "MONTH" || type == "MONTHS"){
		result = dateDiff / 2628000000;
	}
	else if (type == "WEEK" || type == "WEEKS"){
		result = dateDiff / 604800000;
	}
	else if (type == "DAY" || type == "DAYS"){
		result = dateDiff / 86400000;
	}
	else{
		result = -1;
	}
	var retMessage = result == - 1 ? "error" : (result >= life[0] ? "exceeded" : "not yet");
	switch(retMessage){
		case "error":
			ajaxMessage("System Error");
		break;
		case "exceeded":
			swalMessage("", "<h4 style = 'text-align: justify;text-align-last: center;'><span style = 'color: maroon;'>Notice:</span> The Date of Issued Equipment from the First Issuance (<span style = 'color: maroon'>"+firstDate
				+"</span>) until now (<span style = 'color: maroon'>"+lastDate
				+"</span>) are exceeded in the Useful Life (<span style = 'color: maroon'>"+
				usefulLife+"/s</span>)</h4>", "warning", false);
		break;
		default: 
		break;
	}
}
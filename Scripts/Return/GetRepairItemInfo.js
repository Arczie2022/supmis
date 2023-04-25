$("#tableListRepair").on("click", "tbody tr", function(){
	var table = $("#tableListRepair").DataTable();
	var row = table.row(this).data();
	if(row != undefined){
		ChangeRowColor("tableListRepair", this);

		swalLoading("Retrieving the Equipment Information");
		$("#FormEquipmentInfo").css("display", "");

		var userdata = {
			'maxReturnID': row.maxID,
			'secondMaxReturnID': row.secondMaxID,
			'reissueID': row.reissueID
		};
		ajaxCustom("Return/GetRepairEquipmentInfo.php", userdata, function(data){
			$("#maxReturn").val(row.maxID);			
			$("#secondMaxReturn").val(row.secondMaxID);			
			$("#reissue").val(row.reissueID);

			$("#DateRepair").val(data[0].repairDate);			
			$("#DateReturned").val(data[0].returnedDate);	
			$("#DateIssued").val(data[0].issueDate);			
			$("#returnRemarks").val(data[0].returnRemarks);			
			
			$("#IssuanceType").val(data[0].issueType);			
			$("#IssuanceCode").val(data[0].issueCode);			
			$("#SupplyOfficer").val(data[0].officerName);			
			$("#Employee").val(data[0].empName);			
			
			$("#EquipmentCode").val(data[0].supplyCode);	
			$("#EquipmentName").val(data[0].supplyName);			
			$("#EquipmentRemarks").val(data[0].issueRemarks);			
			$("#Life").val(data[0].chartLife);			
			
			$("#Serial").val(data[0].reissueSerial);			
			$("#Property").val(data[0].reissueProperty);			
			swal.close();
		});
	}
});
$("#ContractNo").on("change", function(){
	var poCode = $("#ContractNo").val();
	swalLoading("Checking for Contract Details");
	var userdata = {
		'ID': poCode
	};
	ajaxCustom("Supply/GetPOInfo.php", userdata, function(data){
		if(data[0].poID == "0" || data[0].poID == 0){
			$("#ContractDate").prop('disabled', false);
			$("#Contractor").prop('disabled', false);
			$("#Fund").prop('disabled', false);
		}else{
			$("#ContractDate").prop('disabled', true);
			$("#Contractor").prop('disabled', true);
			$("#Fund").prop('disabled', true);


			Select2Default("Contractor", data[0].supplierID, data[0].supplierName);
			$("#ContractDate").val(data[0].receiptDate);
			$("#Fund").val(data[0].fundID);

		}
		swal.close();
	});
});
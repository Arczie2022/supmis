$("#btnAdd").on("click", function(e){
	e.preventDefault();
	swalConfirm("Are you sure you want to Update?", "", "info", function(){
		swalLoading("Updating Equipment");


		var userdata = {
			'Supply': $("#divEquipmentInfo").html(),
			'PONo': $("#PONo").val(),
			'POCode': $("#PONo").text(),
			'DescID': $("#DescID").val(),
			'DRNo': $("#DRNo").val(),
			'Chart': $("#Chart").val(),
			'ChartName': $("#Chart").text(),
			'Type': $("#Type").val(),
			'Warranty': $("#Warranty").val(),
			'Replace': $("#Replace").val(),
			'ReplaceParts': $("#ReplaceParts").val(),
			'Stock': $("#Stock").val(),
			'Unit': $("#Unit").val(),
			'Price': BackToNumbers($("#Price").val()),
			'Description': $("#Description").val(),
			'Purpose': $("#Purpose").val()
		};
		ajaxCustom("PaymentDetails/UpdateEquipmentInfoInPO.php", userdata, function(data){
			RetrieveEquipmentByPONo($("#PONo").val());
			ChangeRowColor("divPO", "");
		});
	});	
});
$("#btnAdd").on("click", function(evt){
	$("#FormSearch").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			
			swalLoading("Retrieving Equipment Description");

			var userdata = {
				'Fund': $("#Fund").val(),
				'Equipment': $("#Equipment").val(),
				'EquipmentName': $("#Equipment option:selected").text()
			};
			ajaxCustom("Issuance/GetDescriptionEquipmentInRequest.php", userdata, function(data){
				for (var i = 0; i < data.length; i++) {
					data[i].Price = formatMoney(data[i].Price);
				}
				JSTable(data, "#tblDescription", ["Desc", "Purpose", "Balance", "Unit", "Price"]);
				$("#HiddenEquipment").val($("#Equipment option:selected").text());
				swal.close();
			});	
		}
	});
	ajaxRules("Equipment Fund", "required number", [true, true], evt);
});
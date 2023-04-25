$("#btnAdd").on("click", function(evt){
	$("#formComponents").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			var building = $("#BuildingID").val();
			var component = $("#ComponentID").val();

			if (building == "0"){
				swalMessage("Please Click the Building first before adding components", "", "warning", false, function(){
					swal.close();
				});
			}else{
				swalConfirm("Are you sure you want to Save?", "", "info", function(){
					swalLoading("Saving Components of Building");
					var userdata = {
						'Building': building,
						'Component': component,
						'Equipment': $("#Equipment").val(),
						'Chart': $("#Chart").val(),
						'Stock': $("#Stock").val(),
						'Unit': $("#Unit").val(),
						'Description': $("#Description").val(),
						'Purpose': $("#Purpose").val(),
						'Cost': BackToNumbers($("#Cost").val())
					};
					ajaxCustom("Supply/SaveComponentBuilding.php", userdata, function(data){
						Select2Default("Equipment", "", "");
						Select2Default("Chart", "", "");
						$("#Stock").val("");
						$("#Unit").val("");
						$("#Description").val("");
						$("#Purpose").val("");
						$("#Cost").val("");
						$("#Total").val("");
						swalMessage("Saved Successfully", "", "success", false, function(){
							swalLoading("Retrieving Components of Building");
							var userdata = {
								'ID': building
							};
							ajaxCustom("Supply/GetComponentsBuilding.php", userdata, function(data){
								$("#ComponentID").val("0");
								$("#btnAdd").val("Add Components");
								for (var i = 0; i < data.length; i++) {
									data[i].Price = formatMoney(data[i].Price);
								}
								JSTable(data, "#tblComponents", ["Supply", "Description", "Purpose", "Price", "Chart"]);
								swal.close();
							});
						});
					});
				});
			}
		}
	});
	ajaxRules("Equipment Chart Cost Description Unit Purpose", "required InputTextBox", [true, true], evt);
	ajaxRules("Stock", "required number min", [true, true, 1], evt);
});
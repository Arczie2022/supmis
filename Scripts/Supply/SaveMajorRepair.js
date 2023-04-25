$("#btnAdd").on("click", function(evt){
	$("#formRepairBuilding").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Save?", "", "info", function(){
				swalLoading("Saving Major Repair of Building");

				var userdata = {
					'BuildingID': $("#BuildingID").val(),
					'RepairBuildingID': $("#RepairBuildingID").val(),
					'ContractDate': $("#ContractDate").val(),
					'ContractNo': $("#ContractNo").val(),
					'Contractor': $("#Contractor").val(),
					'StartDateRepair': $("#StartDateRepair").val(),
					'EndDateRepair': $("#EndDateRepair").val(),
					'Description': $("#Description").val(),
					'Chart': $("#Chart").val(),
					'Fund': $("#Fund").val(),
					'PAP': $("#PAP").val(),
					'NatureRepair': $("#NatureRepair").val(),
					'Amount': BackToNumbers($("#Amount").val())
				};
				ajaxCustom("Supply/SaveMajorRepair.php", userdata, function(data){
					swalMessage("Successfully Saved", "", "success", false, function(){
						RetrieveMajorBuilding($("#BuildingID").val());
						$("#RepairBuildingID").val("0");
						$("#ContractDate").val("");
						$("#ContractNo").val("");
						Select2Default("Contractor", "", "");
						$("#StartDateRepair").val("");
						$("#EndDateRepair").val("");
						$("#Description").val("");
						Select2Default("Chart", "", "");
						$("#Fund").val("");
						$("#NatureRepair").val("");
						$("#Amount").val("");

						$("#ContractNo").prop('disabled', false);
						$("#ContractDate").prop('disabled', false);
						$("#Contractor").prop('disabled', false);
						$("#Fund").prop('disabled', false);
						$("#PAP").prop('disabled', false);

						$("#btnAdd").val("Add Major Repair");
						
						swal.close();
					});	
				});
			});
		}
	});

	ajaxRules("StartDateRepair EndDateRepair ContractDate", "required dateFormat", [[true, false, true], true], evt);
	ajaxRules("ContractNo Contractor Description Chart Fund NatureRepair Amount", "required InputTextBox", [true, true], evt);
});
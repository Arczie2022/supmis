$("input[type='submit']").on("click", function(e){
	var userdata = {
		'warehousedetID': $("#warehousedet").val(),
		'reissueID': $("#reissue").val(),
		'icsDetID': $("#icsDet").val(),
		'returnID': $("#return").val(),
		'paredetID': $("#paredet").val()
	};
	switch(this.id){
		case "btnReturn":
			e.preventDefault();
			swalConfirm("Are you sure you want to Return Back to the Employee?", "", "info", function(){
				swalLoading("Returning back the Equipment to the Owner");
				ajaxCustom("Warehouse/returnEquipmentToOwnerEmployee.php", userdata, function(data){
					swalMessage("Returned Successfully", "", "success", true);					
				}, true, true);
			});
		break;
		case "btnReissue":
			e.preventDefault();
			$('#modalReissue').modal('toggle');
		break;
		case "btnDispose":
			e.preventDefault();
			swalConfirm("Are you sure you want to Dispose?", "", "info", function(){
				swalLoading("Forwarding the Equipment for Disposal");
				ajaxCustom("Warehouse/ForwardForDisposal.php", userdata, function(data){
					swalMessage("Moved to the List for Disposal Item", "", "success", true);					
				}, true, true);
			});
		break;
		case "btnmodalReissue":
			$("#FormWarehouse").validate({
				submitHandler: function(form, e) {
					e.preventDefault();
					var empCode = $("#ReissueEmployee option:selected").text();
					console.log()
					if ($("#ReissueEmployee").val() == $("#empID").val()){
						swalMessage("You cannot reissue again the Equipment to the Owner.", "", "error", false, function(){
							swal.close();
						});
					}else{
						swalConfirm("Are you sure you want to Reissue the " + 
							$("#Name").val() + " to " + empCode.split(" (")[0] + "?", "", "info", 
							function(){
								empCode = empCode.split("(")[1];
								empCode = empCode.substring(0, empCode.length - 1);
								swalLoading("Reissuing Equipment to " + empCode.split(" (")[0]);
								var userdata = {
									'reissue': $("#reissue").val(),
									'icsDet': $("#icsDet").val(),
									'paredet': $("#paredet").val(),
									'return': $("#return").val(),
									'warehousedet': $("#warehousedet").val(),
									'ReissueEmployee': $("#ReissueEmployee").val(),
									'employeeCode': empCode
								};
								ajaxCustom("Warehouse/ReissueEquipment.php", userdata, function(data){
									var ics = $("#icsDet").val(), pare = $("#paredet").val();
									if(ics != 0 || ics != "0"){
				                        swalGenerate("Saved Successfully", "", "Print Form", 
	                         		   		GetURL("../../View/PrintedPage/reissue_ICS.php",
	                           					["ID", "emp"], [data[0].ID, empCode]));
									}
									if(pare != 0 || pare != "0"){
				                        swalGenerate("Saved Successfully", "", "Print Form", 
	                         		   		GetURL("../../View/PrintedPage/reissue_PARE.php",
	                           					["ID", "emp"], [data[0].ID, empCode]));
									}

								}, true, true);
							}
						);
					}
				}
			});
			ajaxRules("ReissueEmployee", "required", [true], e);
		break;
		case "btnWarehouse":
			e.preventDefault();
			$('#modalWarehouse').modal('toggle');

		break;
		case "btnmodalWarehouse":
			$("#FormWarehouse").validate({
				submitHandler: function(form, e) {
					e.preventDefault();
					var warehouse = $("#TransferWarehouse option:selected").text();
					swalConfirm("Are you sure you want to Transfer the <span style ='color: maroon;'>"
						+$("#Name").val()+"</span> to <span style ='color: maroon;'>"
						+warehouse+"</span>?", "", "info", function(){

						swalLoading("Transferring Equipment to "+warehouse);

						var userdata = {
							'reissue': $("#reissue").val(),
							'return': $("#return").val(),
							'warehousedet': $("#warehousedet").val(),
							'TransferWarehouse': $("#TransferWarehouse").val()
						};
						ajaxCustom("Warehouse/TransferWarehouse.php", userdata, function(data){
							swalMessage("Transferred Successfully", "", "success", true);
						}, true, true);
					});
				}
			});
			ajaxRules("TransferWarehouse", "required", [true], e);
		break;
		default:

		break;
	}
});
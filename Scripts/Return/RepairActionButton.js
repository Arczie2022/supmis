$("input[type='submit']").on("click", function(e){
	var dis = this;
	var formValidate = $("#FormEquipmentInfo").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			var userdata = {
				'Cost': BackToNumbers($("#Cost").val()),
				'TypeRepair': $("#TypeRepair").val(),
				'Remarks': $("#Remarks").val(),
				'returnID': $("#maxReturn").val(),
				'reissueID': $("#reissue").val()
			};
			switch(dis.id){
				case "btnReturn":
					swalConfirm("Are you sure you want to Return Back to the Employee?", "", "info", function(){
						swalLoading("Returning to the Employee");
						ajaxCustom("Return/RepairReturnToOwnerEmployee.php", userdata, function(data){
							swalMessage("Returned Successfully", "", "success", true);					
						}, true, true);
					});
				break;
				case "btnDispose":
					swalConfirm("Are you sure you want to Dispose?", "", "info", function(){
						swalLoading("Moving to the List of Equipment for Disposal");
						ajaxCustom("Return/RepairDisposeEquipment.php", userdata, function(data){
							swalMessage("Equipment has been moved to the List for Disposal Item", "", "success", true);					
						}, true, true);
					});
				break;
				case "btnWarehouse":
					swalConfirm("Are you sure you want to move in Warehouse?", "", "info", function(){
						swalLoading("Moving the Equipment to the Warehouse");
						ajaxCustom("Return/RepairForwardToWarehouse.php", userdata, function(data){
							swalMessage("Equipment has been moved to the Warehouse", "", "success", true);					
						}, true, true);
					});
				break;
				default:
				break;
			}
			formValidate.destroy();
		}
	});
	ajaxRules("Cost TypeRepair", "required InputTextBox", [true, true], e);
});
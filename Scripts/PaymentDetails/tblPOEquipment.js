$(document).ready(function(){
	DTContextMenu("#tblEquipment", ["Edit", "Delete"], function(key, selected_row) {
		var code =  selected_row.SupplyCode == "" ? selected_row.SupplyName : selected_row.SupplyName +" (" + selected_row.SupplyCode + ")"; 
		$("#divInfo").css("display", "none");
	    switch(key) {
			case "Edit":
				$("#divEquipmentInfo").html(code);
				swalLoading("Retrieving Equipment Information");
				console.log(selected_row);
				if(selected_row.Balance != selected_row.Quantity){
					swalMessage("", "<h5>You cannot edit the <span style = 'color: maroon'>" + selected_row.SupplyName + "</span>. There has a transaction in this Contract/PO Number and Equipment.</h5>", "warning", false, function(){
						swal.close();
					});
				}else{
					var userdata = {
						'ID': selected_row.ID
					};
					ajaxCustom("PaymentDetails/RetrieveEquipmentInfoInPO.php", userdata, function(data){
						$("#divInfo").css("display", "");
						$("#DescID").val(data[0].descID);
						Select2Default("PONo", data[0].poID, data[0].poCode);
						$("#PODate").val(data[0].poDateReceipt);
						Select2Default("DRNo", data[0].DRCode, data[0].DRCode);
						$("#DRDate").val(data[0].DRDate);
						$("#Supplier").val(data[0].supplierName);
						$("#Fund").val(data[0].fundName + " (" + data[0].fundCode + ")");
						$("#PAP").val(data[0].papName);
						Select2Default("Chart", data[0].chartID, data[0].chartName + " (" + data[0].chartCode + ")");
						$("#Type").val(data[0].Consumable);
						$("#Warranty").val(data[0].Warranty);
						$("#Replace").val(data[0].IsReplace);
						if (data[0].IsReplace) $("#ReplaceParts").removeAttr("disabled");
						else $("#ReplaceParts").attr("disabled", "disabled")
						$("#ReplaceParts").val(data[0].replaceParts);
						$("#Stock").val(data[0].stockAvailable);
						$("#Unit").val(data[0].supplyUnit);
						formatMoney(data[0].supplyPrice, "Price");
						$("#Description").val(data[0].supplyDesc);
						$("#Purpose").val(data[0].supplyPurpose);
						formatMoney(parseInt(data[0].stockAvailable) * parseInt(data[0].supplyPrice), "Total");
						swal.close();
					});
				}
			break;
			case "Delete":
				if(selected_row.Balance != selected_row.Quantity){
					swalMessage("", "<h5>You cannot delete the  <span style = 'color: maroon'>" + selected_row.SupplyName + "</span>. There has a transaction in this Contract/PO Number and Equipment.</h5>", "warning", false, function(){
						swal.close();
					});
				}else{
					swalConfirm("Are you sure you want to Delete <span style = 'color: maroon'>" + code + "</span>?", "", "info", function(){
						swalLoading("Deleting the Equipment");

						var userdata = {
							'ID': selected_row.ID
						};
						ajaxCustom("PaymentDetails/DeleteSupplyInPO.php", userdata, function(data){
							swalMessage("Deleted Successfully", "", "success", true);
						});

					});
				}
			break;
		}
	});
});
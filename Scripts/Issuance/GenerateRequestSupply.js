$('#btnAdd').on('click', function(evt){
	var table = $('#tblListRequestSupply').DataTable();
	var row = table.rows().data();
	
	$('#FormListSupplyRequested').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			if(row.length == 0){
				swalMessage("Add Supply Items first", "", "warning", false, function(){
					swal.close();
				});
			}
			else{
				swalConfirm("Are you sure you want to Request?", "", "info", function(){
					swalLoading("Saving the Request");
					
					var objRIS = [];
					for (var i = 0; i < row.length; i++) {
						var description = row[i].Description;
						objRIS.push({
							supplyName: row[i].Supply,
							supply: row[i].SupplyID,
							quantity: row[i].Quantity,
							unit: row[i].Unit,
							description: description
						});
					}
					var userdata = {
						'objRIS': objRIS,
				    	'Purpose': $('#Purpose').val(),
				    	'Storage': $('#Storage').val(),
				    	'Stockroom': $('#Stockroom').val()
				    };
				    ajaxCustom("Issuance/GenerateRequestSupply.php", userdata, function(data){
				    	swalGenerate("Request Sent!", "<h4>RIS Code:<span style ='color: maroon'>"+data[0].ID+"</span></h4>", "Print Form", 
				    		GetURL("../../View/PrintedPage/RIS.php", ["ID"], [data[0].ID]), 
				    		"../../View/Issuance/List_of_Requested_Supply.php");
				    }, true, true);
				});
			}
		}
	});
	ajaxRules("Purpose Storage Stockroom", "required InputTextBox", [true, true], evt);
});
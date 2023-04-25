$("#btnApprove").on("click", function(){
	var table = $("#tblApproval").DataTable();
	var row = table.rows().data();

	if(row.length != 0){
		swalConfirm("Are you sure you want to <span style='color: maroon'>Approved</span> all <span style='color: maroon'>Selected PR</span>?", "", "info", function(){
			swalLoading("Updating Status of Purchase Request");
			var tempStorage = [];
			for (var i = 0; i < row.length; i++) {
				tempStorage.push({
					ID: row[i].ID
				});
			};
			var userdata = {
				'ID': tempStorage,
				'Status': 1
			};
			ajaxCustom("Issued/ApprovePurchaseRequest.php", userdata, function(data){
				swalMessage("Successfully Saved", "", "success", true);
			});
		});
	}else{
		swalMessage("Please Add <span style='color: maroon'>PR</span> first in the <span style='color: maroon'>List of Request to be Approved</span>", "", "warning", false, function(){
			swal.close();
		});
	}
});
$("#btnDisapprove").on("click", function(){
	var table = $("#tblApproval").DataTable();
	var row = table.rows().data();

	if(row.length != 0){
		swalConfirm("Are you sure you want to <span style='color: maroon'>Disapproved</span> all <span style='color: maroon'>Selected PR</span>?", "", "info", function(){
			swalLoading("Updating Status of Purchase Request");
			var tempStorage = [];
			for (var i = 0; i < row.length; i++) {
				tempStorage.push({
					ID: row[i].ID
				});
			};

			var userdata = {
				'ID': tempStorage,
				'Status': 2
			};
			ajaxCustom("Issued/ApprovePurchaseRequest.php", userdata, function(data){
				swalMessage("Successfully Saved", "", "success", true);
			});
		});
	}else{
		swalMessage("Please Add <span style='color: maroon'>PR</span> first in the <span style='color: maroon'>List of Request to be Approved</span>", "", "warning", false, function(){
			swal.close();
		});
	}
});
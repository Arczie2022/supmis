$("#btnSave").on("click", function(){
	var table = $("#tblRequested").DataTable();
	var rows = table.rows().data();
	if (rows.length != 0 && rows.length != "0"){
		swalConfirm("Are you sure you want to Save?", "", "info", function(){
			var arrData = [];
			swalLoading("Requesting Equipment");
			for (var i = 0; i < rows.length; i++) {
				arrData.push({
					Stock: rows[i].StockID,
					PONo: rows[i].poID,
					Fund: rows[i].Fund,
					Quantity: rows[i].Quantity,
					Equipment: rows[i].EquipmentName + " (" + rows[i].Desc + ")"
				});
			}
			var userdata = {
				'objData': arrData
			};
			ajaxCustom("Issuance/RequestingEquipment.php", userdata, function(data){
                var risppecode = "<h4>RIS Code:</h4><div style = 'color: red'>";
                for (var i = 0; i < data.length; i++) {
                    var code = data[i].ID;
                    var _url = "onclick = 'windowOpen(" + '"' + GetURL("../../View/PrintedPage/RISPPE.php", ["ID"], [code]) + '"' +  ");'"; 
                    risppecode+="<input class = 'btn btn-outline-maroon' type = 'button' value = '"+code+"'" + _url+
                     "data-toggle = 'tooltip' title = 'Click Me to Generate the RIS Form' data-placement = 'right'><br/>";
                }
                risppecode += "</div></h4>";
                swalAddAgain("Saved Successfully", risppecode, function(){
                    location.reload();
                });
			});	
		});
	}else{
		swalMessage("You cannot Request Equipment", "<h5>Please Fill out first the List of Equipment to be Requested Table.</h5>", "warning", false, function(){
			swal.close();
		});
	}
});
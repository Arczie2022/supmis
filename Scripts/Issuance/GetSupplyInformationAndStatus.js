$('#tblListRequestSupply').on('click', 'tbody tr', function(){
	var table = $('#tblListRequestSupply').DataTable();
    var row = table.row(this).data();
    
    if(row != undefined){
        ChangeRowColor("tblListRequestSupply", this);
                    
        $('#FormUpdateStatusSupply').css('display', '');    
        var userdata = {
        	'Supply': row.SupplyID
        };
        ajaxCustom("Issuance/GetAvailableStockBySupply.php", userdata, function(data){
        	$("#Stock").val(data[0].Stock);
            $('#Stat').val(row.StatusNo);
            $('#ID').val(row.ID);
            $('#risdetID').val(row.risdetID);
            $('#SupplyID').val(row.SupplyID);
            $('#Description').val(row.Desc);
		    $('#Supply').val(row.Supply);
	        $('#Quantity').val(row.Quantity);
		    $('#Unit').val(row.Unit);

		    var remarks = (row.Remarks == "-" ? "" : row.Remarks);
		    $('#Remarks').val(remarks);
        });
	}
});
$('#Supply').on('change', function(){
    swalLoading("Counting Available Stocks");
    var SupplyID = $('#Supply').val();
    var Stockroom = $('#Stockroom').val();
	var userdata = {
        'ID': SupplyID,
		'Stockroom': Stockroom
	};
    ajaxCustom("Issuance/ViewAvailableStockBySupplyID.php", userdata, function(data){
        var table = $('#tblListRequestSupply').DataTable();
        var rows = table.rows().data();

        for (var i = 0; i < data.length; i++) {
            var Stock = data[i].Stock;
            var Specific = data[i].Specific == "" ? "No Description" : data[i].Specific;
            var ID = Specific+"@"+SupplyID;
            for (var j = 0; j < rows.length; j++) {
                if(rows[j].ID == ID){
                    Stock -= rows[j].Quantity;
                }                   
            }

            Stock = (Stock == 0 ? "No Stock" : Stock);
            newDatalistOption("Specific", ID, Specific, ID, i, true);
            newDatalistOption("EstimatedStock", ID, Stock, ID, i, true);
            newDatalistOption("Unit", ID, data[i].Unit, ID, i, true);
        };

        swal.close();

    });
});
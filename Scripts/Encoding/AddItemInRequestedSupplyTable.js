$('#btnAddRequest').on('click', function(evt){
    var arrTable = [];
    var EstimatedStock = $("#EstimatedStock option:selected").text();
    EstimatedStock = EstimatedStock == "" ? 0 :EstimatedStock;
    var formValidate = $('#FormRequestingSupply').validate({
        submitHandler: function(form, e) {
            e.preventDefault();
            var table = $('#tblListRequestSupply').DataTable();
            var temp = true;
            table.rows().every( function ( rowIdx, tableLoop, rowLoop ) {
                var data = this.data();
                if (data.ID == $("#Specific").val()){
                    var tempQuantity = data.Quantity;
                    tempQuantity = parseInt(tempQuantity) + parseInt($("#Quantity").val());

                    arrTable.push({
                        Supply: $("#Supply option:selected").text(),
                        Description: $("#Specific option:selected").text(),
                        Quantity: tempQuantity,
                        Unit: $("#Unit option:selected").text(),
                        SupplyID: $("#Supply").val(),
                        ID: $("#Specific").val()
                    });

                    temp = false;
                }else{
                    arrTable.push({
                        Supply: data.Supply,
                        Description: data.Description,
                        Quantity: data.Quantity,
                        Unit: data.Unit,
                        SupplyID: data.SupplyID,
                        ID: data.ID
                    });
                }
                table.rows(this).remove();
            } );
            if(temp){
                arrTable.push({
                    Supply: $("#Supply option:selected").text(),
                    Description: $("#Specific option:selected").text(),
                    Quantity: $("#Quantity").val(),
                    Unit: $("#Unit option:selected").text(),
                    SupplyID: $("#Supply").val(),
                    ID: $("#Specific").val()
                });
            }
            JSTable(arrTable, "#tblListRequestSupply", ["Supply", "Description", "Quantity", "Unit"]);

            $('#Quantity').val("");
            $("#Unit").empty();
            $("#Supply").empty();
            $("#EstimatedStock").empty();
            $("#Specific").empty();
            formValidate.destroy();
        }
    });
    ajaxRules("Supply", "required number Stock", [true, true, EstimatedStock], evt);
    ajaxRules("Specific", "required InputTextBox", [true, true], evt);
    ajaxRules("Quantity", "required number min max", [true, true, 1, EstimatedStock ], evt);
});

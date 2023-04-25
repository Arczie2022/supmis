$('#btnSave').on('click', function(evt){
    $("#divTable").validate({
        submitHandler: function(form, e) {
            e.preventDefault();

            var table = $('#tableListToDisposed').DataTable();
            var row = table.rows().data();
            var objRow = []
            if(row[0] != undefined){
                for (var i = 0; i < row.length; i++) {
                    objRow.push({
                        Date: row[i].Date,
                        SupplyCode: row[i].SupplyCode,
                        Supply: row[i].Supply,
                        Serial: row[i].Serial,
                        Employee: row[i].Employee,
                        Office: row[i].Office,
                        ID: row[i].ID,
                        returnID: row[i].returnID
                    });
                }
                swalConfirm("Are you sure you want to Dispose?", "", "info", function(){
                    swalLoading("Disposing Equipment");
                    var userdata = {
                        'Row': objRow,
                        "Cost": BackToNumbers($("#Cost").val()),
                        "Type": $("#Type").val(),
                        "Receipt": $("#Receipt").val(),
                        "Remarks": $("#Remarks").val()
                    };
                    ajaxCustom("Dispose/DisposedItem.php", userdata, function(data){
                        swalMessage("Disposed Equipment Successfully", "", "success", true);
                    }, true, true);
                });
            }else{
                swalMessage("Select the Equipment for Disposal first to Proceed Transaction.", "", "warning", false, function(){
                    swal.close();
                });
            }
        }
    });

    ajaxRules("Cost Type", "required InputTextBox", [true, true], evt);
    ajaxRules("Remarks Receipt", "InputTextBox", [true], evt);
});

$('#btnReset').on('click', function(e){
    e.preventDefault();
    var tableto = $('#tableListToDisposed').DataTable();
    var rowto = tableto.rows().data();

    var data = []
    if(rowto != undefined){
        for (var i = 0; i < rowto.length; i++) {
            data.push({
                Date: rowto[i].Date,
                SupplyCode: rowto[i].SupplyCode,
                Supply: rowto[i].Supply,
                Serial: rowto[i].Serial,
                Employee: rowto[i].Employee,
                Office: rowto[i].Office,
                ID: rowto[i].ID,
                returnID: rowto[i].returnID
            });
        }
    }

    var tablelist = $('#tableForDisposalItem').DataTable();
    var rowlist = tablelist.rows().data();

    if(rowlist != undefined){
        for (var i = 0; i < rowlist.length; i++) {
            data.push({
                Date: rowlist[i].Date,
                SupplyCode: rowlist[i].SupplyCode,
                Supply: rowlist[i].Supply,
                Serial: rowlist[i].Serial,
                Employee: rowlist[i].Employee,
                Office: rowlist[i].Office,
                ID: rowlist[i].ID,
                returnID: rowlist[i].returnID
            });
        }
    }
    JSTable(data, "#tableForDisposalItem", ["Date", "SupplyCode", "Supply", "Serial", "Employee", "Office"]);

    tableto.clear().draw();
});
$('#btnSelectAll').on('click', function(e){
    e.preventDefault();
    var tablelist = $('#tableForDisposalItem').DataTable();
    var rowlist = tablelist.rows().data();
    var data = []
    if(rowlist != undefined){
        for (var i = 0; i < rowlist.length; i++) {
            data.push({
                Date: rowlist[i].Date,
                SupplyCode: rowlist[i].SupplyCode,
                Supply: rowlist[i].Supply,
                Serial: rowlist[i].Serial,
                Employee: rowlist[i].Employee,
                Office: rowlist[i].Office,
                ID: rowlist[i].ID,
                returnID: rowlist[i].returnID
            });
        }
    }

    var tableto = $('#tableListToDisposed').DataTable();
    var rowto = tableto.rows().data();

    if(rowto != undefined){
        for (var i = 0; i < rowto.length; i++) {
            data.push({
                Date: rowto[i].Date,
                SupplyCode: rowto[i].SupplyCode,
                Supply: rowto[i].Supply,
                Serial: rowto[i].Serial,
                Employee: rowto[i].Employee,
                Office: rowto[i].Office,
                ID: rowto[i].ID,
                returnID: rowto[i].returnID
            });
        }
    }
    
    JSTable(data, "#tableListToDisposed", ["Date", "SupplyCode", "Supply", "Serial", "Employee", "Office"]);

    tablelist.clear().draw();
});
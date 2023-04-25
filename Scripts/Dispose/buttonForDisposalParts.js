$('#btnSave').on('click', function(evt){
    var formValidate = $("#divTable").validate({
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
                        Parts: row[i].Parts,
                        ID: row[i].ID,
                        descID: row[i].descID
                    });
                }
                swalConfirm("Are you sure you want to Dispose?", "", "info", function(){
                    swalLoading("Disposing Equipment");
                    var userdata = {
                        'Row': objRow,
                        "Cost": BackToNumbers($("#Cost").val()),
                        "Type": $("#Type").val(),
                        "Remarks": $("#Remarks").val(),
                        "Receipt": $("#Receipt").val(),
                        "ReceiptDate": $("#ReceiptDate").val(),
                        "Agency": $("#Agency").val()
                    };
                    ajaxCustom("Dispose/DisposedParts.php", userdata, function(data){
                        swalMessage("Disposed Parts Successfully", "", "success", true);
                    }, true, true);
                });
            }else{
                swalMessage("Select the Equipment for Disposal first to Proceed Transaction.", "", "warning", false, function(){
                    swal.close();
                });
            }
            formValidate.destroy();
        }
    });

    ajaxRules("Cost Type", "required InputTextBox", [true, true], evt);
    ajaxRules("Remarks Receipt Agency", "InputTextBox", [true], evt);
    if ($("#Receipt").val() != ""){
        ajaxRules("ReceiptDate", "required InputTextBox", [true, true], evt);
    }
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
                Parts: rowto[i].Parts,
                ID: rowto[i].ID,
                descID: rowto[i].descID
            });
        }
    }

    var tablelist = $('#tableForDisposalParts').DataTable();
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
                Parts: rowlist[i].Parts,
                ID: rowlist[i].ID,
                descID: rowlist[i].descID
            });
        }
    }
    JSTable(data, "#tableForDisposalParts", ["Date", "Supply", "Parts", "Serial", "Employee", "Office"]);

    tableto.clear().draw();
});
$('#btnSelectAll').on('click', function(e){
    e.preventDefault();
    var tablelist = $('#tableForDisposalParts').DataTable();
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
                Parts: rowlist[i].Parts,
                ID: rowlist[i].ID,
                descID: rowlist[i].descID
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
                Parts: rowto[i].Parts,
                ID: rowto[i].ID,
                descID: rowto[i].descID
            });
        }
    }
    
    JSTable(data, "#tableListToDisposed", ["Date", "Supply", "Parts", "Serial", "Employee", "Office"]);

    tablelist.clear().draw();
});
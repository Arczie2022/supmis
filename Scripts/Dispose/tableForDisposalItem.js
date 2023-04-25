$('#tableForDisposalItem').on('click', 'tbody tr', function(){
    var tablelist = $('#tableForDisposalItem').DataTable();
    var rowlist = tablelist.row(this).data();

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

    data.push({
        Date: rowlist.Date,
        SupplyCode: rowlist.SupplyCode,
        Supply: rowlist.Supply,
        Serial: rowlist.Serial,
        Employee: rowlist.Employee,
        Office: rowlist.Office,
        ID: rowlist.ID,
        returnID: rowlist.returnID
    });
    JSTable(data, "#tableListToDisposed", ["Date", "SupplyCode", "Supply", "Serial", "Employee", "Office"]);

    tablelist.row(this).remove().draw();
});

$('#tableListToDisposed').on('click', 'tbody tr', function(){
    var tableto = $('#tableListToDisposed').DataTable();
    var rowto = tableto.row(this).data();
    
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

    data.push({
        Date: rowto.Date,
        SupplyCode: rowto.SupplyCode,
        Supply: rowto.Supply,
        Serial: rowto.Serial,
        Employee: rowto.Employee,
        Office: rowto.Office,
        ID: rowto.ID,
        returnID: rowto.returnID
    });
    JSTable(data, "#tableForDisposalItem", ["Date", "SupplyCode", "Supply", "Serial", "Employee", "Office"]);


    tableto.row(this).remove().draw();
});


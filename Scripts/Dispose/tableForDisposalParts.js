$('#tableForDisposalParts').on('click', 'tbody tr', function(){
    var tablelist = $('#tableForDisposalParts').DataTable();
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
                descID: rowto[i].descID,
                Parts: rowto[i].Parts
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
        Parts: rowlist.Parts,
        ID: rowlist.ID,
        descID: rowlist.descID
    });
    JSTable(data, "#tableListToDisposed", ["Date", "Supply", "Parts", "Serial", "Employee", "Office"]);

    tablelist.row(this).remove().draw();
});

$('#tableListToDisposed').on('click', 'tbody tr', function(){
    var tableto = $('#tableListToDisposed').DataTable();
    var rowto = tableto.row(this).data();
    
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

    data.push({
        Date: rowto.Date,
        SupplyCode: rowto.SupplyCode,
        Supply: rowto.Supply,
        Serial: rowto.Serial,
        Employee: rowto.Employee,
        Office: rowto.Office,
        Parts: rowto.Parts,
        ID: rowto.ID,
        descID: rowto.descID
    });
    JSTable(data, "#tableForDisposalParts", ["Date", "Supply", "Parts", "Serial", "Employee", "Office"]);


    tableto.row(this).remove().draw();
});


$('#tblReIssue').on('click', 'tbody tr', function(){
    var table = $('#tblReIssue').DataTable();

    $('#FormSupplyInformation').css('display', 'none');

    var row = table.row(this).data();

    if(row != undefined){
        ChangeRowColor("tblReIssue", this);

        swalLoading("Retrieving the Supply Information");
        $('#ID').val(row.ID);
        $('#hiddenIssueCode').val(row.Code);
        $('#EquipmentCode').val(row.supplyCode);
        $('#IssuanceCode').val(row.Code);
        $('#Equipment').val(row.Supply);
        $('#Serial').val("");
        $('#Employee').val("");
        $('#Employee').empty();
        $('#Office').val("");
        var userdata = {
            'TYPE': $('#Type').val(),
            'ID': $('#ID').val()
        };
        ajaxCustom("Reissuance/GetListOfSerialKeyByIssuanceCode.php", userdata, function(data){
            $('#FormSupplyInformation').css('display', '');
            for (var i = 0; i < data.length; i++) {
                newDatalistOption("Serial", data[i].ID, data[i].Serial, data[i].ID, i, "none");
            }
            newDatalistOption("Employee", data[0].EmployeeID, data[0].Employee, data[0].EmployeeID, 0, "none");
            newDatalistOption("Office", data[0].OfficeID, data[0].Office, data[0].OfficeID, 0, "none");
            swal.close();
        });
    }
});
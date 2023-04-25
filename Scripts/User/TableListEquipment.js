$('#tblListMyEquipment').on('click', 'tbody tr', function(){
    var table = $('#tblListMyEquipment').DataTable();
    var row = table.row(this).data();


    if(row != undefined){
        ChangeRowColor("tblListMyEquipment", this);

        swalLoading("Retrieving Equipment Information");
        var userdata = {
            'ID': row.ID
        };
        ajaxCustom("User/GetSupplyInfoIssuedByID.php", userdata, function(data){
            $('#ID').val(row.ID);
            $('#Name').val(data[0].Supply);
            $('#Code').val(data[0].Code);
            $('#Life').val(data[0].Life);
            $('#IssuedDate').val(data[0].IssuedDate);
            $('#IssueType').val(row.Type);
            $('#IssueCode').val(data[0].Issuance);
            $('#Serial').val(data[0].Serial);
            $('#Property').val(data[0].Property);
            $('#Description').val(data[0].Remarks);
            $('#Price').val(formatMoney(data[0].Price));
            swal.close();
            $('#FormReturnEquipment').css('display', '');
        });
        
    }
});
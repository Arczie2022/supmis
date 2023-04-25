$('#tblListIssuance').on('click', 'tbody tr', function(){
    var table = $('#tblListIssuance').DataTable();

    $('#divBtn').css('display', 'none');
    $('#divIssuanceInfo').css('display', 'none');
    $('#divEquipmentInfo').css('display', 'none');
    $('#divSerial').css('display', 'none');

    var data = table.row(this).data();
    var ID = data.ID, type = $("#Type").val();

    if (data != undefined){

        ChangeRowColor("tblListIssuance", this);
            
        swalLoading("Retrieving Issuance Information");
        var userdata = {
            'ID': ID,
            'Type': type
        };
        ajaxCustom("Issued/GetIssuedInfoByID.php", userdata, function(data){
            var typeVal = type;
            typeVal = typeVal == 1 ? "RIS" : typeVal;
            typeVal = typeVal == 2 ? "ICS" : typeVal;
            typeVal = typeVal == 3 ? "PARE" : typeVal;
            $("#issueID").val(data[0].ID);
            $('#IssueType').val(typeVal);
            $('#IssueCode').val(data[0].Code);
            $('#DateIssued').val(data[0].Issued);
            $('#DateReissued').val(data[0].ReIssued);
            $('#PONo').val(data[0].PONo);
            $('#Supplier').val(data[0].Supplier);
            $('#Fund').val(data[0].Fund);
            $('#Purpose').val(data[0].Purpose);
            $('#divIssuanceInfo').css('display', '');
            $('#divBtn').css('display', '');
        });
        ajaxCustom("Issued/GetEquipmentByIssuedID.php", userdata, function(data){
            JSTable(data, "#tblEquipment", ["supplyName", "Quantity", "IssuedTo", "ReIssuedTo"]);
            swal.close();
        });
    }
});
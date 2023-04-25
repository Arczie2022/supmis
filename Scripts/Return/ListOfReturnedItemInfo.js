$('#tableListReturn').on('click', 'tbody tr', function(){
	var table = $('#tableListReturn').DataTable();
    var row = table.row(this).data();

    if(row != undefined){
        ChangeRowColor("tableListReturn", this);

        swalLoading("Retrieving Equipment Information");

        var userdata = {
            'ID': row.ID
        };
        ajaxCustom("Return/ListOfReturnedItemInfo.php", userdata, function(data){
            $('#ID').val(row.ID);
            $("#Remarks").val(row.Remarks);
            $('#DateReturned').val(data[0].returnDate);
            $('#DateIssued').val(data[0].issuedDate);
            $('#IssuanceType').val(row.Type);
            $('#IssuanceCode').val(data[0].issuedCode);
            $('#EquipmentCode').val(data[0].supplyCode);
            $('#EquipmentName').val(data[0].supplyName);
            $('#Property').val(data[0].reissueProperty);
            $('#Serial').val(data[0].reissueSerial);
            $('#EquipmentRemarks').val(data[0].issuedRemarks);
            $('#FormEquipmentInfo').css('display', '');
            swal.close();
        });
    }
});
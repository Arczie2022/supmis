$('#tblEquipment').on('click', 'tbody tr', function(){
    var table = $('#tblEquipment').DataTable();

    $('#divEquipmentInfo').css('display', 'none');
    $('#divSerial').css('display', 'none');
    
    var row = table.row(this).data();
    if (row != undefined){
        ChangeRowColor("tblEquipment", this);

        swalLoading("Retrieving the Supply Information");
        var userdata = {
            'ID': row.supplyID,
            'desc': row.descID
        };
        ajaxCustom("Issued/GetSupplyInformationByID.php", userdata, function(data){
            $('#EquipmentCode').val(data[0].Code);
            $('#Name').val(data[0].Name);
            $('#Property').val(data[0].Property);
            $('#Life').val(data[0].Life);
            $('#Chart').val(data[0].Chart);
            $('#divEquipmentInfo').css('display', '');
        });
        if($("#Type").val() == "2" || $("#Type").val() == "3"){
            var userdata = {
                'ID': $("#issueID").val(),
                'Type': $("#Type").val(),
                'Supply': row.supplyID,
                'desc': row.descID
            };
            ajaxCustom("Issued/GetSerialByEquipmentID.php", userdata, function(data){
                JSTable(data, "#tblSerial", ["Remarks", "Serial", "Property"], "ID");
                var table = $("#tblSerial").DataTable();
                var rowData = table.rows().data();
                for (var i = 0; i < rowData.length; i++) {
                    switch((rowData[i].Status).toString()){
                        case "0":
                            $("#"+rowData[i].ID).css("background-color", "white");

                        break;
                        case "1":
                            $("#"+rowData[i].ID).css("background-color", "#FDEE87");

                        break;
                        case "2":
                            $("#"+rowData[i].ID).css("background-color", "#FDEE87");

                        break;
                        case "3":
                            $("#"+rowData[i].ID).css("background-color", "#8cd3ff");

                        break;
                        case "4":
                            $("#"+rowData[i].ID).css("background-color", "#ec9488");

                        break;
                        case "5":
                            $("#"+rowData[i].ID).css("background-color", "#9ce62a");

                        break;
                    }
                }
                $('#divSerial').css('display', '');
                swal.close();
            });
        }else{
            swal.close();
        }
    }
});
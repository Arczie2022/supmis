$('#tblListRequestedSupply').on('click', 'tbody tr', function(){
    var table = $('#tblListRequestedSupply').DataTable();
    
    var row = table.row(this).data();

    if(row != undefined){
        $('#rowID').val(row.Code);

        ChangeRowColor("tblListRequestedSupply", this);

        swalLoading("Retrieving the Requested Supplies");
        var userdata = {
            'code': row.Code
        };
        ajaxCustom("Issuance/GetListOfSupplyByRISCode.php", userdata, function(data){
            JSTable(data, "#tblListRequestSupply", ["Quantity", "Unit", "Supply", "Desc", "Status", "Remarks"]);

            $('#requested').css('display', '');  
            $('#FormUpdateStatusSupply').css('display', 'none');    
            swal.close();
        });
    }
});
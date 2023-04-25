$('#tblListRequestedSupply').on('click', 'tbody tr', function(){
    var table = $('#tblListRequestedSupply').DataTable();
    var row = table.row(this).data();
    if(row != undefined){
        $('#rowID').val(row.Code);
        ChangeRowColor("tblListRequestedSupply", this);
        
        swalLoading("Retrieving the Supply Requested");

        var userdata = {
            'code': row.Code
        };
        ajaxCustom("Issuance/GetListOfSupplyForApprovalByRISCode.php", userdata, function(data){
           $('#ID').val(data[0].ID);
            $('#requested').css('display', '');  
            if(slevel == "2") $('#restrictToPres').css('display', 'none');  

            JSTable(data, "#tblListRequestSupply", ["Quantity", "Unit", "Supply", "Status", "Remarks"]);
            
            swal.close();
        });
    }
});
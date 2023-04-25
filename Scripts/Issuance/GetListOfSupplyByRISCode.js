$('#tblListRequestedSupply').on('click', 'tbody tr', function(){
    var table = $('#tblListRequestedSupply').DataTable();
    var row = table.row(this).data();
    
    if(row != undefined){
        $('#hiddenText').val(row[1]);
        ChangeRowColor("tblListRequestedSupply", this);

        swalLoading("Retrieving RIS Information");
        var userdata = {
            'code': row.Code
        };

        ajaxCustom("Issuance/GetListOfSupplyByRISCode.php", userdata, function(data){
            JSTable(data, "#tblListRequestSupply", ["Quantity", "Unit", "Supply", "Status", "Remarks"]);
            $('#hiddenText').val(row.Code);
            $('#requested').css('display', '');                          
            swal.close();
        });
    }
});
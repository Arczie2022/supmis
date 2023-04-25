$('#tblListSupply').on('click', 'tbody tr', function(){
    var table = $('#tblListSupply').DataTable();
    var rowID = table.row(this).data().ID;
    if(rowID != undefined){
        ChangeRowColor("tblListSupply", this);
        swalLoading("Retrieving Supply Information");
        var userdata = {
            'ID': rowID 
        };
        $('#FormSupplyInformation').css( "display", "" );
        ajaxCustom("Supply/GetSupplyInformationByID.php", userdata, function(data){
           $("#ID").val(data[0].ID);
           $("#Code").val(data[0].Code);
           $("#Name").val(data[0].Name);
           $("#Property").val(data[0].Property);
           $("#Type").val(data[0].Type);

            swal.close();
        });
       
    }
});
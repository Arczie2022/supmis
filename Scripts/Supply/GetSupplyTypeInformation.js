$('#tblListSupplyType').on('click', 'tbody tr', function(){
    var table = $('#tblListSupplyType').DataTable();
    var row = table.row(this).data();
    if(row != undefined){
        $("#FormUpdateType").css("display", "");
        ChangeRowColor("tblListSupplyType", this);
        swalLoading("Retrieving Type of Supply Information");
        
         $("#ID").val(row.ID);
         $("#Code").val(row.Code);
         $("#Name").val(row.Name);

          swal.close();
       
    }
});
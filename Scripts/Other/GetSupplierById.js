$("#tblListSupplier").on('click', 'tbody tr', function(){
    var table = $("#tblListSupplier").DataTable();
    var row = table.row(this).data();
    $("#FormUpdateSupplier").css("display", "none");
    if(row != undefined){
        ChangeRowColor("tblListSupplier", this);

        swalLoading("Retrieving Supplier Information");

        var userdata = {
            'ID': row.ID 
        };

        ajaxCustom("Other/GetSupplierById.php", userdata, function(data){
            $("#FormUpdateSupplier").css("display", "");

            $("#ID").val(data[0].ID);
            $("#Code").val(data[0].Code);
            $("#Name").val(data[0].Name);
            $("#Address").val(data[0].Address);
            $("#GEPS").val(data[0].GEPS);
            $("#DBP").val(data[0].DBP);
            $("#TIN").val(data[0].TIN);
            $("#Email").val(data[0].Email);
            $("#CPNo").val(data[0].CPNo);
            $("#TelNo").val(data[0].TelNo);
            $("#CPerson").val(data[0].Person);
            $("#Position").val(data[0].Position);
            $("#Status").val(data[0].Status);

            swal.close();
        });
    }
});
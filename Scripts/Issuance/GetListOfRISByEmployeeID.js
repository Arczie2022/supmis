$('#btnRDate').on('click', function(){
    var val = $('#RDate').val();
    swalLoading("Retrieving the List of RIS");
    if(!isNaN(parseInt(val)) && val.length == 4){
        var userdata = {
            'ID' : val 
        };
        ajaxCustom("Issuance/ListOfRISByEmployeeID.php", userdata, function(data){
            JSTable(data, "#tblListRequestedSupply", ["Date", "Code", "Status"]);
            swal.close();
        });
    }else{
        swalMessage("Invalid Year Format", "", "warning");
    }
});
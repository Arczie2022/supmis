$('#Type').on('change', function(){

    $('#FormSupplyInformation').css('display', 'none');
    swalLoading("Retrieving the List for Reissuances");

    $('#tblReIssue tbody tr').css("background-color", "white");
    $('#tblReIssue tbody tr').css("color", "black");
    $('#tblReIssue tbody tr').css("font-weight", "400");

    var table = $('#tblReIssue').DataTable();
    $( table.column( 0 ).header() ).text($('#Type').val() + ' Code' );
    table.clear().draw(); 
    $('#lblIssuanceCode').html($('#Type').val() + ' Code');
    var userdata = {};
    if ($('#Type').val() == "ICS"){
        ajaxCustom("Reissuance/ListForICSReIssuance.php", userdata, function(data){
            JSTable(data, "#tblReIssue", ["Code", "Supply", "Quantity"]);
            swal.close();
        });
    }else{
        ajaxCustom("Reissuance/ListForPAREReIssuance.php", userdata, function(data){
            JSTable(data, "#tblReIssue", ["Code", "Supply", "Quantity"]);
            swal.close();
        });
    }
});

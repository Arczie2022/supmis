$("#Campus").on("change", function(){
	swalLoading("Retrieving List of Stocks in the " + $("#Campus option:selected").text());

	var userdata = {
		'ID': $("#Campus").val()
	};
	ajaxCustom("Supply/GetStockByCampus.php", userdata, function(data){
		JSTable_WoRestrict(data, "#tblListSupply", ["Property", "Name", "Balance"]);
		swal.close();
	});
});
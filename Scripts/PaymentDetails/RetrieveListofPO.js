$(document).ready(function(){
	RetrieveListPO();
});
function RetrieveListPO(){
	swalLoading("Retrieving the List of Purchase Order");
	var userdata = {};
	ajaxCustom("PaymentDetails/RetrieveListofPO.php", userdata, function(data){
		for (var i = 0; i < data.length; i++) {
			data[i].Paid = formatMoney(data[i].Paid);
			data[i].Balance = formatMoney(data[i].Balance);
		}
		JSTable(data, "#tblListPO", ["Date", "Code", "Supplier", "Paid", "Balance"]);
		swal.close();
	}, false);
}
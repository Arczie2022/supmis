$('#tblListRequestSupply').on('click', 'tbody tr', function(){
	var table = $('#tblListRequestSupply').DataTable();
	var data = table.row(this).data();
	var dis = this;
	if(data != undefined){
		swalConfirm("", "<h5>Are you sure you want to Remove <span style = 'color:#203354'>" + data.Supply + "</span> in your List of Requested Supply?</h5>", "info", function(){
			table.rows(dis).remove().draw();
		});
	}
});
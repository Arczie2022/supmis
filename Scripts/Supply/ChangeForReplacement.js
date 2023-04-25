$(document).on("change", "._Replace", function() {
	var ID = this.id;
	var val = this.value;
	var no = ID.substr(7);
	if(val == 1) $("#Parts"+no).prop("disabled", "");
	else $("#Parts"+no).prop("disabled", "disabled");
});

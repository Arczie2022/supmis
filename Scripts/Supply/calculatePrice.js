$(document).on('keyup', "._Stock, ._Price", function(){
	var id = this.id;
	id = id.substring(5);

	var total = BackToNumbers($('#Price'+id).val()) * $('#Stock'+id).val();
	total = total.toString() == "NaN" ? "0" : total;
	total = formatMoney(total);
	$('#Total'+id).val(total);
});

$("#Stock, #Cost").on("change", function(){
	var total = $("#Stock").val() * BackToNumbers($("#Cost").val());
	total = total.toString() == "NaN" ? "0" : total;
	total = formatMoney(total);
	$('#Total').val(total);
});
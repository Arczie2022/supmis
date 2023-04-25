$("#DateApproved").on("change", function(){
	var dateObj = new Date($("#DateApproved").val());
	var month = dateObj.getUTCMonth() + 1;
	var year = dateObj.getUTCFullYear();
	month = month.toString().length == 1 ? "0" + month : month;
	var tempCode = "ICS-" + year + month + "-";
	$("#Code1").val(tempCode);
});
$("#Code2").on("change", function(){
	var tempCode = $("#Code2").val();
	var tempZero = "";
	for (var i = tempCode.length; i < 5; i++) {
		tempZero += "0";
	}
	$("#Code2").val(tempZero + tempCode);
});

$("#DateApproved, #Code2").on("change", function(){
	var dateObj = new Date($("#DateApproved").val());
	var month = dateObj.getUTCMonth() + 1; 
	month = isNaN(month) ? "" : month;
	var year = dateObj.getUTCFullYear();
	year = isNaN(year) ? "" : year;
	month = month.toString().length == 1 ? "0" + month + "-" : month;

	var tempCode = "RIS-ICS-" + year + month ;
	var code2 = $("#Code2").val();

	$("#RIS").val(tempCode + code2);
});

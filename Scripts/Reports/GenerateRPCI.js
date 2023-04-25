$("#btnAdd").on("click", function(evt){
	var startDate = convertDate($("#Start").val());
	var endDate = convertDate($("#End").val(), false);
	var formValidate = $("#FormRPCI").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			formValidate.destroy();
			if(startDate > endDate){
				swalMessage("The Start Period should not be higher in the End Period", "", "warning", false, function(){
					swal.close();
				});
			}else{
				window.open(GetURL("../../View/PrintedPage/RPCI.php", 
					["Fund", "Chart", "Start", "End", "FName", "TName", "SName", "EName", "Campus"], 
					[$("#Fund").val(), $("#Chart").val(), startDate, endDate, $("#Fund option:selected").text(), $("#Chart option:selected").text(), $("#Start").val(), $("#End").val(), $("#Campus").val()]), 
					"_blank");
			}
		}
	});
	ajaxRules("Fund Chart Campus", "required InputTextBox", [true, true], evt);
	ajaxRules("Start", "required InputTextBox", [true, true], evt);
	ajaxRules("End", "required InputTextBox", [true, true], evt);
});
function convertDate(varDate, IsStart = true){
	var Arr = varDate.split(" ");
	var newDate = new Date(Arr[0]  + Arr[1]);
    var month = newDate.getMonth() + 1;
    month = month.toString().length == 1 ? "0" + month : month;
    var year = newDate.getFullYear();
	var day = new Date(year, month, IsStart).getDate()
	day = IsStart ? "0" + day : day;
    return year + "-" + month + "-" + day;
}
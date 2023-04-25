$("#btnAdd").on("click", function(evt){
	VerifyCheck();
	$("#FormAddDetails").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			var bal = BackToNumbers($("#BalancePO").val()) - BackToNumbers($("#Total").val());
			console.log(bal);
			console.log(BackToNumbers($("#BalancePO").val()));
			console.log(BackToNumbers($("#Total").val()));
			if (bal < 0){
				swalMessage("", "<h4 style = 'text-align: justify; text-align-last: center;'>The Total Amount of Payment (<span style = 'color: maroon'>P "+$("#Total").val()
					+"</span>) should not exceed the Remaining Balance of the Purchase Order (<span style = 'color: maroon'>P "+$("#BalancePO").val()
					+"</span>).</h4>", "error", false, function(){
					swal.close();
				});
			}else{
				swalConfirm("Are you sure you want to Save the Payment Details (<span style = 'color: maroon'>"
					+$("#CheckNo").val()+"</span>)?", "", "info", function(){
						swalLoading("Saving Payment Details");

						var userdata = {
							'PONo': $("#PONo").val(),
							'DatePayment': $("#DatePayment").val(),
							'CheckNo': $("#CheckNo").val(),
							'TypePayment': $("#TypePayment").val(),
							'Amount': BackToNumbers($("#Amount").val()),
							'Tax': BackToNumbers($("#Tax").val()),
							'Liquidated': BackToNumbers($("#Liquidated").val())
						};
						ajaxCustom("PaymentDetails/AddPaymentDetails.php", userdata, function(data){
							swalAddAgain("Saved Successfully", "", function(){
								location.replace("../../View/PaymentDetails/Details_View.php");
							});
						});
				});
			}
		}
	});
	ajaxRules("PONo", "required number", [true, true], evt);
	ajaxRules("DatePayment", "required date", [true, true], evt);
	ajaxRules("CheckNo", "required InputTextBox duplicate", [true, true, true], evt);
	ajaxRules("TypePayment Amount Tax", "required InputTextBox", [true, true], evt);
	ajaxRules("Liquidated", "InputTextBox", [true], evt);
});
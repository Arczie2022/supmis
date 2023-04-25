$('#btnAdd').on('click', function(evt){
	$("input").css("color", "black");
	$("select").css("color", "black");
	$('#FormSupplyInformation').validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			swalConfirm("Are you sure you want to Add More Stocks?", "", "info", function(){
				swalLoading("Adding Stock");

				var objID = [], objStock = [], objPO = [], objDR = [], objPrice = [], objChart = [];
				var objFund = [], objSupplier = [], objPAP = [], objDesc = [], objPurpose = [];
				var objReceived = [], objReceipt = [], objUnit = [], objReplace = [];
				var objParts = [], objWarranty = [], objType = [];
				
				$('._ID').each( function () {
				    objID.push($(this).val());
				});

				$('._Stock').each( function () {
				    objStock.push($(this).val());
				});

				$('._Supplier').each( function () {
				    objSupplier.push($(this).val());
				});

				$('._Fund').each( function () {
				    objFund.push($(this).val());
				});

				$('._PAP').each( function () {
				    objPAP.push($(this).val());
				});

				$('._DR').each( function () {
				    objDR.push($(this).val());
				});

				$('._Warranty').each( function () {
				    objWarranty.push($(this).val());
				});

				$('._Type').each( function () {
				    objType.push($(this).val());
				});

				$('._Desc').each( function () {
					var tempDesc = $(this).val();
					tempDesc = tempDesc == "" ? "No Description" : tempDesc;
				    objDesc.push(tempDesc);
				});

				$('._Purpose').each( function () {
					var tempPurpose = $(this).val();
					tempPurpose = tempPurpose == "" ? "No Purpose" : tempPurpose;
				    objPurpose.push(tempPurpose);
				});

				$('._Chart').each( function () {
				    objChart.push($(this).val());
				});

				$('._PO').each( function () {
				    objPO.push($(this).val());
				});

				$('._Received').each( function () {
				    objReceived.push($(this).val());
				});

				$('._Receipt').each( function () {
				    objReceipt.push($(this).val());
				});

				$('._Price').each( function () {
				    objPrice.push($(this).val());
				});

				$('._Unit').each( function () {
				    objUnit.push($(this).val());
				});

				$('._Replace').each( function () {
				    objReplace.push($(this).val());
				});

				$('._Parts').each( function () {
				    objParts.push($(this).val());
				});

				var userdata = {
					'ID': objID,
					'Stock': objStock,
					'Supplier': objSupplier,
					'Fund': objFund,
					'PAP': objPAP,
					'Received': objReceived,
					'Receipt': objReceipt,
					'Price': objPrice,
					'Unit': objUnit,
					'Replace': objReplace,
					'DR': objDR,
					'Desc': objDesc,
					'Warranty': objWarranty,
					'Type': objType,
					'Chart': objChart,
					'Purpose': objPurpose,
					'Parts': objParts,
					'PO': objPO
				};
				ajaxCustom("Supply/AddMoreStock.php", userdata, function(data){
					swalMessage("Successfully Saved", "", "success", true);
				}, true, true);
			});
		}
	});
	var varStock = "", varFund = "", varPAP = "", varSupplier = "", varPO = "", varDR = "", varChart = "", 
	varPurpose = "", varPrice = "", varReceipt = "", varReceived = "", varUnit = "", varDesc = "", 
	varReplace = "", varParts = "", varWarranty = "", varType = "";

	$('._Fund').each( function () {
	    varFund += this.id + " "; 
	});
	varFund = varFund.slice('0', '-1');

	$('._Supplier').each( function () {
	    varSupplier += this.id + " "; 
	});
	varSupplier = varSupplier.slice('0', '-1');

	$('._PAP').each( function () {
	    varPAP += this.id + " "; 
	});
	varPAP = varPAP.slice('0', '-1');

	$('._Receipt').each( function () {
	    varReceipt += this.id + " "; 
	});
	varReceipt = varReceipt.slice('0', '-1');

	$('._Received').each( function () {
	    varReceived += this.id + " "; 
	});
	varReceived = varReceived.slice('0', '-1');

	$('._PO').each( function () {
	    varPO += this.id + " "; 
	});
	varPO = varPO.slice('0', '-1');

	$('._DR').each( function () {
	    varDR += this.id + " "; 
	});
	varDR = varDR.slice('0', '-1');

	$('._Warranty').each( function () {
	    varWarranty += this.id + " "; 
	});
	varWarranty = varWarranty.slice('0', '-1');

	$('._Type').each( function () {
	    varType += this.id + " "; 
	});
	varType = varType.slice('0', '-1');

	$('._Desc').each( function () {
	    varDesc += this.id + " "; 
	});
	varDesc = varDesc.slice('0', '-1');

	$('._Purpose').each( function () {
	    varPurpose += this.id + " "; 
	});
	varPurpose = varPurpose.slice('0', '-1');

	$('._Chart').each( function () {
	    varChart += this.id + " "; 
	});
	varChart = varChart.slice('0', '-1');

	$('._Stock').each( function () {
	    varStock += this.id + " "; 
	});
	varStock = varStock.slice('0', '-1');

	$('._Price').each( function () {
	    varPrice += this.id + " "; 
	});
	varPrice = varPrice.slice('0', '-1');

	$('._Unit').each( function () {
	    varUnit += this.id + " "; 
	});
	varUnit = varUnit.slice('0', '-1');

	$('._Replace').each( function () {
	    varReplace += this.id + " "; 
	});
	varReplace = varReplace.slice('0', '-1');
			
	$('._Parts').each( function () {
	    varParts += this.id + " "; 
	});
	varParts = varParts.slice('0', '-1');

	ajaxRules(varPO, "required InputTextBox", [true, true], evt);
	ajaxRules(varDR, "required InputTextBox", [true, true], evt);
	ajaxRules(varDesc, "InputTextBox", [true], evt);
	ajaxRules(varChart, "required InputTextBox", [true, true], evt);
	ajaxRules(varPurpose, "InputTextBox", [true], evt);
	ajaxRules(varStock, "required number min", [true, true, 1], evt);
	ajaxRules(varFund, "required number min", [true, true, 1], evt);
	ajaxRules(varSupplier, "required number min", [true, true, 1], evt);
	ajaxRules(varPAP, "number min", [true, 0], evt);
	ajaxRules(varReceipt, "required dateFormat", [true, true], evt);
	ajaxRules(varReceived, "required dateFormat", [true, true], evt);
	ajaxRules(varPrice, "required number min", [true, true, 1], evt);
	ajaxRules(varUnit, "required InputTextBox", [true, true], evt);
	ajaxRules(varReplace, "required InputTextBox", [true, true], evt);
	ajaxRules(varParts, "required InputTextBox", [true, true], evt);
	ajaxRules(varWarranty, "required InputTextBox", [true, true], evt);
	ajaxRules(varType, "required InputTextBox", [true, true], evt);
});
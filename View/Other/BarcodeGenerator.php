<?php
    $page_title = 'Bar Code Generator';
    require_once '../Shared/Master.php';
    function contentBody(){    
    	echo '<script src="../../Reference/JsBarcode.all.min.js"></script>';
    	PageHeader("Barcode Generator", "3","30px", "30px");
    	formAction("FormBarCode", "Generate", "GeneratingBarCode.php", "_target", "", function(){
    		TextBox("Barcode", "BarCode", "number", "5", "", "", "placeholder = 'Count of Bar Code to be Printed' min = '1' required");
    	}, "5");
	}
?>
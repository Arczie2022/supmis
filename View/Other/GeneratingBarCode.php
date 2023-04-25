<!DOCTYPE html>
<html>
<head>
    <title></title>
    <?php require_once '../../View/Shared/Initialization.php';?>
</head>
<body>
	<style type="text/css">
		img{ 
			width: 15.6in !important;
			height: 10.6in !important;
			margin-top: 55px;
		}
		.barcode{
			width: 100mm;
			height: 110mm;

		}
		.divBarcode{
			position: absolute;
			left: 11.4in;
		}
	</style>
	<?php 
		$px = 0;
		for ($i= 1; $i <= $_POST["BarCode"]*2; $i++) { 
			echo '<div class ="divBarcode" style = "top: '.$px.'px;"><svg class="barcode" id = "barcode'.$i.'"></svg></div>';
			if ($i % 2)
				echo '<img class = "inventory" src="../../Content/content_photos/inventory.jpg">';
			else
				echo '<img class = "property" src="../../Content/content_photos/property.png">';
				$px += 1081.5;
		}
	?>
</body>
<script src="https://cdn.jsdelivr.net/npm/jsbarcode@3.11.0/dist/JsBarcode.all.min.js"></script>
<script type="text/javascript">
	var arrBarCode = [];

	var userdata = {};
	
	ajaxCustom("Other/GetExistingBarCode.php", userdata, function(data){
        for (var i = 0; i < data.length; i++)
        	arrBarCode.push(data[i].Code);
	}, false);
	
	for(var i = 1; i <= <?php echo $_POST["BarCode"]*2; ?>; i+=2){
    	var no = Math.random().toString(5).substr(2, 12);
	    for (var loopCheck = 0; loopCheck < arrBarCode.length; loopCheck++) {
	    	if(no == arrBarCode[loopCheck]){
	    		loopCheck = 0;
	    		no = Math.random().toString(5).substr(2, 12);
	    	}
	    }
    	arrBarCode.push(no);

	    JsBarcode("#barcode"+i)
	      .options({font: "OCR-B"}) // Will affect all barcodes
	      .EAN13(no, {fontSize: 18, textMargin: 0})
	      .render();
	    JsBarcode("#barcode"+(i+1))
	      .options({font: "OCR-B"}) // Will affect all barcodes
	      .EAN13(no, {fontSize: 18, textMargin: 0})
	      .render();
	  }
	  var userdata = {'arr': arrBarCode};
	  $.ajax({
	      type: "POST", 
	      url: "../../Models/Other/AddNewBarCode.php", 
	      data:userdata, 
	      success: function(data){
	        var tempData = JSON.parse(data);
        	if(tempData[0].message == "success")
	  		{
	  			// window.print();
	  		}	
       		else{
       			alert("Can't Generate Bar Code\nPlease contact the Computer Programmer.\nThank You!");
	          	close();  
       		}
	      }
	  });
</script>
</html>
<table>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../Content/customizePrintPDF.css" />
    <style type="text/css" >
	</style>
    <?php require_once '../../View/Shared/Initialization.php';?>
</head>
<body>
<?php GenerateReportButton(true); ?>
<div class="bodyPaper" id = "bodyHere">
<?php require_once '../../Models/PrintedPage/PrintGeneratePPELC.php'; ?>
<table border="1" class="a4paper-landscape">
<?php 
    $i = 0;
    foreach ($arrayDetails as $item) { 
        if($i == 0){?>
			<thead>
		        <tr class="appendix labeltable">
		            <td colspan="11">Appendix 70&nbsp;<br/><br/></td>
		        </tr>
		        <tr class="centerTable labeltable paperHeader">
		            <td colspan="11">PROPERTY, PLANT AND EQUIPMENT LEDGER CARD<br/><br/><br/></td>
		        </tr>
		        <tr >
		            <td class="labeltable" colspan="3">Entity Name:</td>
		            <td class="blankTable borderBottom" colspan="4">Camarines Norte State College</td>
		            <td colspan="2"></td>
		            <td class="labeltable">Fund Cluster:</td>
		            <td class="blankTable borderBottom"><?php echo $item["FundName"]; ?></td>
		        </tr>
		        <tr >
		        	<td colspan="3" rowspan="2" class="labeltable">Property, Plant and Equipment:</td>
		        	<td colspan="6" rowspan="2" class="blankTable"><?php echo $item["chartName"]; ?></td>
		        	<td class="labeltable">Object Account Code:</td>
		        	<td class="blankTable borderBottom"><?php echo $item["chartCode"]; ?></td>
		        </tr>
		        <tr>
		        	<td class="labeltable">Estimated Useful Life:</td>
		        	<td class="blankTable borderBottom"><?php echo $item["chartLife"]; ?></td>
		        </tr>
		        <tr>
		        	<td colspan="3" class="labeltable">Description:</td>
		        	<td colspan="6" class="blankTable"><?php echo $item["supplyName"]; ?></td>
		        	<td class="labeltable">Rate of Depreciation:</td>
		        	<td class="blankTable borderBottom"><?php echo number_format($item["RateDepre"],2) . " %"; ?></td>
		        </tr>
		    </thead>
		    <tbody>
		    	<tr class="centerTable labeltable">
		            <td rowspan="2" style = 'min-width:100px'>Date</td>
		            <td rowspan="2" style = 'min-width:160'>Reference</td>
		            <td colspan="3" style = 'min-width:240px'>Receipt</td>
		            <td rowspan="2" style = 'min-width:130px'>Accumulated Depreciation</td>
		            <td rowspan="2" style = 'min-width:130px'>Accumulated Impairment Losses</td>
		            <td rowspan="2" style = 'min-width:130px'>Issues/ Transfer/ Adjustment/s</td>
		            <td rowspan="2" style = 'min-width:100px'>Adjusted Cost</td>
		            <td colspan="2" style = 'min-width:200px'>Repair History</td>
		    	</tr>
		    	<tr class="centerTable labeltable">
		            <td style = 'min-width:60px'>Qty.</td>
		            <td style = 'min-width:80px'>Unit Cost</td>
		            <td style = 'min-width:80px'>Total Cost</td>
		            <td style = 'min-width:140px'>Nature of Repair</td>
		            <td style = 'min-width:100px'>Amount</td>
		    	</tr>

<?php } 
    if ($item['rowspan'] != "0" && $item['rowspan'] != 0){?>
    	<tr style="height: fit-content;"  class="centerTable">
    		<td rowspan="<?php echo $item['rowspan']; ?>" style = 'min-width:100px'><?php echo $item["DRDate"]."<br>".$item["poDateReceipt"]."<br>".$item["issueDate"]; ?></td>
            <td rowspan="<?php echo $item['rowspan']; ?>" style = 'min-width:200px'><?php echo $item["DRCode"]."<br>".$item["poCode"]."<br>".$item["issueCode"]; ?></td>
            <td rowspan="<?php echo $item['rowspan']; ?>" style = 'min-width:60px'><?php echo $item["quantity"]; ?></td>
            <td rowspan="<?php echo $item['rowspan']; ?>" style = 'min-width:80px'><?php echo number_format($item["stockPrice"],2); ?></td>
            <td rowspan="<?php echo $item['rowspan']; ?>" style = 'min-width:80px'><?php echo number_format($item["total"],2); ?></td>
            <td rowspan="<?php echo $item['rowspan']; ?>" style = 'min-width:130px'><?php echo number_format($item["AccDepre"],2); ?></td>
            <td rowspan="<?php echo $item['rowspan']; ?>" style = 'min-width:130px' contenteditable><?php echo number_format($item[""],2) ?></td>
            <td rowspan="<?php echo $item['rowspan']; ?>" style = 'min-width:130px'><?php echo number_format($item["disposeCost"],2); ?></td>
            <td rowspan="<?php echo $item['rowspan']; ?>" style = 'min-width:100px'><?php echo number_format($item["adjustCost"],2); ?></td>
            <td style = 'min-width:140px'><?php echo $item["NatureRepair"]; ?></td>
            <td style = 'min-width:100px'><?php echo number_format($item["RepairCost"],2); ?></td>
        </tr>

    <?php 
        }else{
            echo "
            <tr style='height: fit-content;'  class='centerTable'>
                <td style = 'min-width:140px'>".$item["NatureRepair"]."</td>
                <td style = 'min-width:100px'>".number_format($item["RepairCost"],2)."</td>
            </tr>";
        }
    	if($i == ($countMe-1)){

    ?>

        <tr class = "lastTableBody">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>&nbsp;</td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </tbody>
    <?php }$i++;} ?>

</table>
</div>
</body>
</html>
<table>
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
<?php require_once '../../Models/PrintedPage/PrintGenerateSLC.php'; ?>
<table border="1" class="a4paper-landscape">
    <?php 
    $i = 0;
    foreach ($arraySLC as $item) { 
        if($i == 0){?>

	<thead>
        <tr class="appendix labeltable">
            <td colspan="12">Appendix 57&nbsp;<br/><br/></td>
        </tr>
        <tr class="centerTable labeltable paperHeader">
            <td colspan="12">SUPPLIES LEDGER CARD<br/><br/><br/></td>
        </tr>
        <tr>
            <td class="labeltable borderBottom" colspan="2">Entity Name:</td>
            <td class="labeltable borderBottom" colspan="6">Camarines Norte State College</td>
            <td class="labeltable borderBottom"  colspan="2">Fund Cluster:</td>
            <td class="labeltable borderBottom" colspan="6"><?php echo $item["Fund"]; ?></td>
        </tr>
        <tr>
            <td colspan="2" class="borderBottom">Item:</td>
            <td colspan="6" class="borderBottom"><?php echo $item["Supply"] ?></td>
            <td colspan="2" class="borderBottom">Item Code:</td>
            <td colspan="2" class="borderBottom"><?php echo $item["Property"] ?></td>
        </tr>
        <tr>
            <td colspan="2" class="borderBottom">Description:</td>
            <td colspan="6" class="borderBottom"><?php echo $item["Description"] ?></td>
            <td colspan="2" class="borderBottom">Re-order point:</td>
            <td colspan="2" class="borderBottom"></td>
        </tr>
        <tr>
            <td colspan="2" class="borderBottom">Unit of Measurement:</td>
            <td colspan="6" class="borderBottom"><?php echo $item["Unit"] ?></td>
            <td colspan="2" class="borderBottom"></td>
            <td colspan="2" class="borderBottom"></td>
        </tr>
    </thead>
    <tbody>
    	<tr class="centerTable labeltable">
            <td rowspan="2" style = 'max-width:145px;min-width:145px'>Date</td>
            <td rowspan="2" style = 'max-width:170px;min-width:170px'>Reference</td>
            <td colspan="3" style = 'max-width:255px;min-width:255px'>Receipt</td>
            <td colspan="3" style = 'max-width:255px;min-width:255px'>Issue</td>
            <td colspan="3" style = 'max-width:255px;min-width:255px'>Balance</td>
            <td rowspan="2" style = 'max-width:100px;min-width:100px'>No. of Days to Consume</td>
    	</tr>
    	<tr class="centerTable labeltable">
            <td style = 'max-width:85px;min-width:85px'>Qty.</td>
            <td style = 'max-width:85px;min-width:85px'>Unit Cost</td>
            <td style = 'max-width:85px;min-width:85px'>Total Cost</td>
            <td style = 'max-width:85px;min-width:85px'>Qty.</td>
            <td style = 'max-width:85px;min-width:85px'>Unit Cost</td>
            <td style = 'max-width:85px;min-width:85px'>Total Cost</td>
            <td style = 'max-width:85px;min-width:85px'>Qty.</td>
            <td style = 'max-width:85px;min-width:85px'>Unit Cost</td>
            <td style = 'max-width:85px;min-width:85px'>Total Cost</td>
    	</tr>

<?php } ?>

    	<tr style="height: fit-content;"  class="centerTable">
    		<td style = 'max-width:145px;min-width:145px'><?php echo $item["Date"]; ?></td>
            <td style = 'max-width:170px;min-width:170px'><?php echo $item["Reference"]; ?></td>
            <td style = 'max-width:85px;min-width:85px'><?php echo ($item["Type"] == "Receipt" ? $item["Quantity"] : ""); ?></td>
            <td style = 'max-width:85px;min-width:85px'><?php echo ($item["Type"] == "Receipt" ? $item["Price"] : ""); ?></td>
            <td style = 'max-width:85px;min-width:85px'><?php echo ($item["Type"] == "Receipt" ? $item["Total"] : ""); ?></td>
            <td style = 'max-width:85px;min-width:85px'><?php echo ($item["Type"] == "Issued" ? $item["Quantity"] : ""); ?></td>
            <td style = 'max-width:85px;min-width:85px'><?php echo ($item["Type"] == "Issued" ? $item["Price"] : ""); ?></td>
            <td style = 'max-width:85px;min-width:85px'><?php echo ($item["Type"] == "Issued" ? $item["Total"] : ""); ?></td>
            <td style = 'max-width:85px;min-width:85px'><?php echo ($item["Type"] == "Balance" ? $item["Quantity"] : $item["QuantityBal"]); ?></td>
            <td style = 'max-width:85px;min-width:85px'><?php echo ($item["Type"] == "Balance" ? $item["Price"] : $item["PriceBal"]); ?></td>
            <td style = 'max-width:85px;min-width:85px'><?php echo ($item["Type"] == "Balance" ? $item["Total"] : $item["TotalBal"]); ?></td>
            <td style = 'max-width:85px;min-width:85px'></td>
        </tr>

    <?php 
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
            <td></td>
        </tr>
    </tbody>
    <?php }$i++;} ?>
</table>
</div>
</body>
</html>
<table>
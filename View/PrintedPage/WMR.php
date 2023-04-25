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
<?php GenerateReportButton(); ?>
<div class="bodyPaper" id = "bodyHere">
<?php require_once '../../Models/PrintedPage/PrintGenerateWMR.php'; ?>
<table border="1" class="a4paper">
    <?php 
    session_start();
    $i = 0;
    foreach ($arrayWMR as $item) { 
        if($i == 0){?>
    <thead>
        <tr class="appendix labeltable">
            <td colspan="8">Appendix 65&nbsp;<br/><br/></td>
        </tr>
        <tr class="centerTable labeltable paperHeader">
            <td colspan="8">WASTE MATERIALS REPORT<br/><br/><br/></td>
        </tr>
        <tr>
            <td class="labeltable borderBottom">Entity Name:</td>
            <td class="labeltable borderBottom" colspan="4">Camarines Norte State College</td>
            <td class="labeltable borderBottom">Fund Cluster:</td>
            <td class="labeltable borderBottom" colspan="2"><?php echo $fundName; ?></td>
        </tr>
        <tr>
            <td class="borderBottom">Place of Storage:</td>
            <td class="borderBottom">Bodega/Stock Room</td>
            <td colspan="3" class="borderBottom"></td>
            <td class="borderBottom">Date</td>
            <td colspan="2" class="borderBottom"><?php echo date("M d, Y"); ?></td>
        </tr>
        <tr class="paperHeader">
            <td colspan="8" class="borderBottom">ITEMS FOR DISPOSAL</td>
        </tr>
    </thead>
    <tbody>
        <tr class="centerTable labeltable">
            <td rowspan="3" style = 'max-width:100px;min-width:100px'>Item</td>
            <td rowspan="3" style = 'max-width:150px;min-width:150px'>Quantity</td>
            <td rowspan="3" style = 'max-width:150px;min-width:150px'>Unit</td>
            <td rowspan="3" colspan="2" style = 'max-width:300px;min-width:300px'>Description</td>
            <td colspan="3" style = 'max-width:450px;min-width:450px'>Records of Sales</td>
        </tr>
        <tr class="centerTable labeltable" style="font-weight: 500">
            <td colspan="3" style = 'max-width:450px;min-width:450px'>Official Receipt</td>
        </tr>
        <tr class="centerTable labeltable" style="font-weight: 500">
            <td style = 'max-width:150px;min-width:150px'>No.</td>
            <td style = 'max-width:150px;min-width:150px'>Date</td>
            <td style = 'max-width:150px;min-width:150px'>Amount</td>
        </tr>

<?php } ?>

        <tr style="height: fit-content;"  class="centerTable">
            <td style = 'max-width:100px;min-width:100px'><?php echo $i+1; ?></td>
            <td style = 'max-width:150px;min-width:150px'><?php echo $item["Quantity"]; ?></td>
            <td style = 'max-width:150px;min-width:150px'><?php echo $item["Unit"]; ?></td>
            <td colspan="2" style = 'max-width:300px;min-width:300px'><?php echo $item["Description"]; ?></td>
            <td style = 'max-width:150px;min-width:150px'><?php echo $item["Receipt"]; ?></td>
            <td style = 'max-width:150px;min-width:150px'><?php echo $item["ReceiptDate"]; ?></td>
            <td style = 'max-width:150px;min-width:150px'><?php echo $item["Cost"]; ?></td>
        </tr>

    <?php 
        if($i == ($countMe-1)){
    ?>

        <tr class = "lastTableBody">
            <td></td>
            <td></td>
            <td></td>
            <td colspan="2"></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td colspan="2"></td>
            <td></td>
            <td></td>
            <td>&nbsp;</td>
        </tr>
    </tbody>
    <tfoot style="border-top: 2px solid black;">
        <tr class = "labeltable allBorder">
            <td></td>
            <td></td>
            <td></td>
            <td colspan="2" style="text-align: center;">TOTAL</td>
            <td></td>
            <td></td>
            <td style="text-align: right; font-weight: 500; padding-right: 10px"><?php echo $total; ?></td>
        </tr>
        <tr >
            <td colspan="4">Certified Correct:</td>
            <td colspan="4">Disapproval Approved:</td>
        </tr>
        <tr class="centerTable">
            <td></td>
            <td colspan="2">&nbsp;</td>
            <td></td>
            <td></td>
            <td colspan="2">&nbsp;</td>
            <td></td>
        </tr>
        <tr class="centerTable">
            <td></td>
            <td colspan="2" ><?php echo $_SESSION["SUPMIS"]["supmis_name"]; ?></td>
            <td></td>
            <td></td>
            <td colspan="2" ><?php echo $president; ?></td>
            <td></td>
        </tr>
        <tr class="centerTable">
            <td></td>
            <td colspan="2" style="border-top: 2px solid black;">Signature over Printed Name of Supply</td>
            <td></td>
            <td></td>
            <td colspan="2" style="border-top: 2px solid black;">Signature over Printed Name of Head of</td>
            <td></td>
        </tr>
        <tr class="centerTable">
            <td></td>
            <td colspan="2">and/or Property Custodian</td>
            <td></td>
            <td></td>
            <td colspan="2">Agency/Entity or his/her Authorized</td>
            <td></td>
        </tr>
        <tr class="centerTable">
            <td></td>
            <td colspan="2"></td>
            <td></td>
            <td></td>
            <td colspan="2">Representative</td>
            <td></td>
        </tr>
        <tr class="centerTable labeltable allBorder">
            <td colspan="8">CERTIFICATE OF INSPECTION</td>
        </tr>
        <tr>
        	<td colspan="8">&nbsp;</td>
        </tr>
        <tr>
            <td></td>
        	<td colspan="7" style="padding-left: 30px">I hereby certify that the property enumerated above was disposed of as follows:</td>
        </tr>
        <tr>
        	<td colspan="2" style="text-align: right">Item</td>
        	<td class="borderBottom" style = "text-align:center"><?php echo $Destruction; ?></td>
        	<td colspan="5">Destroyed</td>
        </tr>
        <tr>
        	<td colspan="2" style="text-align: right">Item</td>
        	<td class="borderBottom" style = "text-align:center"><?php echo $Sale; ?></td>
        	<td colspan="5">Sold at private sale</td>
        </tr>
        <tr>
        	<td colspan="2" style="text-align: right">Item</td>
        	<td class="borderBottom" style = "text-align:center"><?php echo $Auction; ?></td>
        	<td colspan="5">Sold at public auction</td>
        </tr>
        <tr>
        	<td colspan="2" style="text-align: right">Item</td>
        	<td class="borderBottom" style = "text-align:center"><?php echo $Transfer; ?></td>
        	<td><div class="input-group">
                <div>Transferred without to</div>
                <div class="borderBottom" style="width: 50%; text-align:center"><?php echo $item["Agency"]; ?></div>
            </div></td>
        	<td colspan="4"></td>
        </tr>
        <tr>
            <td colspan="5">&nbsp;</td>
            <td colspan="3" class="centerTable"></td>
        </tr>
        <tr>
        	<td colspan="4" style="border-top: 2px solid black;">Certified C</td>
        	<td colspan="4" style="border-top: 2px solid black; border-left: 2px solid black;">Witness to D</td>
        </tr>
        <tr>
        	<td></td>
        	<td colspan="2">&nbsp;</td>
        	<td></td>
        	<td style="border-left: 2px solid black;"></td>
        	<td colspan="2"></td>
        	<td></td>
        </tr>
        <tr class="centerTable">
        	<td>&nbsp;</td>
        	<td colspan="2" contenteditable></td>
        	<td></td>
        	<td style="border-left: 2px solid black;"></td>
        	<td colspan="2" contenteditable></td>
        	<td></td>
        </tr>
        <tr class="centerTable">
        	<td></td>
        	<td colspan="2" style="border-top: 2px solid black;">Signature over Printed Name of</td>
        	<td></td>
        	<td style="border-left: 2px solid black;"></td>
        	<td colspan="2"><div class="borderTop2" style="width: 80%; margin-left: 10%">Signature over Printed name of</div></td>
        	<td></td>
        </tr>
        <tr class="centerTable">
        	<td></td>
        	<td colspan="2">Inspection Officer</td>
        	<td></td>
        	<td style="border-left: 2px solid black;"></td>
        	<td colspan="2">Witness</td>
        	<td></td>
        </tr>
        <tr>
        	<td></td>
        	<td colspan="2"></td>
        	<td></td>
        	<td></td>
        	<td colspan="2"></td>
        	<td></td>
        </tr>

    </tfoot>

    <?php }$i++;} ?>

</table>
</div>
</body>
</html>
<table>
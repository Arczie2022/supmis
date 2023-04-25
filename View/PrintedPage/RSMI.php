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
<?php GenerateReportButton(false); ?>
<div class="bodyPaper" id = "bodyHere">
<?php require_once '../../Models/PrintedPage/PrintGenerateRSMI.php'; ?>
<table border="1" class="a4paper">
	<?php 
        $i = 0;
        foreach ($arrayRSMI as $item) { 
            if($i == 0){?>
    <thead>
        <tr class="appendix labeltable">
            <td colspan="8">Appendix 64&nbsp;<br/><br/></td>
        </tr>
        <tr class="centerTable labeltable paperHeader">
            <td colspan="8">REPORT OF SUPPLIES AND MATERIALS ISSUED<br/><br/><br/></td>
        </tr>
        <tr>
            <td class="labeltable borderBottom">Entity Name:</td>
            <td class="labeltable borderBottom" colspan="5">Camarines Norte State College</td>
            <td class="labeltable borderBottom">Serial Number:</td>
            <td class="labeltable borderBottom" contenteditable>Lorem Ipsum</td>
        </tr>
        <tr style="border-bottom: 2px solid black;">
            <td class="labeltable borderBottom">Fund Cluster:</td>
            <td class="labeltable borderBottom" colspan="5"><?php echo $item["Fund"]; ?></td>
            <td class="labeltable borderBottom">Date:</td>
            <td class="labeltable borderBottom"><?php echo date("M d, Y"); ?></td>
        </tr>
    </thead>
    <tbody>
        <tr class="centerTable labeltable" style="font-weight: 500; font-style: italic; border-bottom: 2px solid black;">
            <td colspan="6" style = 'max-width:760px;min-width:760px'>To be filled up by the Supply and/or Property Division/Unit</td>
            <td colspan="2" style = 'max-width:320px;min-width:320px'>To be filled up by the Accounting Division/Unit</td>
        </tr>
        <tr class="centerTable labeltable">
            <td style = 'max-width:200px;min-width:200px'>RIS No.</td>
            <td style = 'max-width:90px;min-width:90px'>Responsibility Center Code</td>
            <td style = 'max-width:150px;min-width:150px'>Stock No.</td>
            <td style = 'max-width:160px;min-width:160px'>Item</td>
            <td style = 'max-width:100px;min-width:100px'>Unit</td>
            <td style = 'max-width:100px;min-width:100px'>Quantity Issued</td>
            <td style = 'max-width:160px;min-width:160px'>Unit Cost</td>
            <td style = 'max-width:160px;min-width:160px'>Amount</td>
        </tr>
        <?php } ?>

        <tr style="height: fit-content;"  class="centerTable">
            <td style = 'max-width:200px;min-width:200px'><?php echo $item["IssueCode"]; ?></td>
            <td style = 'max-width:90px;min-width:90px'></td>
            <td style = 'max-width:150px;min-width:150px'><?php echo $item["Property"]; ?></td>
            <td style = 'max-width:160px;min-width:160px'><?php echo $item["Supply"]; ?></td>
            <td style = 'max-width:100px;min-width:100px'><?php echo $item["Unit"]; ?></td>
            <td style = 'max-width:100px;min-width:100px'><?php echo $item["Quantity"]; ?></td>
            <td style = 'max-width:160px;min-width:160px'><?php echo $item["Price"]; ?></td>
            <td style = 'max-width:160px;min-width:160px'><?php echo $item["Total"]; ?></td>
        </tr>
    <?php if($i == ($countMe-1)){?>
        <tr class = "lastTableBody labeltable">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr  class="centerTable labeltable">
            <td></td>
            <td colspan="2" class="allBorder">Recapitulation</td>
            <td></td>
            <td></td>
            <td colspan="3" class="allBorder">Recapitulation</td>
        </tr>
        <tr  class="centerTable labeltable">
            <td></td>
            <td class="allBorder">Stock No.</td>
            <td class="allBorder">Quantity</td>
            <td></td>
            <td></td>
            <td class="allBorder">Unit Cost</td>
            <td class="allBorder">Total Cost</td>
            <td class="allBorder">UACS Object Code</td>
        </tr>
    <?php
    	for ($recapLoop=0; $recapLoop < $countLoop; $recapLoop++) { 
    	
    ?>
        <tr  class="centerTable labeltable">
            <td></td>
            <td style="border-left: 2px solid black;border-right: 2px solid black;"><?php echo $arrayTry[$recapLoop]["Property"]; ?></td>
            <td style="border-left: 2px solid black;border-right: 2px solid black;"><?php echo $arrayTry[$recapLoop]["Quantity"]; ?></td>
            <td></td>
            <td></td>
            <td style="border-left: 2px solid black;border-right: 2px solid black;"><?php echo $arrayTry[$recapLoop]["Price"]; ?></td>
            <td style="border-left: 2px solid black;border-right: 2px solid black;"><?php echo $arrayTry[$recapLoop]["Total"]; ?></td>
            <td style="border-left: 2px solid black;border-right: 2px solid black;"><?php echo $arrayTry[$recapLoop]["Chart"]; ?></td>
        </tr>
    <?php
    	}
    ?>
        <tr>
            <td></td>
            <td style="border-top: 2px solid black;"></td>
            <td style="border-top: 2px solid black;"></td>
            <td></td>
            <td></td>
            <td style="border-top: 2px solid black;"></td>
            <td style="border-top: 2px solid black;"></td>
            <td style="border-top: 2px solid black;">&nbsp;</td>
        </tr>
    </tbody>
    <tfoot style="border-top: 2px solid black;">
        <tr >
            <td colspan="5" style="border-right: 2px solid black"></td>
            <td colspan="3">Posted by: </td>
        </tr>
        <tr>
            <td colspan="5" style="padding-left: 30px; border-right: 2px solid black">I hereby certify to the correctness of the above information.</td>
            <td colspan="3"></td>
        </tr>
        <tr>
            <td colspan="5" style="border-right: 2px solid black">&nbsp;</td>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr class="centerTable " style="text-align: -webkit-center;">
            <td colspan="5" style="font-weight: 600; font-style: underline; text-decoration: underline;  border-right: 2px solid black;">EVANGELINE L. SARION</td>
            <td colspan="2">
            	<div style="border-bottom: solid 1px black; width: 240px; margin-top: 20px;"></div>
            </td>
            <td style="text-decoration: underline;">
            	<div style="border-bottom: solid 1px black; width: 100px; margin-top: 20px;"></div>
            </td>
        </tr>
        <tr class="centerTable ">
            <td colspan="5" style="vertical-align: top;  border-right: 2px solid black;">Signature over Printed Name of Supply and/or Property Custodian</td>
            <td colspan="2">Signature over Printed Name of <br/> Designated Accounting Staff</td>
            <td style="vertical-align: top">Date</td>
        </tr>
        <tr>
            <td colspan="5" style="border-right: 2px solid black;">&nbsp;</td>
            <td colspan="3" class="centerTable"></td>
        </tr>
    </tfoot>
   <?php }$i++;} ?>
</table>
</div>
</body>
</html>
<table>
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
<?php require_once '../../Models/PrintedPage/PrintGeneratePR.php'; ?>
<table border="1" class="a4paper">
	<?php 
        $i = 0;
        foreach ($arrayPR as $item) { 
            if($i == 0){?>
    <thead>
        <tr class="appendix labeltable">
            <td colspan="6">Appendix 60&nbsp;<br/><br/></td>
        </tr>
        <tr class="centerTable labeltable paperHeader">
            <td colspan="6">PURCHASE REQUEST<br/><br/><br/></td>
        </tr>
        <tr>
            <td class="labeltable borderBottom">Entity Name:</td>
            <td class="labeltable borderBottom" colspan="2">Camarines Norte State College</td>
            <td class="labeltable borderBottom" style="text-align: right">Fund Cluster:</td>
            <td class="labeltable borderBottom" colspan="2" contenteditable></td>
        </tr>
        <tr class="labeltable">
            <td class="borderTop2">Office/Section:</td>
            <td class="borderTop2 borderRight2"></td>
            <td class="borderTop2">PR No:</td>
            <td class="borderTop2 borderRight2" contenteditable></td>
            <td class="borderTop2">Date:</td>
            <td class="borderTop2 borderRight2"><?php echo $DateRequest; ?></td>
        </tr>
        <tr class="labeltable">
            <td class="borderBottom2 borderRight2 centerTable" colspan="2"><?php echo $item["Office"]; ?></td>
            <td class="borderBottom2">Responsibility Center Code:</td>
            <td class="borderBottom2 borderRight2"></td>
            <td class="borderBottom2"></td>
            <td class="borderBottom2 borderRight2"></td>
        </tr>
    </thead>
    <tbody>
        <tr class="centerTable labeltable borderBottom2">
            <td style = 'max-width:160px;min-width:160px'>Stock/Property No.</td>
            <td style = 'max-width:120px;min-width:120px'>Unit</td>
            <td style = 'max-width:400px;min-width:400px'>Item Description</td>
            <td style = 'max-width:180px;min-width:180px'>Quantity</td>
            <td style = 'max-width:100px;min-width:100px'>Unit Cost</td>
            <td style = 'max-width:180px;min-width:180px'>Total Cost</td>
        </tr>
        <?php } ?>

        <tr style="height: fit-content; color: <?php echo $item["Status"] == "1" ? "Green" : ($item["Status"] == "2" ? "red" : "black"); ?>"  class="centerTable" s>
            <td style = 'max-width:160px;min-width:160px'><?php echo $item["Property"]; ?></td>
            <td style = 'max-width:150px;min-width:150px'><?php echo $item["Unit"]; ?></td>
            <td style = 'max-width:400px;min-width:400px'><?php echo $item["Supply"]; ?></td>
            <td style = 'max-width:180px;min-width:180px'><?php echo $item["Quantity"]; ?></td>
            <td style = 'max-width:100px;min-width:100px'><?php echo $item["Cost"]; ?></td>
            <td style = 'max-width:180px;min-width:180px'><?php echo $item["Total"]; ?></td>
        </tr>

    <?php if($i == ($countMe-1)){?>
        <tr class = "lastTableBody">
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
            <td>&nbsp;</td>
            <td></td>
            <td></td>
        </tr>
    </tbody>
    <tfoot>
        <tr class="labeltable borderTop2">
            <td class="borderRight2 borderBottom2" rowspan="3">Purpose</td>
            <td colspan="5" contenteditable></td>
        </tr>
        <tr class="borderBottom">
        	<td colspan="5" contenteditable>&nbsp;</td>
        </tr>
        <tr class="borderBottom2">
        	<td colspan="5" contenteditable>&nbsp;</td>
        </tr>
        <tr class="labeltable">
            <td></td>
            <td></td>
            <td>Requested by: </td>
            <td></td>
            <td colspan = "2">Approved by:</td>
        </tr>
        <tr>
            <td>Signature</td>
            <td></td>
            <td class="borderBottom"></td>
            <td></td>
            <td class="borderBottom" colspan = "2"></td>
        </tr>
        <tr>
            <td>Printed Name</td>
            <td></td>
            <td class="centerTable labeltable"><?php echo $item["Employee"]; ?></td>
            <td></td>
            <td class="centerTable labeltable" colspan = "2"><?php echo $item["Officer"]; ?></td>
        </tr>
        <tr>
            <td>Designation</td>
            <td></td>
            <td class="centerTable"><?php echo $item["EmployeePosition"]; ?></td>
            <td></td>
            <td class="centerTable" colspan = "2"><?php echo $item["OfficerPosition"]; ?></td>
        </tr>
        
   </tfoot>
   <?php }$i++;} ?>
</table>
</div>
</body>
</html>
<table>
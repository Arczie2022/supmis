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
<?php require_once '../../Models/PrintedPage/PrintGeneratePropertyCard.php'; ?>
<table border="1" class="a4paper" style="font-family: Calibri !important">
    <?php 
        $i = 0;
        foreach ($arrayProperty as $item) { 
            if($i == 0){?>
    <thead>
        <tr style="font-size: 13px;">
            <td colspan="8">Accounting form No. 82&nbsp;<br/></td>
        </tr>
        <tr style="font-size: 13px;">
            <td colspan="4">Revised Sept. '02<br/></td>
            <td colspan="4" style="text-align: right;">Appendix 69&nbsp;<br/></td>
        </tr>
        <tr class="centerTable labeltable paperHeader">
            <td colspan="8" style="font-size: 20px">PROPERTY CARD</td>
        </tr>
        <tr class="centerTable labeltable">
            <td colspan="8" style="font-weight: 500; text-decoration: underline; font-size: 16px;">CAMARINES NORTE STATE COLLEGE</td>
        </tr>
        <tr class="centerTable labeltable ">
            <td colspan="8"  style="font-weight: 500; font-size: 16px;" class="borderBottom">Agency</td>
        </tr>
        <tr>
            <td colspan="5" class="borderRight">Property Plant and Equipment:</td>
            <td colspan="3">Property Number:</td>
        </tr>
        <tr class="centerTable">
            <td colspan="5" class="borderBottom borderRight" style="font-weight: 700; font-size: 18px;"><?php echo $item["Supply"]; ?></td>
            <td rowspan="2" colspan="3" class="borderBottom" style="font-size: 18px; font-weight: 600;"><?php echo $item["Property"]; ?></td>
        </tr>
        <tr class="centerTable">
            <td colspan="5" class="borderBottom" contenteditable></td>
        </tr>
    </thead>
    <tbody>
        <tr class="centerTable labeltable">
            <td rowspan="2" style = 'max-width:160px;min-width:160px'>Date</td>
            <td rowspan="2" style = 'max-width:200px;min-width:200px'>Reference</td>
            <td rowspan="2" style = 'max-width:100px;min-width:100px'>Receipt Qty</td>
            <td colspan="4" style = 'max-width:600px;min-width:600px'>Transfer/Disposal</td>
            <td rowspan="2" style = 'max-width:130px;min-width:130px'>Balance Qty</td>
        </tr>
        <tr class="centerTable labeltable">
            <td style = 'max-width:100px;min-width:100px'>Qty</td>
            <td colspan="3" style = 'max-width:500px;min-width:500px'>Office/Officer</td>
        </tr>
        <?php } ?>

        <tr style="height: fit-content;"  class="centerTable">
            <td style = 'max-width:160px;min-width:160px'><?php echo "Issue: ".$item["issueDate"]."<br/>Reissue: ".$item["reissueDate"]; ?></td>
            <td style = 'max-width:200px;min-width:200px'><?php echo $item["IssueCode"]."<br/>".$item["reissueProperty"]."<br/> S/N: ".$item["Serial"]; ?></td>
            <td style = 'max-width:100px;min-width:100px'><?php echo $item["quantity"]; ?></td>
            <td style = 'max-width:100px;min-width:100px'><?php echo $item["quantity"]; ?></td>
            <td style = 'max-width:150px;min-width:150px'><?php echo $item["Office"]; ?></td>
            <td style = 'max-width:200px;min-width:200px'><?php echo $item["Employee"]; ?></td>
            <td style = 'max-width:150px;min-width:150px'><?php echo $item["Price"]; ?></td>
            <td style = 'max-width:130px;min-width:130px'></td>
        </tr>
<?php if($i == ($countMe-1)){?>
        <tr class = "lastTableBody">
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
        </tr>
    </tbody>
  <?php }$i++;} ?>
</table>
</div>
</body>
</html>
<table>
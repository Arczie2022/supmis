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
<?php require_once '../../Models/PrintedPage/PrintGenerateStockCard.php'; ?>
<table border="1" class="a4paper">
    <?php 
    $i = 0;
    foreach ($arrayStockCard as $item) { 
        if($i == 0){?>
    <thead>
        <tr class="appendix labeltable">
            <td colspan="7">Appendix 58&nbsp;<br/><br/></td>
        </tr>
        <tr class="centerTable labeltable paperHeader">
            <td colspan="7">STOCK CARD<br/><br/><br/></td>
        </tr>
        <tr  class="labeltable borderBottom2">
            <td>Entity Name:</td>
            <td colspan="4">Camarines Norte State College</td>
            <td>Fund Cluster:</td>
            <td><?php echo $item["Fund"]; ?></td>
        </tr>
        <tr>
            <td class=" borderBottom">Item:</td>
            <td class=" borderBottom" colspan="4"><?php echo $item["Supply"]; ?></td>
            <td class=" borderBottom">Stock No:</td>
            <td class=" borderBottom"><?php echo $item["StockNo"]; ?></td>
        </tr>
        <tr>
            <td class=" borderBottom">Description:</td>
            <td class=" borderBottom" colspan="4"><?php echo $item["Description"]; ?></td>
            <td class=" borderBottom">Re-order Point:</td>
            <td class=" borderBottom"></td>
        </tr>
        <tr class="borderBottom2">
            <td>Unit of Measurement:</td>
            <td colspan="4"><?php echo $item["Unit"]; ?></td>
            <td></td>
            <td></td>
        </tr>
    </thead>
    <tbody>
        <tr class="centerTable labeltable">
            <td rowspan="2" style = 'max-width:120px;min-width:120px'>Date</td>
            <td rowspan="2" style = 'max-width:250px;min-width:250px'>Reference</td>
            <td style = 'max-width:120px;min-width:120px'>Receipt</td>
            <td colspan="2" style = 'max-width:380px;min-width:380px'>Issue</td>
            <td style = 'max-width:120px;min-width:120px'>Balance</td>
            <td rowspan="2" style = 'max-width:180px;min-width:180px'>No. of Days to Consume</td>
        </tr>
        <tr class="centerTable labeltable">
            <td style = 'max-width:120px;min-width:120px'>Qty.</td>
            <td style = 'max-width:120px;min-width:120px'>Qty.</td>
            <td style = 'max-width:260px;min-width:260px'>Office</td>
            <td style = 'max-width:120px;min-width:120px'>Qty.</td>
        </tr>
<?php } ?>
        <tr style="height: fit-content;"  class="centerTable">
            <td style = 'max-width:120px;min-width:120px'><?php echo $item["Date"]; ?></td>
            <td style = 'max-width:250px;min-width:250px'><?php echo $item["Reference"]; ?></td>
            <td style = 'max-width:120px;min-width:120px'><?php echo $item["Receipt"]; ?></td>
            <td style = 'max-width:120px;min-width:120px'><?php echo $item["Issue"]; ?></td>
            <td style = 'max-width:260px;min-width:260px'><?php echo $item["Office"]; ?></td>
            <td style = 'max-width:120px;min-width:120px'><?php echo $item["Balance"]; ?></td>
            <td style = 'max-width:180px;min-width:180px'></td>
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
        </tr>
        <tr>
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
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../Content/customizePrintPDF.css" />
    <?php require_once '../../View/Shared/Initialization.php';?>
</head>
<body>
<?php GenerateReportButton(false); ?>
<div class="bodyPaper" id = "bodyHere">
<?php require_once '../../Models/PrintedPage/PrintGenerateICS.php'; ?>
<table border="1" class="a4paper" >
      <?php 
            $i = 0;
            foreach ($arrayICSPDF as $item) { 
                if($i == 0){?>
        <thead>
            <tr class="appendix labeltable">
                <td colspan="7">Appendix 59 &nbsp;<br/><br/></td>
            </tr>
            <tr class="centerTable labeltable paperHeader">
                <td colspan="7">INVENTORY CUSTODIAN SLIP<br/><br/><br/><br/></td>
            </tr>
            <tr>
                <td class="labeltable" colspan="2">Entity Name:</td>
                <td colspan="2" class="blankTable">Camarines Norte State College</td>
                <td colspan="3"></td>
            </tr>
            <tr >
                <td class="labeltable" colspan="2">Fund Cluster : </td>
                <td colspan="2" class="blankTable"><?php echo $item["Fund"]; ?></td>
                <td class="labeltable" style="text-align: right" colspan="2">ICS No.:</td>
                <td class="centerTable blankTable" ><?php echo $item["Code"]; ?></td>
            </tr>
        </thead>
    <tbody>
        <tr class="centerTable labeltable">
            <td rowspan="2" style = 'max-width:70px;min-width:70px'>Quantity</td>
            <td rowspan="2" style = 'max-width:60px;min-width:60px'>Unit</td>
            <td colspan="2" style = 'max-width:250px;min-width:250px'>Amount</td>
            <td rowspan="2" style = 'max-width:420px;min-width:420px'>Description</td>
            <td rowspan="2" style = 'max-width:100px;min-width:100px'>Inventory Item No.</td>
            <td rowspan="2" style = 'max-width:100px;min-width:100px'>Estimated Useful Life</td>
        </tr>
        <tr class="centerTable labeltable">
            <td>Unit Cost</td>
            <td>Total Cost</td>
        </tr>
        <?php } ?>
        <tr style="height: fit-content;"  class="centerTable">
            <td>1</td>
            <td><?php echo $item["Unit"]; ?></td>
            <td><?php echo number_format($item["Price"], 3); ?></td>
            <td><?php echo number_format($item["Price"], 3); ?></td>
            <td><?php echo $item["Supply"]; ?></td>
            <td><?php echo $item["Property"]; ?></td>
            <td><?php echo $item["Life"]; ?></td>
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
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                &nbsp;&nbsp;<?php echo $item["Supplier"]; ?><br/>
                &nbsp;&nbsp;<?php echo $item["Fund"]; ?><br/>
                &nbsp;&nbsp;<?php echo $item["PONo"]; ?>
                <br/><br/><br/><br/></td>
            <td></td>
            <td></td>
        </tr>
    </tbody>
        <tfoot>
        <tr class="labeltable">
            <td colspan="4">Received from: </td>
            <td colspan="3">Received by: </td>
        </tr>
        <tr class="centerTable ">
            <td colspan="4"><?php echo $item["officerName"]; ?></td>
            <td colspan="3"><?php echo $item["employeeName"]; ?></td>
        </tr>
        <tr class="centerTable labeltable">
            <td colspan="4">Signature Over Printed Name</td>
            <td colspan="3">Signature Over Printed Name</td>
        </tr>
        <tr class="centerTable ">
            <td colspan="4"><?php echo $item["officerPosition"]; ?></td>
            <td colspan="3"><?php echo $item["employeePosition"]; ?></td>
        </tr>
        <tr class="centerTable labeltable">
            <td colspan="4">Position/Office</td>
            <td colspan="3">Position/Office</td>
        </tr>
        <tr>
            <td colspan="4"><?php echo $item["DateRequest"]; ?></td>
            <td colspan="3" class="centerTable"></td>
        </tr>
        <tr class="centerTable labeltable">
            <td colspan="4">Date</td>
            <td colspan="3">Date</td>
        </tr>
    </tfoot>
   <?php }$i++;} ?>
</table>
</div>
</body>
</html>
<table>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../Content/customizePrintPDF.css" />
    <?php require_once '../../View/Shared/Initialization.php';?>
</head>
<body>
<?php GenerateReportButton(false); ?>
<div class="bodyPaper"  id = "bodyHere">
<?php require_once '../../Models/PrintedPage/PrintGenerateRIS.php'; ?>
<table class = "a4paper" border="1">
      <?php 
            $i = 0;
            foreach ($arrayRISPDF as $item) { 
                if($i == 0){?>
                    <thead>
                        <tr class="appendix labeltable">
                            <td colspan="8">Appendix 63&nbsp;<br/><br/></td>
                        </tr>
                        <tr class="centerTable labeltable paperHeader">
                            <td colspan="8">REQUISITION AND ISSUE SLIP<br/><br/><br/><br/></td>
                        </tr>
                        <tr >
                            <td class="labeltable">Entity Name: </td>
                            <td colspan="2" class="blankTable">Camarines Norte State College</td>
                            <td class="labeltable" style="text-align: right" colspan="4">Fund Cluster:</td>
                            <td class="centerTable blankTable" ><?php echo $item["Fund"]; ?></td>
                        </tr>
                        <tr >
                            <td class="labeltable">Division: </td>
                            <td colspan="2" class="blankTable"><?php echo $item["Campus"]; ?></td>
                            <td class="labeltable" style="text-align: right" colspan="4">Responsibility Center Code:</td>
                            <td class="centerTable blankTable" ><?php echo ""; ?></td>
                        </tr>
                        <tr >
                            <td class="labeltable">Office: </td>
                            <td colspan="2"><?php echo  $item["employeeOffice"]; ?></td>
                            <td class="labeltable" style="text-align: right" colspan="4">RIS No.:</td>
                            <td class="centerTable" ><?php echo  $item["Code"]; ?></td>
                        </tr>
                    </thead>
    <tbody>
        <tr class="labeltable centerTable">
            <td colspan = "4">Requisition</td>
            <td colspan = "2">Stock Available?</td>
            <td colspan = "2">Issue</td>
        </tr>
        <tr class="labeltable centerTable">
            <td style = 'max-width: 70px; min-width: 70px'>Stock No.</td>
            <td style = 'max-width: 40px; min-width: 40px'>Unit</td>
            <td style = 'max-width: 200px; min-width: 200px'>Description</td>
            <td style = 'max-width: 60px; min-width: 60px'>Quantity</td>
            <td style = 'max-width: 40px; min-width: 40px'>Yes</td>
            <td style = 'max-width: 40px; min-width: 40px'>No</td>
            <td style = 'max-width: 50px; min-width: 60px'>Quantity</td>
            <td style = 'max-width: 100px; min-width: 100px'>Remarks</td>
        </tr>
        <?php } ?>

        <tr style="height: fit-content;"  class="centerTable">
            <td style = 'max-width: 70px; min-width: 70px'><?php echo $item["Property"]; ?></td>
            <td style = 'max-width: 40px; min-width: 40px'><?php echo $item["Unit"]; ?></td>
            <td style = 'max-width: 200px; min-width: 200px'><?php echo $item["Supply"]; ?></td>
            <td style = 'max-width: 60px; min-width: 60px'><?php echo $item["Quantity"]; ?></td>
            <td style = 'max-width: 40px; min-width: 40px'><?php echo ($item["Available"] <= 0 ? "" : "&#10004;"); ?></td>
            <td style = 'max-width: 40px; min-width: 40px'><?php echo ($item["Status"] == "Requesting" ? "" : ($item["Available"] <= 0 ? "&#10004;" : "")); ?></td>
            <td style = 'max-width: 50px; min-width: 60px'><?php echo ($item["Status"] == "Requesting" ? "" : $item["Available"]); ?></td>
            <td style = 'max-width: 100px; min-width: 100px'><?php echo $item["Remarks"]; ?></td>
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
            <td></td>
        </tr>
    </tbody>
    <tfoot>
        <tr class="labeltable tblmerge">
            <td>Purpose</td>
            <td colspan="7" class="tblmerge"></td>
        </tr>
        <tr class="labeltable">
            <td colspan = "2"></td>
            <td>Requested by: </td>
            <td colspan = "2">Approved by:</td>
            <td colspan = "2">Issued by:</td>
            <td>Received by:</td>
        </tr>
        <tr>
            <td colspan = "2">Signature:</td>
            <td class="centerTable"></td>
            <td colspan = "2" class="centerTable"></td>
            <td colspan = "2" class="centerTable"></td>
            <td class="centerTable"></td>
        </tr>
        <tr>
            <td colspan = "2">Printed Name:</td>
            <td class="centerTable"><?php echo $item["employeeName"]; ?></td>
            <td colspan = "2" class="centerTable">Evangeline L. Sarion</td>
            <td colspan = "2" class="centerTable"><?php echo $item["officerName"]; ?></td>
            <td class="centerTable"><?php echo $item["employeeName"]; ?></td>
        </tr>
        <tr>
            <td colspan = "2">Designation:</td>
            <td class="centerTable"><?php echo $item["employeePosition"]; ?></td>
            <td colspan = "2" class="centerTable">ADMINISTRATIVE OFFICER V</td>
            <td colspan = "2" class="centerTable"><?php echo $item["officerPosition"]; ?></td>
            <td class="centerTable"><?php echo $item["employeePosition"]; ?></td>
        </tr>
        <tr>
            <td colspan = "2">Date:</td>
            <td class="centerTable"><?php echo $item["DateRequest"]; ?></td>
            <td colspan = "2" class="centerTable"></td>
            <td colspan = "2" class="centerTable"></td>
            <td class="centerTable"></td>
        </tr>
   </tfoot>
   <?php }$i++;} ?>
</table>
</div>
</body>
</html>
<table>
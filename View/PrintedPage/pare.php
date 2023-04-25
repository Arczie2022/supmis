<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../Content/customizePrintPDF.css" />
    <?php require_once '../../View/Shared/Initialization.php';?>
</head>
<body>
    <?php GenerateReportButton(); ?>
    <div class="bodyPaper" id = "bodyHere" >
    <?php require_once '../../Models/PrintedPage/PrintGeneratePARE.php'; ?>
    <table class="a4paper" border="1">
        <?php 
            $i = 0;
            foreach ($arrayPAREPDF as $item) { 
                if($i == 0){?>
                    <thead>
                        <tr class="appendix labeltable">
                            <td colspan="6">Appendix 71&nbsp;<br/><br/></td>
                        </tr>
                        <tr class="centerTable labeltable paperHeader">
                            <td colspan="6">PROPERTY ACKNOWLEDGMENT RECEIPT<br/><br/><br/><br/></td>
                        </tr>
                        <tr >
                            <td class="labeltable" colspan="2">Entity Name:</td>
                            <td class="blankTable">Camarines Norte State College</td>
                            <td ></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr >
                            <td class="labeltable" colspan="2">Fund Cluster : </td>
                            <td class="blankTable"><?php echo $item["Fund"]; ?></td>
                            <td class="labeltable" style="text-align: right">PAR No.:</td>
                            <td class="centerTable blankTable" ><?php echo $item["Code"]; ?></td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="centerTable labeltable">
                            <td style = 'max-width:60px;min-width:60px'>Quantity</td>
                            <td style = 'max-width:50px;min-width:50px'>Unit</td>
                            <td style = 'max-width:312px;min-width:312px'>Description</td>
                            <td style = 'max-width:110px;min-width:110px'>Property Number</td>
                            <td style = 'max-width:110px;min-width:110px'>Date Acquired</td>
                            <td style = 'max-width:130px;min-width:130px'>Amount</td>
                        </tr>
        <?php } ?>

            <tr style="height: fit-content;"  class="centerTable">
                <td style = 'max-width:60px;min-width:60px'>1</td>
                <td style = 'max-width:50px;min-width:50px'><?php echo $item["Unit"]; ?></td>
                <td style = 'max-width:312px;min-width:312px'><?php echo $item["Supply"]; ?></td>
                <td style = 'max-width:110px;min-width:110px'><?php echo $item["Property"]; ?></td>
                <td style = 'max-width:110px;min-width:110px'><?php echo $item["DateAcquire"]; ?></td>
                <td style = 'max-width:130px;min-width:130px'><?php echo number_format($item["Price"]); ?></td>
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
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>
                    &nbsp;&nbsp;<?php echo $item["Supplier"]; ?><br/>
                    &nbsp;&nbsp;<?php echo $item["Fund"]; ?><br/>
                    &nbsp;&nbsp;<?php echo $item["PONo"]; ?>
                    <br/><br/><br/><br/>
                </td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </tbody>
        
        <tfoot>
            <tr class="labeltable">
                <td colspan="3">Received by: </td>
                <td colspan="3">Issued by: </td>
            </tr>
            <tr class="centerTable">
                <td colspan="3"><br/><br/><?php echo $item["employeeName"]; ?></td>
                <td colspan="3"><br/><br/><?php echo $item["officerName"]; ?></td>
            </tr>
            <tr class="centerTable labeltable">
                <td colspan="3"> Signatue over Printed Name of End User</td>
                <td colspan="3"> Signatue over Printed Name of Supply and/or<br> Property Custodian</td>
            </tr>
            <tr class="dataTableText centerTable">
                <td colspan="3"><?php echo $item["employeePosition"]; ?></td>
                <td colspan="3"><?php echo $item["officerPosition"]; ?></td>
            </tr>
            <tr class="centerTable labeltable">
                <td colspan="3">Position/Office</td>
                <td colspan="3">Position/Office</td>
            </tr>
            <tr class="dataTableText centerTable">
                <td colspan="3"></td>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr class="centerTable labeltable">
                <td colspan="3">Date</td>
                <td colspan="3">Date</td>
            </tr>
        </tfoot>
        <?php }$i++;} ?>
    </table>
</div>


</body>

</html>
<table>
<?php 
    require_once '../../Models/Main/NavBar.php'; 
    require_once '../../Models/Main/CountNotif.php'; 
    session_start();
?>
<nav class="navbar sticky-top navbar-expand-lg navbar-light bg-maroon p-0">
    <button class="navbar-toggler btn btn-maroon mr-2" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fa fa-bars" style="color:white; font-size: 30px !important"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <?php
                ItemMenu("View/Home/HomePage.php", "Home", "0,1,2,3,4,5,6,7,8,9,10,");
                MainMenu("Supply/PPE", "0,1,2,3,4,5,6,7,8,9,10,", function(){
                    ItemMenu("View/Supply/List_of_Item.php","List of Items", "0,1,2,3,4,5,6,7,8,9,10,");
                    ItemMenu("View/Supply/Adding_New_Item.php","Add New Item", "1,3,5,");
                    SubMenu("Available Stocks", "1,2,3,4,5,6,7,8,9,10,", function(){
                        ItemMenu("View/Supply/Available_Stock.php","Main Campus", "1,2,3,4,5,6,7,8,9,10,", "Alt + F2");
                        ItemMenu("View/Supply/Available_Stock_OCampus.php","Other Campus", "1,2,3,4,5,6,7,8,9,10,");
                    });
                    SubMenu("Types of Supplies", "1,3,", function(){
                        ItemMenu("View/Supply/Supply_Type.php", "View Items", "1,3,");
                        ItemMenu("View/Supply/Supply_Type_Add.php", "Add a New Item", "1,3,");
                    });
                    SubMenu("Building Assets", "1,2,3,6,", function(){
                        ItemMenu("View/Supply/Components.php", "View Building per Components", "1,2,3,6,");
                        ItemMenu("View/Supply/MajorRepairBuilding.php", "Building/Structure for Repair", "1,2,3,6,"); 
                    });
                    ItemMenu("View/Supply/Supply_Type.php", "Type of Supply", "0,2,4,5,6,");
                });
                ItemMenu("View/User/My_Equipment.php","My Equipment","7,8,9,10,", "Alt + F1");
                MainMenu("Purchase Orders", "1,2,3,4,6,", function(){
                    ItemMenu("View/PaymentDetails/List_of_PO_Number.php","List of Equipment", "1,2,3,4,", "Alt + F6");
                    ItemMenu("View/PaymentDetails/Details_View.php", "Payment Details", "1,2,6,");
                    ItemMenu("View/PaymentDetails/Details_Add.php", "Add New Payment Details", "1,6,", "Alt + A");
                });
                MainMenu("Reconciliation of Records", "1,2,3,6,", function(){
                    ItemMenu("View/Reconciliation/UpdatedChartAcc.php", "Chart of Accounts (Records)", "1,2,3,6,");
                    ItemMenu("View/Reconciliation/UpdatedFundAcc.php", "Fund Clusters (Records)", "1,2,3,6,");
                    ItemMenu("View/Issued/List_of_PO_Details.php","Purchase Order Information","1,6,", "Alt + O");
                });
                MainMenu("Ledger Card", "1,6,", function(){
                    ItemMenu("View/LedgerCard/PPE.php", "Property, Plant and Equipment", "1,6,", "Alt + 1"); 
                    ItemMenu("View/LedgerCard/SLC.php", "Supplies", "1,6,", "Alt + 2"); 
                });
                // MainMenu("Encoding", "0,1,3,4,", function(){
                //     SubMenu("Old RIS", "1,3,4,", function(){
                //         ItemMenu("View/Encoding/EncodingRIS.php","New Records", "1,3,4,", "Alt + Q");
                //         ItemMenu("View/Encoding/EditingRIS.php","Edit Record", "1,3,4,");
                //     });
                //     SubMenu("Old ICS", "1,3,4,", function(){
                //         ItemMenu("View/Encoding/EncodingICS.php","New Records", "1,3,4,", "Alt + T");
                //         ItemMenu("View/Encoding/EditingICS.php","Edit Record", "1,3,4,");
                //     });
                //     SubMenu("Old PARE", "1,3,4,", function(){
                //         ItemMenu("View/Encoding/EncodingPARE.php","New Records", "1,3,4,", "Alt + U");
                //         ItemMenu("View/Encoding/EditingPARE.php","Edit Record", "1,3,4,");
                //     });
                // });
                MainMenu("Encoding", "0,1,3,4,", function(){
                    ItemMenu("View/Encoding/EncodingRIS.php","Old RIS", "1,3,4,", "Alt + Q");
                    ItemMenu("View/Encoding/EncodingICS.php","Old ICS", "1,3,4,", "Alt + T");
                    ItemMenu("View/Encoding/EncodingPARE.php","Old PARE", "1,3,4,", "Alt + U");
                });
                MainMenu("Issuance", "1,2,3,4,5,6,8,10,", function(){
                    ItemMenu("View/Issuance/Requesting_Supply.php","Requesting Supply", "8,10,", "Alt + F10");
                    ItemMenu("View/Issuance/Requesting_Equipment.php","Requesting Equipment", "8,10,", "Alt + F11");
                    ItemMenu("View/Issuance/Requesting_Purchase.php","Requesting for Purchase", "8,10,", "Alt + F12");
                    ItemMenu("View/Issuance/List_of_Purchase_Request.php","List of Purchase Request","8,10,");
                    ItemMenu("View/Issuance/List_of_Requested_Supply.php","List of Requested Supply", "8,10,");
                    ItemMenu("View/Issuance/List_of_RIS.php","Pending Requests", "1,5,", "Alt + V", $GLOBALS["arrayNotif"]["pending_request_ris"]);
                    ItemMenu("View/Issuance/RIS_Campus.php","Issuance of RIS", "1,4,", "", $GLOBALS["arrayNotif"]["pending_request_ris_campus"]);
                    ItemMenu("View/Issuance/For_Approval_of_RIS.php","For Approval of RIS", "1,3,", "Alt + A", $GLOBALS["arrayNotif"]["approval_ris"]);
                    ItemMenu("View/Issuance/Issuance_of_ICS_PARE.php","ICS/PARE Issuances", "1,3,", "Alt + I", $GLOBALS["arrayNotif"]["issuance_ics_par"]);
                    ItemMenu("View/Reissuance/Reissuance_of_Supply_and_Equipment.php","Reissuance","1,3,4,", "Alt + R", $GLOBALS["arrayNotif"]["reissue"]);
                    SubMenu("Purchase Request", "1,2,3,", function(){
                        ItemMenu("View/Issued/List_of_PR_Approval.php", "For Approval", "1,2,3,", "Alt + P", $GLOBALS["arrayNotif"]["purchase_request"]);
                        ItemMenu("View/Issued/List_of_PR_Records.php", "List of PR Records", "1,2,3,");
                    }, $GLOBALS["arrayNotif"]["purchase_request"]);
                    ItemMenu("View/Issued/List_of_Issued_Supply.php","Issued Items/Equipment","1,2,3,4,5,6,");
                }, $GLOBALS["arrayNotif"]["pending_request_ris"] || $GLOBALS["arrayNotif"]["approval_ris"] || $GLOBALS["arrayNotif"]["issuance_ics_par"] || $GLOBALS["arrayNotif"]["reissue"] || $GLOBALS["arrayNotif"]["purchase_request"] || $GLOBALS["arrayNotif"]["pending_request_ris_campus"]);
                MainMenu("Return/Dispose", "1,2,3,4,", function(){
                    SubMenu("Return Equipment", "1,3,4,", function(){
                        ItemMenu("View/Return/Return_Item.php","List of Returned Items (Dept)", "1,3,4,", "Alt + C", $GLOBALS["arrayNotif"]["return_dept"]);
                        ItemMenu("View/Return/List_of_Returned_Item.php","List of Returned Items (SPMO)", "1,3,", "Alt + S", $GLOBALS["arrayNotif"]["return_SPMO"]);
                        ItemMenu("View/Return/History_of_Returned_Item.php", "List of All Returned Items (Records)", "1,3,4,");
                    }, $GLOBALS["arrayNotif"]["return_dept"] || $GLOBALS["arrayNotif"]["return_SPMO"]);
                    SubMenu("Repair Equipment", "1,3,4", function(){
                        ItemMenu("View/Return/List_of_Repair_Item.php","List of Items for Repair", "1,3,4,", "Alt + W", $GLOBALS["arrayNotif"]["repair"]);
                        ItemMenu("View/Return/List_of_Repaired_Equipment.php","Records of Repaired Equipment", "1,3,4,");
                    }, $GLOBALS["arrayNotif"]["repair"]);
                    SubMenu("Warehouse", "1,3,4,", function(){
                        ItemMenu("View/Warehouse/Warehouse.php","View", "1,3,4,");
                        ItemMenu("View/Warehouse/Warehouse_Add.php","Add New Item", "1,3,");
                        ItemMenu("View/Warehouse/Warehouse_Stock.php","Stock Equipment", "1,3,4,", "Alt + F3", $GLOBALS["arrayNotif"]["warehouse_stock"]);
                    }, $GLOBALS["arrayNotif"]["warehouse_stock"]);
                    SubMenu("Items for Disposal", "1,2,3,", function(){
                        ItemMenu("View/Dispose/List_of_Disposal_Parts.php","List of Parts to be Disposed", "1,2,3,", "Alt + D", $GLOBALS["arrayNotif"]["dispose_parts"]);
                        ItemMenu("View/Dispose/List_of_Disposal_Item.php","List of Equipment to be Disposed", "1,2,3,", "Alt + E", $GLOBALS["arrayNotif"]["dispose_item"]);
                        ItemMenu("View/Dispose/List_of_Disposed_Item.php","List of Disposed Equipment", "1,2,3,");
                    }, $GLOBALS["arrayNotif"]["dispose_parts"] || $GLOBALS["arrayNotif"]["dispose_item"]);
                }, $GLOBALS["arrayNotif"]["return_dept"] || $GLOBALS["arrayNotif"]["return_SPMO"] || $GLOBALS["arrayNotif"]["repair"] || $GLOBALS["arrayNotif"]["warehouse_stock"] || $GLOBALS["arrayNotif"]["dispose_parts"] || $GLOBALS["arrayNotif"]["dispose_item"]);
                MainMenu("Others", "0,1,2,3,4,5,6,7,8,9,10,", function(){
                    SubMenu("Chart of Accounts", "1,6,", function(){
                        ItemMenu("View/Other/Chart_of_Accounts.php","View", "1,6,");
                        ItemMenu("View/Other/Chart_of_Accounts_Add.php","Add New Item", "1,6,");
                    });
                    SubMenu("Fund Clusters", "1,6,", function(){
                        ItemMenu("View/Other/Fund_Cluster.php","View", "1,6,");
                        ItemMenu("View/Other/Fund_Cluster_Add.php","Add New Item", "1,6,");
                    });
                    SubMenu("MFO/PAP", "1,6,", function(){
                        ItemMenu("View/Other/PAP.php","View", "1,6,");
                        ItemMenu("View/Other/PAP_Add.php","Add New Item", "1,6,");
                    });
                    SubMenu("Suppliers' Database", "1,3,", function(){
                        ItemMenu("View/Other/Supplier.php","View", "1,3,");
                        ItemMenu("View/Other/Supplier_Add.php","Add New Item", "1,3,");
                    });
                    SubMenu("Offices", "1,3,", function(){
                        ItemMenu("View/Other/Office_View.php","View", "1,3,");
                        ItemMenu("View/Other/Office_Add.php","Add New Item", "1,3,");
                    });
                    SubMenu("Employees", "1,3,", function(){
                        ItemMenu("View/Other/Employee_view.php","View", "1,3,");
                        ItemMenu("View/Other/Employee_add.php","Add New Item", "1,3,");
                        ItemMenu("View/Other/Reset_Password.php","Reset Password", "1,3,", "Alt + F7");
                        ItemMenu("View/Other/OfficeEmployee.php","Update Office", "1,3,");
                    });
                    SubMenu("Supply Officers", "1,3,", function(){
                        ItemMenu("View/Other/Supply_Officer.php","View", "1,3,");
                        ItemMenu("View/Other/Supply_Officer_Add.php","Change User Role", "1,3,");
                        ItemMenu("View/Other/Supply_Officer_Record.php","Records", "1,3,");
                    });
                    ItemMenu("View/Other/Chart_of_Accounts.php","Chart of Accounts", "2,3,5,9,8,10,");
                    ItemMenu("View/Other/Fund_Cluster.php","Fund Clusters", "2,3,5,9,8,10,");
                    ItemMenu("View/Other/PAP.php","MFO/PAP", "2,3,5,8,9,10,");
                    ItemMenu("View/Other/Supplier.php","Supplier", "0,2,4,5,6,8,9,10,");
                    ItemMenu("View/Warehouse/Warehouse.php","Warehouse", "2,5,6,7,8,9,10,");
                    ItemMenu("View/Other/Office_View.php","Offices", "2,5,6,8,9,10,");
                    ItemMenu("View/Other/Employee_view.php","Employees", "0,2,4,5,6,8,9,10,");
                    ItemMenu("View/Other/Supply_Officer.php","Supply Officer", "0,2,4,5,6,7,8,9,10,");
                    ItemMenu("View/Other/BarcodeGenerator.php","Sticker w/ Barcode Generator", "1,3,", "Alt + F5");
                });
                MainMenu("Reports", "1,2,3,4,5,", function(){
                    SubMenu("GAM", "1,3,4,5,", function(){
                        ItemMenu("View/Reports/Property_Card.php", "Property Card", "1,3,", "Alt + 3");
                        ItemMenu("View/Reports/Stock_Card.php", "Stock Card", "1,3,4,5,", "Alt + 4");
                        ItemMenu("View/Reports/RSMI.php", "RSMI", "1,3,5,", "Alt + 5");
                        ItemMenu("View/Reports/RPCI.php", "RPCI", "1,3,5,", "Alt + 6");
                        ItemMenu("View/Reports/WMR.php", "WMR", "1,3,5,", "Alt + 7");
                        ItemMenu("View/Reports/IIRUP.php", "IIRUP", "1,3,5,", "Alt + 8");
                    });
                    SubMenu("Others", "1,2,3,4,5,", function(){
                        ItemMenu("View/Reports_Other/Fund_Reports.php","Fund Report", "1,");
                        ItemMenu("View/Reports_Other/Dormant_Inventories.php","Dormant Inventories", "1,2,3,5,");
                        ItemMenu("View/Reports_Other/Exceed_Useful_Life.php","Items exceeding Useful Life", "1,2,3,");
                    });
                }); 
            ?>
        </ul>
        <ul class="navbar-nav ml-auto">            
            <li class="nav-item dropdown" id="account-container">
                <a class="nav-link dropdown-item dropdown-toggle" data-toggle="dropdown"><?php echo "Hi " . $_SESSION["SUPMIS"]["supmis_name"];?></a>
                <ul class="dropdown-menu" style="right: 0px; left: auto;">
                    <?php
                        ItemMenu("Models/Main/ChangeServerSide.php","User Portal","1,2,3,4,5,6,");
                        ItemMenu("Models/Main/ChangeServerSide.php","Admin Portal","9,10,");
                        ItemMenu("View/User/Change_Password.php","Change Password","0,1,2,3,4,5,6,7,8,9,10,", "Alt + F9");
                        ItemMenu("View/Home/Logs.php", "Notification", "0,1,2,3,4,5,6,7,8,9,10,", "Alt + F8");
                        ItemMenu("View/Account/LogOut.php?ID=".bin2hex($_SERVER['PHP_SELF']),"LogOut","0,1,2,3,4,5,6,7,8,9,10,");
                    ?>
                </ul>
            </li>
        </ul>
    </div>
</nav>
<div style='height:2px;' class='bg-goldenrod'>
</div>
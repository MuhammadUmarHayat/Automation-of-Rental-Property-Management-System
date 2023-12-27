<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminTenantsList.aspx.cs" Inherits="MyPrototype.AdminTenantsList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Tenant List</title>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="style.css"/>
    <style type="text/css">
        .auto-style1 {
            width: 51%;
            height: 69px;
        }

        .auto-style2 {
            text-align: center;
            color: #660033;
            font-size: x-large;
        }

        .auto-style3 {
            color: #006600;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <span class="text-warning">Automation of Rental Property </span>Management System
            </a>
          
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="AdminPannel.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AdminLandLordlist.aspx">Landlord List</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AdminTenantsList.aspx">Tenants List</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AdminManageLandlords.aspx">Manage Landlords</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AdminManageTenants.aspx">Manage Tenants</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AdminFeedbackTenants.aspx">Feedbacks Tenants</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AdminFeedbackLandlord.aspx">Feedbacks Landlord</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Logout.aspx">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <br /> <br /> <br /> <br /> <br /> <br />
    <form runat="server">
        <div class="container mt-5">
            <h1>Tenant List</h1>
            <div class="table-responsive">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>       
            </div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.6.4.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>
</html>
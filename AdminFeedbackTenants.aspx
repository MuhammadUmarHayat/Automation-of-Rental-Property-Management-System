<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminFeedbackTenants.aspx.cs" Inherits="MyPrototype.AdminFeedbackTenants" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tenant Feedback</title>
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
    <form id="form1" runat="server">
        <div>
<h1>
    Tenant Feedbacks
</h1>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>

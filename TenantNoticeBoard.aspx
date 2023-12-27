<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TenantNoticeBoard.aspx.cs" Inherits="MyPrototype.TenantNoticeBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Automation of Rental Property Management System</title>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="style.css"/>
    <style type="text/css">
        /* Add your custom styles here */
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="TenantHome.aspx">
   <span class="text-warning">Automation of Rental Property </span>Management System
          </a>
          
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link" href="TenantHome.aspx">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="TenantNoticeBoard.aspx">Notice Board</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="ManageTenants.aspx">Feedbacks</a>
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
 <asp:Label ID="lblUser" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
            <br>

            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="owner" HeaderText="owner" SortExpression="owner" />
                    <asp:BoundField DataField="tentant" HeaderText="tentant" SortExpression="tentant" />
                    <asp:BoundField DataField="property_no" HeaderText="property_no" SortExpression="property_no" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                    <asp:BoundField DataField="doa" HeaderText="doa" SortExpression="doa" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                    <asp:BoundField DataField="months" HeaderText="months" SortExpression="months" />
                    <asp:BoundField DataField="years" HeaderText="years" SortExpression="years" />
                    <asp:BoundField DataField="statement" HeaderText="statement" SortExpression="statement" />
                </Columns>
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

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MoeedptdbConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [rental_contracts] WHERE ([tentant] = @tentant)">
                <SelectParameters>
                    <asp:SessionParameter Name="tentant" SessionField="username" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>

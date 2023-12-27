<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProperty.aspx.cs" Inherits="MyPrototype.EditProperty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="style.css"/>
    <style type="text/css">
        .auto-style1 {
            width: 98%;
            height: 376px;
        }

        .auto-style2 {
            text-align: center;
            color: #660033;
            font-size: x-large;
        }

        .auto-style3 {
            color: #006600;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
            width: 12px;
        }
        .auto-style7 {
            width: 12px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"><span class="text-warning">Automation of Rental Property </span>Management System

          </a>
          
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
              
              <li class="nav-item">
                <a class="nav-link" href="LandlordHome.aspx">Home</a>
              </li>
                <li class="nav-item">
                <a class="nav-link" href="PropertyDetails.aspx">Property</a>
              </li>
                <li class="nav-item">
                <a class="nav-link" href="ContractDetails.aspx">Contracts</a>
              </li>
                 <li class="nav-item">
                <a class="nav-link" href="ManageLandlords.aspx">Requests</a>
              </li>
               <li class="nav-item">
                <a class="nav-link" href="ManageLandlords.aspx">Transactions</a>
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


            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3"><strong>Property Details</strong></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
                        </strong></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewProperty.aspx">New Property</asp:HyperLink>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                                <asp:BoundField DataField="area_size" HeaderText="area_size" SortExpression="area_size" />
                                <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MoeedptdbConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [title], [description], [category], [type], [area_size], [amount], [city], [status] FROM [properties] WHERE ([Id] = @Id)" UpdateCommand="update [properties] set [title]=@title, [description]=@description, [category]=@category, [type]=@type, [area_size]=@area_size, [amount]=@amount, [city]=@city, [status]=@status WHERE ([Id] = @Id)">
                            <SelectParameters>
                                <asp:SessionParameter Name="Id" SessionField="property_id" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>

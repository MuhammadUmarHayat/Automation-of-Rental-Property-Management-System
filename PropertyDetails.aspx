<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PropertyDetails.aspx.cs" Inherits="MyPrototype.PropertyDetails" %>

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
          <a class="navbar-brand" href="LandlordHome.aspx"><span class="text-warning">Automation of Rental Property </span>Management System

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
                <a class="nav-link" href="LandlordContractDetails.aspx">Contracts</a>
              </li>
                 <li class="nav-item">
                <a class="nav-link" href="LandlordRequests.aspx">Requests</a>
              </li>
               <li class="nav-item">
                <a class="nav-link" href="LandlordTransactions.aspx">Transactions</a>
              </li>
               <li class="nav-item">
                <a class="nav-link" href="LandlordFeedbacks.aspx">Feedbacks</a>
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
                        <asp:HyperLink ID="HyperLink1" CssClass="btn btn-primary" runat="server" NavigateUrl="~/NewProperty.aspx">New Property</asp:HyperLink>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" RepeatColumns="3" RepeatDirection="Horizontal" Width="773px" OnItemCommand="DataList1_ItemCommand">
                            <AlternatingItemStyle BackColor="#F7F7F7" />
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <ItemTemplate>
                                <table class="auto-style4">
                                    <tr>
                                        <td><asp:Image ID="imgEmp" runat="server" Width="50px" Height="50px" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "photo") %>' /><br /></td>
                                        <td><h2> <asp:Label ID="lblTitle" runat="server" Text='<%# Bind("title") %>'/></h2></td>
                                    </tr>
                                    <tr>
                                        
                                        <td> <asp:Label ID="Label3" runat="server" Text='<%# Bind("address") %>'/></td>
                                        <td> <asp:Label ID="Label2" runat="server" Text='<%# Bind("amount") %>'/></td>
                                    </tr>
                                    <tr>
                                        
                                        <td> 
<asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("id")%>' CommandName="edit" CssClass="auto-style2" Height="50px" ImageUrl="~/images/edit.jpg" />
                                        </td>
                                        <td> 
<asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("id")%>' CommandName="delete" CssClass="auto-style2" Height="50px" ImageUrl="~/images/delete.jpg" />
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        </asp:DataList>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>

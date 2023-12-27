<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandlordContractDetails.aspx.cs" Inherits="MyPrototype.LandlordContractDetails" %>

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
                    <td class="auto-style2" colspan="3">Property Contract Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Choose Tenant</td>
                    <td>
                        <asp:DropDownList ID="ddlTenant" runat="server">
                        </asp:DropDownList>
                        <asp:Button ID="btnRequests" runat="server" OnClick="btnRequests_Click" Text="View Requests" Width="96px" />
                    </td>
                    <td rowspan="2">
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
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Choose Property</td>
                    <td>
                        <asp:DropDownList ID="ddlProperty" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Amount</td>
                    <td>
                        <asp:TextBox ID="txtAmount" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Statement of agrement</td>
                    <td>
                        <asp:TextBox ID="txtStatement" runat="server" Height="106px" TextMode="MultiLine" Width="322px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnContract" runat="server" OnClick="btnContract_Click" Text="Add Contract" />
                        <strong>
                        <asp:Label ID="lblResult" runat="server"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>

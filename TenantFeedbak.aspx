<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TenantFeedbak.aspx.cs" Inherits="MyPrototype.TenantFeedbak" %>

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
                <a class="nav-link" href="TenantFeedbak.aspx">Feedbacks</a>
              </li>
                <li class="nav-item">
                <a class="nav-link" href="TenantPayment.aspx">Payments</a>
              </li>
                <li class="nav-item">
                <a class="nav-link" href="TenantHistory.aspx">History</a>
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
                    <td class="auto-style2" colspan="3"><strong>Tenant feed back</strong></td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3"><strong>
                        <asp:Label ID="lblUser" runat="server" CssClass="auto-style3"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td>Choose Landloard</td>
                    <td>
                        <asp:DropDownList ID="ddlLandlord" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="ddlLandlord"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Rating</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Message</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="84px" Width="205px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
              
               
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button class="btn btn-secondary" ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                        <strong>
                        <asp:Label ID="lblResult" runat="server" CssClass="auto-style4"></asp:Label>
                        </strong>
                    </td>
                    <td></td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>

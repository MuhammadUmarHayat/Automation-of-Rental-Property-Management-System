<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TenantPayment.aspx.cs" Inherits="MyPrototype.TenantPayment" %>

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

            <table align="center" class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td><strong>
                        <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:DropDownList ID="ddlProperty" runat="server">
                        </asp:DropDownList>
                        <asp:Button class="btn btn-dark" ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><strong><em>
                        <asp:Label ID="lblAmount" runat="server" Text="Label"></asp:Label>
                        </em></strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button class="btn btn-success" ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewProperty.aspx.cs" Inherits="MyPrototype.NewProperty" %>

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
        .auto-style4 {
            width: 335px;
        }
        .auto-style5 {
            width: 128px;
        }
        .auto-style6 {
            width: 128px;
            font-size: large;
        }
        .auto-style7 {
            font-size: large;
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
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Title</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtTitle" runat="server" CssClass="auto-style7"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Description</td>
                    <td class="auto-style4">
                        
                        <asp:TextBox ID="txtDescription" runat="server" CssClass="auto-style7"></asp:TextBox>
                        
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDescription" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">category</td>
                    <td class="auto-style4">
                        
                        <asp:DropDownList ID="ddlCat" runat="server" CssClass="auto-style7">
                            <asp:ListItem>Home</asp:ListItem>
                            <asp:ListItem>Commercial</asp:ListItem>
                        </asp:DropDownList>
                        
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlCat" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Type</td>
                    <td class="auto-style4">
                        
                        <asp:DropDownList ID="ddlType" runat="server" CssClass="auto-style7">
                            <asp:ListItem>House</asp:ListItem>
                            <asp:ListItem>Flat</asp:ListItem>
                            <asp:ListItem>Upper Portion</asp:ListItem>
                            <asp:ListItem>Lower Portion</asp:ListItem>
                            <asp:ListItem>FarmHouse</asp:ListItem>
                            <asp:ListItem>PentHouse</asp:ListItem>
                            <asp:ListItem>Room</asp:ListItem>
                            <asp:ListItem>office</asp:ListItem>
                            <asp:ListItem>shope</asp:ListItem>
                            <asp:ListItem>warehouse</asp:ListItem>
                            <asp:ListItem>factory</asp:ListItem>
                        </asp:DropDownList>
                        
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlType" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">size</td>
                    <td class="auto-style4">
                        
                        <asp:DropDownList ID="ddlSize" runat="server" CssClass="auto-style7">
                            <asp:ListItem>60 sq yard</asp:ListItem>
                            <asp:ListItem>80 sq yard</asp:ListItem>
                            <asp:ListItem>120 sq yard</asp:ListItem>
                            <asp:ListItem>240 sq yard</asp:ListItem>
                            <asp:ListItem>300 sq yard</asp:ListItem>
                            <asp:ListItem>500 sq yard</asp:ListItem>
                            <asp:ListItem>1000sq yard</asp:ListItem>
                        </asp:DropDownList>
                        
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlSize" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Location</td>
                    <td class="auto-style4">
                        
                        <asp:TextBox ID="txtLocation" runat="server" CssClass="auto-style7"></asp:TextBox>
                        
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLocation" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Address</td>
                    <td class="auto-style4">
                        
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="auto-style7"></asp:TextBox>
                        
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAddress" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">city</td>
                    <td class="auto-style4">
                        
                        <asp:TextBox ID="txtCity" runat="server" CssClass="auto-style7"></asp:TextBox>
                        
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCity" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Amount</td>
                    <td class="auto-style4">
                        
                        <asp:TextBox ID="txtAmount" runat="server" CssClass="auto-style7"></asp:TextBox>
                        
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtAmount" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">photo</td>
                    <td class="auto-style4">
                        
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style7" />
                        
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">status</td>
                    <td class="auto-style4">
                        
                        <asp:DropDownList ID="ddlStatus" runat="server" CssClass="auto-style7">
                            <asp:ListItem>available</asp:ListItem>
                            <asp:ListItem>not available</asp:ListItem>
                        </asp:DropDownList>
                        
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlStatus" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style4">
                        
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Font-Bold="True" ForeColor="#660066"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style4">
                        
                        <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Save" OnClick="Button1_Click" style="font-size: large; height: 31px;" />
                        
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>

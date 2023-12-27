<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestGUI.aspx.cs" Inherits="MyPrototype.TestGUI" %>

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
          <a class="navbar-brand" href="#">
            <span class="text-warning">Automation of Rental Property Management System</span>
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
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <strong>
                        <asp:Label ID="lblUser" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
                    </strong>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-4">
                    <asp:DropDownList ID="ddlType" runat="server"></asp:DropDownList>
                    <asp:DropDownList ID="ddlLocation" runat="server" Height="17px" Width="148px"></asp:DropDownList>
                    <asp:DropDownList ID="ddlSize" runat="server"></asp:DropDownList>
                    <asp:Button ID="btnFind" runat="server" OnClick="Button1_Click" Text="Find" />
                    <asp:Button ID="btnLocation" runat="server" OnClick="btnLocation_Click" Text="Location wise" />
                    <asp:Button ID="btnSize" runat="server" OnClick="btnSize_Click" Text="Size wise" />
                    <asp:Button ID="btnType" runat="server" OnClick="btnType_Click" Text="Types" />
                </div>
                <div class="col-md-4">
                    <asp:Button ID="btnCommercial" runat="server" Text="Commercial" OnClick="btnCommercial_Click" />
                    <br />
                    <asp:Button ID="btnHomes" runat="server" OnClick="btnHomes_Click" Text="Homes" Width="128px" />
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-12">
                    <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
                        <ItemTemplate>
                            <div class="row">
                                <div class="col-md-4">
                                    <asp:Image ID="imgEmp" runat="server" CssClass="img-fluid" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "photo") %>' />
                                </div>
                                <div class="col-md-8">
                                    <br />
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("title") %>'/>
                                    <br />
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("description") %>'/>
                                    <br />
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("area_size") %>'/>
                                    <br />
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("amount") %>'/>
                                    <br />
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("city") %>'/>
                                    <br />
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("category") %>'/>
                                    <br />
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("id")%>' CommandName="detail" CssClass="auto-style2" Height="50px" Width="50px" ImageUrl="~/images/vd.png" />
                                    <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("id")%>' CommandName="request" CssClass="auto-style2" Height="50px" Width="50px" ImageUrl="~/images/req.png" />
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyPrototype.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="style.css"/>
    
       
        <style>
    /* Add your custom styles here if needed */
    .auto-style1 {
      width: 50%;
      margin: auto;
      margin-top: 50px;
    }

    .auto-style3 {
      padding-top: 10px;
    }

    .auto-style4 {
      color: red;
    }

    .auto-style5 {
      padding-bottom: 10px;
    }

    .auto-style6 {
      color: red;
    }
            .auto-style7 {
                color: #FFFFFF;
                text-align: center;
                background-color: #0000CC;
            }
  </style>
    
    
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="WebForm1.aspx"><span class="text-warning">Automation of Rental Property </span>Management System

            </a>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">

                    <li class="nav-item">
                        <a class="nav-link" href="Login.aspx">Home</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="RegistrationForm.aspx"> Lanlord Registration </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Login.aspx">Login</a>
                    </li>

                </ul>

            </div>
        </div>
    </nav>

    <br /><br /><br /><br /><br />

    <form id="form1" runat="server">
        <div class="container auto-style1">
            <div class="card">
                <div class="card-header auto-style7">
                    <h1><strong>Login</strong></h1>
                </div>
                <div class="card-body">
                    <div class="mb-3">
                        <label for="DropDownList1" class="form-label">Choose user type</label>
                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                            <asp:ListItem>admin</asp:ListItem>
                            <asp:ListItem>landlord</asp:ListItem>
                            <asp:ListItem>tenant</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="mb-3">
                        <label for="txtUsername" class="form-label">Enter user name</label>
                        <asp:TextBox class="form-control" ID="txtUsername" runat="server"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="txtPw" class="form-label">Enter Password</label>
                        <asp:TextBox ID="txtPw" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="d-grid">
                        <asp:Button class="btn btn-success" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click1" />
                        <asp:HyperLink ID="HyperLink1" class="btn btn-link" runat="server" NavigateUrl="~/TenantRegistration.aspx">New Tenant</asp:HyperLink>
                    </div>
                    <div class="mt-3">
                        <strong><asp:Label class="auto-style4" ID="lblResult" runat="server" Text=""></asp:Label></strong>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

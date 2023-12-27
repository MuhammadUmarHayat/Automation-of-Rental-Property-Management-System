<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPannel.aspx.cs" Inherits="MyPrototype.AdminPannel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Pannel</title>
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
          <a class="navbar-brand" href="AdminPannel.aspx"><span class="text-warning">Automation of Rental Property </span>Management System

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
                <a class="nav-link" href="AdminManageLandlords.aspx">Manage land lords</a>
              </li>
               <li class="nav-item">
                <a class="nav-link" href="AdminManageTenants.aspx">Manage Tenants</a>
              </li>
                <li class="nav-item">
                <a class="nav-link" href="AdminFeedbackTenants.aspx">Feedbacks Tenants</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="AdminFeedbackLandlord.aspx">Feedbacks Landlord </a>
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


            

                       
                    
            <div>
                <div class="container mt-5">
    <div class="row">
      <div class="col-md-6">
        <div class="card bg-primary text-white">
          <div class="card-body">
            <h5 class="card-title">Total Registered Users</h5>
            
              
              <asp:Label ID="lblUsers" runat="server" CssClass="text-white" Text="Label"></asp:Label>
          </div>
        </div>
      </div>

      <div class="col-md-6">
        <div class="card bg-success text-white">
          <div class="card-body">
            <h5 class="card-title">Total Properties</h5>
            <asp:Label ID="lblProperties" runat="server" CssClass="text-white" Text="Label"></asp:Label>
          </div>
        </div>
      </div>
    </div>

    <div class="row mt-3">
      <div class="col-md-6">
        <div class="card bg-warning text-dark">
          <div class="card-body">
            <h5 class="card-title">Total Property Types</h5>
            
              <asp:Label ID="lblPType" runat="server" CssClass="text-white" Text="Label"></asp:Label>
          </div>
        </div>
      </div>

      <div class="col-md-6">
        <div class="card bg-info text-white">
          <div class="card-body">
            <h5 class="card-title">Total Income</h5>
            <asp:Label ID="lblIncome" runat="server" CssClass="text-white" Text="Label"></asp:Label>
          </div>
        </div>
      </div>
    </div>

    <div class="row mt-3">
      <div class="col-md-12">
        <div class="card bg-danger text-white">
          <div class="card-body">
            <h5 class="card-title">Total Feedbacks</h5>
            <asp:Label ID="lblFeedbacks" CssClass="text-white" runat="server" Text="Label"></asp:Label>
          </div>
        </div>
      </div>
    </div>
  </div>




            </div>

        </div>
    </form>
</body>
</html>

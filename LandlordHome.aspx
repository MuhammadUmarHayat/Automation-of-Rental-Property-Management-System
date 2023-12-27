<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandlordHome.aspx.cs" Inherits="MyPrototype.LandlordHome" %>

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
                    <td class="auto-style2" colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
 <div>
                <div class="container mt-5">
    <div class="row">
      <div class="col-md-6">
        <div class="card bg-primary text-white">
          <div class="card-body">
            <h5 class="card-title">Total Property</h5>
            
              
              <asp:Label ID="lbltotalProperty" runat="server" CssClass="text-white" Text="Label"></asp:Label>
          </div>
        </div>
      </div>

      <div class="col-md-6">
        <div class="card bg-success text-white">
          <div class="card-body">
            <h5 class="card-title">Total Aggrements</h5>
            <asp:Label ID="lblAggrement" runat="server" CssClass="text-white" Text="Label"></asp:Label>
          </div>
        </div>
      </div>
    </div>

    <div class="row mt-3">
      <div class="col-md-6">
        <div class="card bg-warning text-dark">
          <div class="card-body">
            <h5 class="card-title">Total Requests</h5>
            
              <asp:Label ID="lblRequest" runat="server" CssClass="text-white" Text="Label"></asp:Label>
          </div>
        </div>
      </div>

      <div class="col-md-6">
        <div class="card bg-info text-white">
          <div class="card-body">
            <h5 class="card-title">Total Feedbacks</h5>
            <asp:Label ID="lblFeedback" runat="server" CssClass="text-white" Text="Label"></asp:Label>
          </div>
        </div>
      </div>
    </div>

    <div class="row mt-3">
      <div class="col-md-12">
        <div class="card bg-danger text-white">
          <div class="card-body">
            <h5 class="card-title">Total Revenue Generated</h5>
            <asp:Label ID="lblRevenue" CssClass="text-white" runat="server" Text="Label"></asp:Label>
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

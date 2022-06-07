<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateEmployee.aspx.cs" Inherits="EmployeeManagement.Pages.UpdateEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <meta charset="utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous">
    </script>
    <script src="../fontawesome/js/all.min.js"></script>
<head runat="server">
    <title></title>
    <style>
          #grad1 {
            background-color: gray; /* For browsers that do not support gradients */
            background-image: linear-gradient(to right, black, white);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

          <nav id="grad1" class="navbar navbar-expand-lg sticky-lg-top ">
            <div class="container-fluid">
                <img src="../Image/Wai.jpg" class="rounded-circle" height="70px" />
                <a class="navbar-brand" href="#">
                    <h3 class="text-white p-1">Wai Technologies </h3>
                    <h4 class="text-white">Pvt.Ltd.</h4>

                </a>

                <button class="navbar-toggler text-dark ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon nav"></span>
                </button>
                <br />
                <div class="collapse navbar-collapse collapse-horizontal text-light" id="navbarColor01">
                    <ul class="navbar-nav ms-auto ">
                        <li class="nav-link">
                            <asp:HyperLink runat="server" NavigateUrl="~/Pages/DashBoard.aspx" class="btn  btn-outline-info text-dark   rounded" Text="DashBoard" ToolTip="Employee Details"><i class="fa-solid fa-arrow-up-right-dots"></i> DashBoard</asp:HyperLink>
                        </li>
                        <li class="nav-item m-2 btn btn-warning   ">
                            <div class=" dropdown rounded">
                                <a class=" dropdown-toggle text-dark " style="text-decoration: none;" id="dropdownMenu" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-person-bounding-box"></i> Employees
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                    <li><a class="dropdown-item " href="AddEmployees.aspx"><i class="bi bi-person-plus-fill"></i> Add Employees</a></li>
                                    <li><a class="dropdown-item" href="Employee.aspx"><i class="bi bi-person-workspace"></i> Display Employees</a></li>

                                </ul>
                            </div>

                        </li>
                        <li class="nav-item m-2 ">
                            <div class="dropdown bg-white rounded">
                                <a class=" dropdown-toggle text-dark btn btn-danger" id="dropdownMenuJob" data-bs-toggle="dropdown" aria-expanded="false"> <i class="fa-solid fa-chalkboard-user"></i> Job information
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
                                    <li><a class="dropdown-item" href="AddJobs.aspx"> <i class="fa-solid fa-address-card"></i> Add Jobs</a></li>
                                    <li><a class="dropdown-item" href="Jobs.aspx"> <i class="fa-solid fa-clipboard-user"></i> Display Jobs</a></li>

                                </ul>
                            </div>
                        </li>

                    </ul>

                </div>
            </div>
        </nav>
        <br />

        <div >
            <asp:Label runat="server" ID="LabelStatus" Visible="false"></asp:Label>
        </div>
        <div class="container">
              <div class=" row form-block mx-auto ">
                <div class="col-lg-6">
                    <div>
                        <asp:Label runat="server" ID="LabelName">Name</asp:Label></div>
                    <div>
                        <asp:TextBox runat="server" ID="TextBoxName" class="form-control" placeholder="Enter Employee Name" 
                                     MaxLength="50"></asp:TextBox>
                    </div>
                </div>
                   <div class="col-lg-6">
                    <div style="vertical-align: top;">
                        <asp:Label runat="server" ID="LabelGender">Gender</asp:Label>
                    </div>
                    <div class="row">
                       <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem Value="1" Text="Male">Male</asp:ListItem>
                            <asp:ListItem Value="2" Text="Female">Female</asp:ListItem>
                            
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div style="vertical-align: top;">
                        <asp:Label runat="server" ID="LabelAge">Age</asp:Label>
                    </div>
                    <div>
                        <asp:TextBox runat="server" ID="TextBoxAge" class="form-control" placeholder="Enter Age" 
                                      MaxLength="50"></asp:TextBox>
                    </div>
                </div>

                   <div class="col-lg-6">
                    <div style="vertical-align: top;">
                        <asp:Label runat="server" ID="LabelAddress">Address</asp:Label>
                    </div>
                    <div>
                        <asp:TextBox runat="server" ID="TextBoxAddress" placeholder="Address" 
                                    class="form-control"  TextMode="MultiLine" MaxLength="250"></asp:TextBox>
                    </div>
                </div>

                   <div class="col-lg-6">
                    <div style="vertical-align: top;">
                        <asp:Label runat="server" ID="LabelDepartment">Department</asp:Label>
                    </div>
                    <div>

                        <asp:TextBox runat="server" ID="TextBoxDepartment" class="form-control"  >
                        </asp:TextBox>
                    </div>
                </div>

                   <div class="col-lg-6">
                    <div style="vertical-align: top;">
                        <asp:Label runat="server" ID="LabelDateOfJoining">DateOfJoining</asp:Label>
                    </div>
                    <div>
                        <asp:TextBox runat="server" class="form-control" ID="TextBoxDateOfJoining" placeholder="Date Of Joining" 
                                 TextMode="Date"    MaxLength="50"></asp:TextBox>
                    </div>
                </div>
                  
                   <div class="col-lg-6">
                    <div>
                        <asp:Label runat="server" ID="LabelEmail">Email</asp:Label>
                    </div>
                    <div>
                        <asp:TextBox runat="server" ID="TextBoxEmail" class="form-control" placeholder="User Email" 
                                      MaxLength="50"></asp:TextBox>
                    </div>
                </div>
                   <div class="col-lg-6">
                    <div style="vertical-align: top;">
                        <asp:Label runat="server" ID="LabelJobId">Job Id</asp:Label>
                    </div>
                    <div>
                        <asp:TextBox runat="server" ID="TextBoxJobId" class="form-control" placeholder="Job Id" 
                                    MaxLength="50"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div></div>
                    <div class="mt-5">
                        <asp:Button runat="server" ID="ButtonUpdate" Text="Update" OnClick="ButtonUpdate_Click"/>
                        <a style="float: right" href="Employee.aspx"><input type="button" value="Back to Listing" /></a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

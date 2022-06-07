<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteJob.aspx.cs" Inherits="EmployeeManagement.Pages.DeleteJob" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous">
    </script>
    <script src="../fontawesome/js/all.min.js"></script>
    <title></title>
    <style>
          #grad1 {
            background-color: gray; 
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
            <div >
            <asp:Label runat="server" ID="LabelStatus" Visible="false"></asp:Label>
        </div>
        <div class="container bg-secondary">
            <h1 style="background-color:sandybrown" class=" text-bg-dark text-center">Add Jobs</h1>
              <div class=" row form-block mx-auto ">
                <div class="col-lg-6">
                    <div>
                        <asp:Label runat="server" ID="LabelTitle">Job Title</asp:Label></div>
                    <div>
                        <asp:TextBox runat="server" ID="TextBoxTitle" class="form-control" placeholder="Enter Job Title" 
                                     ></asp:TextBox>
                    </div>
                </div>
                   <div class="col-lg-6">
                    <div style="vertical-align: top;">
                        <asp:Label runat="server" ID="LabelNumberofPositions">Number Of Positions</asp:Label>
                    </div>
                    <asp:TextBox runat="server" ID="TextBoxNumberofPositions" class="form-control" placeholder="Enter Positions" 
                                      MaxLength="50"></asp:TextBox>
                    </div>
                
                <div class="col-lg-6 mt-3">
                    <div style="vertical-align: top;">
                        <asp:Label runat="server" ID="LabelLocation">Location</asp:Label>
                    </div>
                    <div>
                        <asp:TextBox runat="server" ID="TextBoxLocation" class="form-control" placeholder="Enter Location" 
                                      MaxLength="50"></asp:TextBox>
                    </div>
                </div>

                   <div class="col-lg-6 mt-3">
                    <div style="vertical-align: top;">
                        <asp:Label runat="server" ID="LabelSalaryRange">Salary Range</asp:Label>
                    </div>
                    <div>
                        <asp:TextBox runat="server" ID="TextBoxSalaryRange" placeholder="Salary Range" 
                                    class="form-control" ></asp:TextBox>
                    </div>
                </div>
            </div>
                  
                <div class="col-lg-6">
                    
                    <div class="mt-5  ">
                        <asp:Button runat="server" ID="ButtonDelete" Text="Delete" OnClick="ButtonDelete_Click"/>
                        <a style="float: right " href="Jobs.aspx"><input type="button" value="Back to Listing" /></a>
                        <br />
                        <br />

                    </div>
                </div>
            </div>
    </form>
</body>
</html>

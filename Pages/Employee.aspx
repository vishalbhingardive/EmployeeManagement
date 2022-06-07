<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="EmployeeManagement.Pages.Employee" %>

<%@ Import Namespace="EmployeeServices.Services" %>
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
        .navbar {
            background-color: gray;
        }

        .cardEffect:hover {
            zoom: 110%
        }
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
        <div class="container">
            <div class="row mt-5 gy-3 ms-5 ">
                <%
                    var employeeService = new EmployeeService();
                    var employees = employeeService.GetAll();


                    foreach (var employee in employees)
                    {%>
                <div class="card col-lg-3">

                <div class="card-header " style="background-color: #E8E8E8">
                    <h4>Employee Details</h4>
                </div>
                <div class="card-body ">
                    <img src="../Image/Person.png" /><hr />
                    <h6>Employee Id:  <%= employee.EmployeeId %></h6>
                    <hr />
                    <h6>Name: <%= employee.Name %></h6>
                    <hr />
                    <h6>Gender: <%= employee.Gender %></h6>
                    <hr />
                    <h6>Age: <%= employee.Age %></h6>
                    <hr />
                    <h6>Address: <%= employee.Address %></h6>
                    <hr />
                    <h6>Department: <%= employee.Department %></h6>
                    <hr />
                    <h6>Date of Joining: <%= employee.DateOfJoining %></h6>
                    <hr />
                    <h6>Email:  <%= employee.Email %></h6>
                    <hr />
                    <h6>Job Id: <%= employee.JobId %></h6>
                </div>
                    <div class="row card-footer">
                    <h6 class="col" ><a href="UpdateEmployee?id=<%= employee.EmployeeId %>">Edit</a></h6>
                    <h6 class="col"><a href="DeleteEmployee.aspx?id=<%= employee.EmployeeId %>">Delete</a></h6>
                    
                </div>
                </div>
                
                  
                <% }
                %>
          

          </div>
            </div>
    </form>
</body>
</html>

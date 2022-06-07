<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="EmployeeManagement.Pages.DashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous">

    </script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
    <script src="../fontawesome/js/all.min.js"></script>
    <title></title>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap);

        body {
            background: #f5f5f5;
        }

        @media only screen and (max-width: 767px) {
            .hide-on-mobile {
                display: none;
            }
        }

        .login-box {
            background-image: url('../image/logo.png');
            background-size: cover;
            background-position: center;
            padding: 50px;
            margin: 50px auto;
            min-height: 700px;
            -webkit-box-shadow: 0 2px 60px -5px rgba(0, 0, 0, 0.1);
            box-shadow: 0 2px 60px -5px rgba(0, 0, 0, 0.1);
        }

        .logo {
            font-family: "Script MT";
            font-size: 54px;
            text-align: center;
            color: slategray;
            margin-bottom: 50px;
        }

            .logo .logo-font {
                color: #3BC3FF;
            }

        @media only screen and (max-width: 767px) {
            .logo {
                font-size: 34px;
                color: white;
            }
        }

        .header-title {
            text-align: center;
            margin-bottom: 50px;
        }

        .login-form {
            max-width: 300px;
            margin: 0 auto;
        }

            .login-form .form-control {
                border-radius: 0;
                margin-bottom: 30px;
            }

            .login-form .form-group {
                position: relative;
            }

                .login-form .form-group .forgot-password {
                    position: absolute;
                    top: 6px;
                    right: 15px;
                }

            .login-form .btn {
                border-radius: 0;
                -webkit-box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                margin-bottom: 30px;
            }

                .login-form .btn.btn-primary {
                    background: #3BC3FF;
                    border-color: #31c0ff;
                }

        .slider-feature-card {
            background: #fff;
            max-width: 280px;
            margin: 0 auto;
            padding: 30px;
            text-align: center;
            -webkit-box-shadow: 0 2px 25px -3px rgba(0, 0, 0, 0.1);
            box-shadow: 0 2px 25px -3px rgba(0, 0, 0, 0.1);
        }

            .slider-feature-card img {
                height: 80px;
                margin-top: 30px;
                margin-bottom: 30px;
            }

            .slider-feature-card h3,
            .slider-feature-card p {
                margin-bottom: 30px;
            }

        .carousel-indicators {
            bottom: -50px;
        }

            .carousel-indicators li {
                cursor: pointer;
            }

        .microsoft {
            background-color: #f25022;
            box-shadow: 15px 0 0 0 #7fba00, 0 15px 0 0 #00a4ef, 15px 15px 0 0 #ffb900;
            height: 10px;
            width: 10px;
        }

        .Hello {
            margin: 3%;
            position: relative;
        }

        .hii {
            position: absolute;
            top: 90%;
            left: 70%;
            color: black;
        }

        .hii1 {
            position: absolute;
            top: 80%;
            left: 60%;
            color: White;
            font-weight: bolder;
        }

        .innerDiv {
            position: absolute;
            top: 35%;
            left: 30%;
            opacity: 75%;
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

        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="Hello carousel-item active ">
                    <img src="../Image/Two.png" width="100%" height="600px" />
                    <div class="hii1">

                        <h6>Application Modernization using industry  – leading frameworks </h6>
                        <h6>like ASP.NET Zero, ABP Commercial and Microsoft Azure</h6>
                    </div>
                    <button class="hii btn btn-danger">FIND OUT MORE</button>
                </div>


                <div class="carousel-item">
                    <img src="../Image/four.jpg" width="100%" height="600px" />
                    <div class="hii1">

                        <h6>Application Modernization using industry  – leading frameworks </h6>
                        <h6>like ASP.NET Zero, ABP Commercial and Microsoft Azure</h6>
                    </div>
                    <button class="hii btn btn-danger">FIND OUT MORE</button>
                </div>
                <div class="carousel-item">
                    <img src="../Image/five.jpeg" width="100%" height="600px" />
                    <div class="hii1">

                        <h6>Application Modernization using industry  – leading frameworks </h6>
                        <h6>like ASP.NET Zero, ABP Commercial and Microsoft Azure</h6>
                    </div>
                    <button class="hii btn btn-danger">FIND OUT MORE</button>
                </div>
                <div class="carousel-item">
                    <img src="../Image/MicrosoftTeams-image%20(4).png" width="100%" height="600px" />
                    <div class="innerDiv bg-dark text-white w-50">
                        <div>
                            <h2 class="text-center">We Are Hiring</h2>
                            <h2 class="text-center">For Development  | &nbsp; DeadLine </h2>
                            <p class=" " style="padding-left: 60%">&nbsp; 31/06/2022</p>
                            <hr />
                            <h2 class="text-center">|</h2>
                            <hr />
                            <h2 class="text-center">|</h2>
                            <hr />
                            <h2 class="text-center">|</h2>
                            <hr />
                        </div>
                    </div>
                    <div class="hii1">

                     
                    </div>
                    
                </div>


            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </form>
</body>
</html>

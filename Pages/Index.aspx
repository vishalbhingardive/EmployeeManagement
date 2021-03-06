<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="EmployeeManagement.Pages.Index" %>

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

                .login-form .form-group .ParaIcon {
                    position: absolute;
                    top: 6px;
                    left: 85px;
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
    </style>
</head>
<body>



    <section class="body">
        <div class="container">
            <div class="login-box">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="logo">
                            <span class="logo-font text-danger">Wai</span>Technologies
                   
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-sm-12 hide-on-mobile">
                        <div id="demo" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ul class="carousel-indicators">
                                <li data-target="#demo" data-slide-to="0" class="active"></li>
                                <li data-target="#demo" data-slide-to="1"></li>
                            </ul>
                            <!-- The slideshow -->
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="slider-feature-card">
                                        <img src="../Image/Wai.jpg" />
                                        <h3 class="slider-title">Wai Technologies</h3>
                                        <p class="slider-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure, odio!</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="slider-feature-card">
                                        <img src="../Image/Wai.jpg" />
                                        <h3 class="slider-title">Collaborations With</h3>
                                        <p class="slider-description">
                                            <p class="microsoft">&nbsp; Microsoft</p>
                                        </p>
                                        <p class="slider-description">Asp.Net Zero</p>
                                        <p class="slider-description">
                                            ABP Commercials
                                   
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- Left and right controls -->
                            <a class="carousel-control-prev" href="#demo" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon text-warning"></span>
                            </a>
                            <a class="carousel-control-next" href="#demo" data-bs-slide="next">
                                <span class="carousel-control-next-icon"></span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-12">
                        <div class="text-center "><img src="../Image/Wai.jpg" width="100px;" /></div>
                        <br />
                        <h3 class="text-primary header-title">LOGIN</h3>
                        <form class="login-form" runat="server">
                              <div class="form-group">
                                <asp:Label runat="server" Text="UserName" ID="LabelEmail"></asp:Label>
                                
                            </div>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="TextBoxEmail" class="form-control" placeholder="Email or UserName">
                            </asp:TextBox>
                            </div >
                            <div class="form-group">
                                <asp:Label runat="server" ID="LabelPassword"><i class="fa-solid fa-key"></i> Password</asp:Label>
                                
                            </div>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="TextBoxPassword" class="form-control" placeholder="Password">
                         
                            </asp:TextBox>
                               
                                <a href="#!" class="forgot-password">Forgot Password?</a>
                            </div>
                            <div class="form-group">
                                <asp:Button runat="server" ID="ButtonLogin" class="btn btn-primary btn-block" Text="LOGIN" OnClick="ButtonLogin_Click" />

                            </div>
                            <div class="form-group">
                                <div class="text-center">New Member? <a href="#!">Sign up Now</a></div>
                            </div>

                        </form>
                    </div>

                </div>
            </div>
        </div>
    </section>

</body>
</html>









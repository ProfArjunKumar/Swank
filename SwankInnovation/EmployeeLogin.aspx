<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeLogin.aspx.cs" Inherits="SwankInnovation.EmployeeLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Fully Responsive Bootstrap 4 Admin Dashboard Template" />
    <meta name="author" content="Creative Tim" />

    <!-- Title -->
    <title>SIPL RMS</title>

    <!-- Favicon -->
    <link href="../assets/img/brand/favicon.png" rel="icon" type="image/png" />

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,600,700,800" rel="stylesheet" />

    <!-- Icons -->
    <link href="../assets/css/icons.css" rel="stylesheet" />

    <!--Bootstrap.min css-->
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.min.css" />

    <!-- Adon CSS -->
    <link href="../assets/css/dashboard.css" rel="stylesheet" type="text/css" />
    <link href="../assets/css/hor-boxed.css" rel="stylesheet" type="text/css" />

    <!-- Single-page CSS -->
    <link href="../assets/plugins/single-page/css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            font-size: 15px;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            align-items: center;
            position: absolute;
            border-radius: 25px;
            bottom: 340px;
            left: -110px;
            width: 100%;
            height: 100%;
            padding-left: 35px;
            pointer-events: none;
            color: #24214c;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            -moz-transition: all 0.4s;
            transition: all 0.4s;
        }
    </style>
</head>
<body class="">
    <div class="page bg-gradient-primary">
        <div class="page-main">
            <div class="limiter">
                <div class="container-login100">
                    <div class="wrap-login100 p-5">
                        <form class="login100-form validate-form" runat="server">
                            <div class="logo-img text-center pb-3">
                                <img src="assets/img/logo-black.png" />
                            </div>
                            <span class="login100-form-title">Employee Login
                            </span>
                            <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                                <asp:TextBox runat="server" ID="txt1" class="input100" type="text" name="email" placeholder="Email" />
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                            </div>
                            <div class="wrap-input100 validate-input" data-validate="Password is required">
                                <asp:TextBox runat="server" ID="txt2" class="input100" type="password" name="pass" placeholder="Password" />
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-lock" aria-hidden="true"></i>
                                </span>
                            </div>
                            <div class="container-login100-form-btn">
                                <asp:Button runat="server" ID="btnbutton" Text="Login" class="login100-form-btn btn-primary" OnClick="btnbutton_Click" />
                                <asp:Label ID="Label1" ForeColor="Red" runat="server"></asp:Label>
                            </div>
                            <br />
                            <center>
                            <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" runat="server">Back To Index</asp:LinkButton>
                                </center>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Adon Scripts -->
    <!-- Core -->
    <script src="../assets/plugins/jquery/dist/jquery.min.js"></script>
    <script src="../assets/js/popper.js"></script>
    <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Headerfix JS -->
    <script src="../assets/js/headerfix.js"></script>
</body>
</html>

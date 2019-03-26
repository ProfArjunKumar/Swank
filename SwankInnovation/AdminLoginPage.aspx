<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLoginPage.aspx.cs" Inherits="SwankInnovation.AdminLoginPage" %>

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
                            <span class="login100-form-title">Admin Login
                            </span>
                            <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                                <asp:TextBox class="input100" type="text" ID="txt1" name="email" runat="server" placeholder="Email" />
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </span>
                            </div>
                            <div class="wrap-input100 validate-input" data-validate="Password is required">
                                <asp:TextBox class="input100" runat="server" type="password" ID="txt2" name="pass" placeholder="Password" />
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-lock" aria-hidden="true"></i>
                                </span>
                            </div>
                            <div class="container-login100-form-btn">
                                <asp:Button ID="btnlogin" Text="login" runat="server" class="login100-form-btn btn-primary" OnClick="btnlogin_Click" />
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
    <script src="../assets/js/popper.js"></script>
    <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Headerfix JS -->
    <script src="../assets/js/headerfix.js"></script>
    <%--<form id="form1" runat="server">
        <div>
        </div>
    </form>--%>
</body>
</html>

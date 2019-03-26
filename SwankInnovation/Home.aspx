<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SwankInnovation.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <!-- Basic Page Needs
  ================================================== -->
    <title>SIPL RMS| Home</title>
    <meta name="keywords" content="HTML5 Template" />
    <meta name="description" content="Cooking HTML5 Template - v1.0" />
    <meta name="author" content="" />
    <!-- Mobile Specific Meta
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <!-- All Css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/icofont.css" media="screen" />
    <!--Owl Carousel-->
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/owl.theme.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/owl.transitions.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/settings.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
    <style type="text/css">
        .auto-style1 {
            left: -32px;
            top: -12px;
            width: 87px;
            height: 77px;
        }

        .auto-style2 {
            left: 16px;
            top: -11px;
            width: 73px;
            height: 74px;
        }

        .auto-style3 {
            left: 0px;
            top: 0px;
        }
    </style>
</head>
<body class="body-innerwrapper" style="background-image: url(Swank/wallpaper.wiki-Office-background-1920x1080-PIC-WPC008188.jpeg); background-repeat: no-repeat; background-size: cover">
    <form runat="server" style="text-align:center">
        <div class="container-fluid" style="margin-top:200px;margin-left:40%;margin-bottom:-10%">
            <div class="row">
                <%--<div class="col-md-9 banner-block text-center" style="margin-top: 250px">
                    <div>
                        <img src="assets/img/logo-black.png" alt="logo" height:"100px" width:"200px" />
                    </div>
                    <h1 style="color: darkmagenta">Report Management System</h1>
                    <div>
                        <a href="AdminLoginPage.aspx" class="btn">Admin Login</a>
                        <a href="EmployeeLogin.aspx" class="btn">Employee Login</a>
                    </div>
                </div>--%>
                <div class="col-md-3">
                    <div class="form-group">
                        <label class="form-label">Employee ID</label>
                        <asp:DropDownList ID="DropDownList1" class="form-control" OnTextChanged="DropDownList1_TextChanged" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                        <br />
                        <asp:Label ID="Label2" Visible="false" runat="server"></asp:Label>
                        <br />
                        <asp:Label ID="Label3" Visible="false" runat="server"></asp:Label>
                        <asp:Label ID="Label1" Visible="false" runat="server"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="form-label" style="color:deeppink">In Time</label>
                            <asp:Label ID="txtdate" Visible="false" runat="server" />
                            <asp:Button runat="server" Text="Entry" ID="Button1" OnClick="Button1_Click" type="button" Height="44px" Width="85px" class="btn btn-primary mt-1 mb-1" /><asp:Label ID="Label4" runat="server"></asp:Label>
                            <asp:TextBox ID="TextBox1" Visible="false" runat="server" />
                        </div>
                        <div class="form-group">
                            <label class="form-label" style="color:deeppink">Out Time</label>
                            <asp:Label ID="Label5" Visible="false" runat="server" />
                            <asp:Button runat="server" Text="Exit" ID="Button2" OnClick="Button2_Click" type="button" Height="44px" Width="85px" class="btn btn-primary mt-1 mb-1" /><asp:Label ID="Label6" runat="server"></asp:Label>
                            <asp:TextBox ID="TextBox2" Visible="false" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:Label ID="Label7" runat="server" Visible="false" Text="Label"></asp:Label>
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <footer class="footer text-center" style="background-color: darkmagenta; margin-top: 400px">
            <p style="color: whitesmoke">© 2019 SIPL RMS Daily Report</p>
        </footer>
        <!-- Scripts -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script src="../../use.fontawesome.com/e18447245b.js"></script>
        <script type="text/javascript" src="js/owl.carousel.js"></script>
        <script type="text/javascript" src="js/appear.js"></script>
        <script type="text/javascript" src="js/custom.js"></script>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SwankInnovation.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0' />
    <meta content="Fully Responsive Bootstrap 4 Admin Dashboard Template" name="description" />
    <meta content="Spruko" name="author" />
    <%--  --%>
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

    <!-- Dashboard CSS -->
    <link href="../assets/css-dark/dashboard.css" rel="stylesheet" type="text/css" />

    <!-- Tabs CSS -->
    <link href="../assets/plugins/tabs/style.css" rel="stylesheet" type="text/css" />

    <!-- Custom scroll bar css-->
    <link href="../assets/plugins/customscroll/jquery.mCustomScrollbar.css" rel="stylesheet" />

    <!-- Horizontal Css -->
    <link href="../assets/plugins/horizontal-menu/dropdown-effects/fade-down.css" rel="stylesheet" />
    <link href="../assets/plugins/horizontal-menu/webslidemenu-dark.css" rel="stylesheet" />
</head>
<body class="app sidebar-mini rtl">
    <div id="global-loader"></div>
    <div class="page">
        <div class="page-main">
            <!-- app-content-->
            <div class="app-content ">
                <div class="app-content ">
                    <div class="side-app">
                        <div class="main-content">
                            <!-- Top navbar -->
                            <form class="navbar-search navbar-search-dark form-inline ml-3  mr-lg-auto">
                            </form>
                            <center>
						<div class="container">
							 <div class="col-md-9 banner-block text-center" style="margin-top: 100px">
                    <div>
                        <img src="assets/img/logo-black.png" alt="logo" height:"100px" width:"200px" />
                    </div>
                    <h1 style="color:deeppink">Report Management System</h1>
                    <div>
                        <a href="AdminLoginPage.aspx" style="background-color:wheat" class="btn">Admin Login</a>
                        <a href="EmployeeLogin.aspx" style="background-color:wheat" class="btn">Employee Login</a>
                    </div>
                </div>
							<%--<div class="row finance-content" style="margin-top:50px">
								<div class="col-xl-3 col-md-6">
									<div class="card shadow text-center">
										<div class="card-body">
											<h3 class="mb-3">Gross profit Margin</h3>
											<div class="chart-circle" data-value="0.75" data-thickness="10" data-color="#ad59ff"><canvas width="128" height="128"></canvas>
												<div class="chart-circle-value"><div class="text-xxl">75% </div></div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-3 col-md-6">
									<div class="card shadow text-center">
										<div class="card-body">
											<h3 class="mb-3">Opex Ratio</h3>
											<div class="chart-circle" data-value="0.55" data-thickness="10" data-color="#00d9bf"><canvas width="128" height="128"></canvas>
												<div class="chart-circle-value"><div class="text-xxl">55%</div></div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-3 col-md-6">
									<div class="card shadow text-center">
										<div class="card-body">
											<h3 class="mb-3">Operating Profit Margin</h3>
											<div class="chart-circle" data-value="0.30" data-thickness="10" data-color="#fc0"><canvas width="128" height="128"></canvas>
												<div class="chart-circle-value"><div class="text-xxl">30%</div></div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-3 col-md-6">
									<div class="card shadow text-center">
										<div class="card-body">
											<h3 class="mb-3">Net Profit Margin</h3>
											<div class="chart-circle" data-value="0.45" data-thickness="10" data-color="#00b3ff"><canvas width="128" height="128"></canvas>
												<div class="chart-circle-value"><div class="text-xxl">45%</div></div>
											</div>
										</div>
									</div>
								</div>
							</div>--%>							
						</div>
                                    </center>
                        </div>
                    </div>
                </div>
                <!-- app-content-->
            </div>
        </div>
        <!-- Back to top -->
        <a href="#top" id="back-to-top"><i class="fa fa-angle-up"></i></a>

        <!-- Adon Scripts -->

        <!-- Core -->
        <script src="../assets/plugins/jquery/dist/jquery.min.js"></script>
        <script src="../assets/js-dark/popper.js"></script>
        <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="../assets/plugins/chart-circle/circle-progress.min.js"></script>

        <!-- Optional JS -->
        <script src="../assets/plugins/chart.js/dist/Chart.min.js"></script>
        <script src="../assets/plugins/chart.js/dist/Chart.extension.js"></script>

        <!-- Horizontal-Menu Js-->
        <script src="../assets/plugins/horizontal-menu/webslidemenu.js"></script>

        <!-- Custom scroll bar Js-->
        <script src="../assets/plugins/customscroll/jquery.mCustomScrollbar.concat.min.js"></script>

        <!-- peitychart -->
        <script src="../assets/plugins/peitychart/jquery.peity.min.js"></script>
        <script src="../assets/plugins/peitychart/peitychart.init.js"></script>

        <!-- Adon JS -->
        <script src="../assets/js-dark/custom.js"></script>
        <script src="../assets/js-dark/dashboard-finance.js"></script>
</body>
</html>

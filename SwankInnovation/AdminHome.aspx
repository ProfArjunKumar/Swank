<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="SwankInnovation.AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">







    	<!-- Page content -->
						<div class="container-fluid pt-8">
							<div class="page-header mt-0 shadow p-4">
								<h3 class="mb-sm-0">DASHBOARD</h3>
								<ol class="breadcrumb mb-0">
									<li class="breadcrumb-item"><a href="#"><i class="fe fe-home"></i></a></li>
									<li class="breadcrumb-item active" aria-current="page">QUICK LINKS</li>
								</ol>
							</div>
							<div class="row">
							
								<div class="col-sm-6 col-lg-6 col-xl-3">
									<div class="card shadow text-center">
										<div class="card-body">
											<div class="mx-auto server">
												<i class="fas fa-business-time icon text-info"></i>
											</div>
											
											<div class="options mt-3">
												<a href="AddEmployee.aspx" class="btn btn-info btn-sm"><i class="glyphicon glyphicon-search"></i>
                                                   Add Employees</a>
											</div>
										</div>
									</div>
								</div>


                                	<div class="col-sm-6 col-lg-6 col-xl-3">
									<div class="card shadow text-center">
										<div class="card-body">
											<div class="mx-auto server">
												<i class="fas fa-business-time icon text-info"></i>
											</div>
											
											<div class="options mt-3">
												<a href="Callletter.aspx" class="btn btn-info btn-sm"><i class="glyphicon glyphicon-search"></i>
                                                   call Letter</a>
											</div>
										</div>
									</div>
								</div>


                                	<div class="col-sm-6 col-lg-6 col-xl-3 ">
									<div class="card shadow text-center">
										<div class="card-body">
											<div class="text-center mx-auto server">
												 <i class="fas fa-user icon text-primary"></i>
											</div>
											
											<div class="options mt-3">
												<a href="Reporting.aspx" class="btn btn-primary btn-sm"><i class="glyphicon glyphicon-search"></i> 
                                                   Reporting</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-lg-6 col-xl-3">
									<div class="card shadow text-center">
										<div class="card-body">
											<div class="mx-auto server">
												<i class="fas fa-dollar-sign icon text-success"></i>
											</div>
											
											<div class="options mt-3">
												<a href="Password.aspx" class="btn btn-success btn-sm"><i class="glyphicon glyphicon-search"></i> 
                                                    Add Users</a>
											</div>
										</div>
									</div>
								</div>
								
							</div>
                            	</div>


						
</asp:Content>

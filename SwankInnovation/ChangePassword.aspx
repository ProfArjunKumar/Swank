<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="SwankInnovation.ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        b{
            color:red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow">
                <div class="card-header">
                    <div>
                        <h1 class="mb-sm-0" style="color: blueviolet; text-align: center">Create Password</h1>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Curent Password<b>*</b></label>
                                <asp:TextBox runat="server" ID="txtusername" type="text" class="form-control" name="example-text-input" placeholder="Password" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtusername" ErrorMessage="Please enter Current Password!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">New Password<b>*</b></label>
                                <asp:TextBox runat="server" ID="txtpwd" type="text" class="form-control" name="example-text-input" TextMode="Password" placeholder="New Password" />
                                <asp:RequiredFieldValidator ID="passwordReq"
                                    runat="server"
                                    ControlToValidate="txtpwd"
                                    SetFocusOnError="True" Display="Dynamic" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtpwd" ErrorMessage="Please enter new Password!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Confirm Password<b>*</b></label>
                                <asp:TextBox runat="server" ID="txtcpwd" type="text" class="form-control" TextMode="Password" name="example-text-input" placeholder="Confirm Password" />
                                <asp:RequiredFieldValidator ID="confirmPasswordReq"
                                    runat="server"
                                    ControlToValidate="txtcpwd"
                                    SetFocusOnError="True"
                                    Display="Dynamic" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtcpwd" ErrorMessage="Please enter Confirm Password!" />
                            </div>
                            <asp:CompareValidator ID="comparePasswords"
                                runat="server"
                                ControlToCompare="txtpwd"
                                ControlToValidate="txtcpwd"
                                ErrorMessage="Your passwords do not match up!"
                                Display="Dynamic" />
                            <asp:Button runat="server" Text="Submit" ID="btnSubmit" type="button" class="btn btn-primary mt-1 mb-1" OnClick="btnSubmit_Click" />
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:Label runat="server"></asp:Label>
    </div>
</asp:Content>

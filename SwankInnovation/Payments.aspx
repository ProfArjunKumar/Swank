<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="SwankInnovation.Payments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -ms-flex: 0 0 50%;
            flex: 0 0 50%;
            max-width: 50%;
            left: 1px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow">
                <div class="card-header">
                    <h2 class="mb-0" style="color: darkmagenta; text-align: center">Payments</h2>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Employee ID</label>
                                <asp:DropDownList ID="DropDownList1" class="form-control" OnTextChanged="DropDownList1_TextChanged" AutoPostBack="true" runat="server"></asp:DropDownList>
                                <br />
                                <asp:RequiredFieldValidator ErrorMessage="Select Employee" ForeColor="Red" InitialValue="0" ControlToValidate="DropDownList1" runat="server" />
                                <asp:Label ID="Label2" Visible="false" runat="server"></asp:Label>
                                <br />
                                <asp:Label ID="Label3" Visible="false" runat="server"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label class="form-label">TotalDaysPresent</label>
                                <asp:TextBox runat="server" ID="txt3" type="text" class="form-control" name="example-text-input" placeholder="Toatal days Present" />
                                <asp:RequiredFieldValidator ErrorMessage="Enter Totalday present" ForeColor="Red" ControlToValidate="txt3" runat="server" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">TotalLeaves</label>
                                <asp:TextBox runat="server" ID="txt4" type="text" class="form-control" name="example-text-input" placeholder="Total Leaves" />
                                <asp:RequiredFieldValidator ErrorMessage="Enter ToatalLeaves" ForeColor="Red" ControlToValidate="txt4" runat="server" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">TotalSalary</label>
                                <asp:TextBox runat="server" ID="txt5" type="text" class="form-control" name="example-text-input" placeholder="Total Salary" />
                                <asp:RequiredFieldValidator ErrorMessage="TotalSalary" ForeColor="Red" ControlToValidate="txt5" runat="server" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">ProvidentFund</label>
                                <asp:TextBox runat="server" ID="txt6" type="text" class="form-control" name="example-text-input" placeholder="Provident Fund" />
                                <asp:RequiredFieldValidator ErrorMessage="Enter ProvidentFund" ForeColor="Red" ControlToValidate="txt6" runat="server" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">EmpSalary</label>
                                <asp:TextBox runat="server" ID="txt7" type="text" class="form-control" name="example-text-input" placeholder="Employee Salary" />
                                <asp:RequiredFieldValidator ErrorMessage="Enter Salary" ForeColor="Red" ControlToValidate="txt7" runat="server" />
                            </div>
                        </div>
                    </div>
                    <center>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary mt-1 mb-1" Text="Submit" OnClick="btnSubmit_Click1"/>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </div>
                        </div>
                  </center>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

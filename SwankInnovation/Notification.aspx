<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Notification.aspx.cs" Inherits="SwankInnovation.Compliant" %>

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
                        <h1 class="mb-sm-0" style="color: blueviolet; text-align: center">Notification</h1>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Employee ID</label>
                                <asp:DropDownList ID="DropDownList1" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Employee Id" InitialValue="0" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:Label ID="Label1" Visible="false" runat="server"></asp:Label>
                                <br />
                                <asp:Label ID="Label3" runat="server" Visible="false"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Subject<b>*</b></label>
                                <asp:TextBox runat="server" ID="TextBox1" type="text" TextMode="MultiLine" class="form-control" name="example-text-input" placeholder="v" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtusername" ErrorMessage="Please enter Subject!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Summary<b>*</b></label>
                                <asp:TextBox runat="server" ID="txtusername" type="text" TextMode="MultiLine" class="form-control" name="example-text-input" placeholder="Complaint" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtusername" ErrorMessage="Please enter complaint!" />
                            </div>
                             
                             <div class="form-group">
                                <label class="form-label">By<b>*</b></label>
                                <asp:TextBox runat="server" ID="TextBox2" type="text" TextMode="MultiLine" class="form-control" name="example-text-input" placeholder="by" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtusername" ErrorMessage="Please enter by!" />
                            </div>
                            <asp:Button runat="server" Text="Submit" ID="btnSubmit" type="button" class="btn btn-primary mt-1 mb-1" OnClick="btnSubmit_Click" />
                            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

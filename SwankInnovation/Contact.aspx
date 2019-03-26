<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SwankInnovation.Contact" %>

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
                    <h2 class="mb-0" style="color: darkmagenta; text-align: center">Contacts</h2>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Name</label>
                                <asp:TextBox runat="server" ID="txt1" type="text" class="form-control" name="example-text-input" placeholder="Name" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Mobile</label>
                                <asp:TextBox runat="server" ID="txt2" type="text" class="form-control" name="example-text-input" placeholder="Mobile" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                    ErrorMessage="Submit 10 Digit Number" ForeColor="Red" ControlToValidate="txt2"
                                    ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Servies</label>
                                <asp:TextBox runat="server" ID="txt4" type="text" class="form-control" name="example-text-input" placeholder="Servies" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Gender</label>
                                <div class="custom-control custom-radio mb-3">
                                    <asp:RadioButtonList ID="radio1" runat="server">
                                        <asp:ListItem Text="Male" Value="Male" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                        </div>
                    </div>
                    <center>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary mt-1 mb-1" Text="Submit" OnClick="Button1_Click"/>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </div>
                        </div>
                  </center>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

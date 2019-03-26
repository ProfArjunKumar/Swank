<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="EvngBreak.aspx.cs" Inherits="SwankInnovation.EvngBreak" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <h1 class="mb-sm-0" style="color: blueviolet; text-align: center">Evening Break</h1>
    </div>
    <hr />
    <table class="table row table-borderless w-100 m-0 ">
        <tbody class="col-lg-6 p-0">
            <tr>
                <td><strong>Employee ID :</strong><asp:Label ID="Label3" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><strong>Employee Name :</strong><asp:Label ID="Label4" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><strong>Designation :</strong><asp:Label ID="Label5" runat="server"></asp:Label></td>
                </tr>
            <tr>
                <asp:TextBox runat="server" ID="TextBox1" Visible="false"></asp:TextBox>
            </tr>
            <tr>
                <asp:TextBox runat="server" ID="TextBox2" Visible="false"></asp:TextBox>
            </tr>
        </tbody>
    </table>
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Start Time</label>
                                <asp:Button runat="server" Text="Submit" ID="Button1" type="button" class="btn btn-primary mt-1 mb-1" CssClass="auto-style1" OnClick="Button1_Click" /><asp:Label ID="Label1" runat="server"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label class="form-label">End Time</label>
                                <asp:Button runat="server" Text="Submit" ID="Button2" type="button" class="btn btn-primary mt-1 mb-1" CssClass="auto-style2" OnClick="Button2_Click" /><asp:Label ID="Label2" runat="server"></asp:Label>
                            </div>
                        </iv>
                    </div>
                </div>
            </div>d
        </div>
    </div>
</asp:Content>

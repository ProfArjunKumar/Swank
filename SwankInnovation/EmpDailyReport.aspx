<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="EmpDailyReport.aspx.cs" Inherits="SwankInnovation.EmpDailyReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1 class="mb-sm-0" style="color: blueviolet; text-align: center">Employee Daily Reports</h1>
    </div>
    <hr />
    <table class="table row table-borderless w-100 m-0 ">
        <tbody class="col-lg-6 p-0">
            <tr>
                <td><strong>Employee ID :</strong><asp:Label ID="Label1" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><strong>Employee Name :</strong><asp:Label ID="Label2" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><strong>Designation :</strong><asp:Label ID="Label3" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Visible="false"></asp:TextBox>
                </td>
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
                                <label class="form-label">Daily Work</label>
                                <asp:Label ID="Label7" Visible="false" runat="server" />
                                <asp:TextBox ID="TextBox3" TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ErrorMessage="Enter Today Work" ID="r23" ForeColor="Red" ControlToValidate="TextBox3" runat="server" />
                            </div>
                            <div>
                                <asp:Button runat="server" Text="Submit" ID="Button2" type="button" class="btn btn-primary mt-1 mb-1" OnClick="Button2_Click1" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

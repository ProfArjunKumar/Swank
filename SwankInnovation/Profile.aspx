<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="SwankInnovation.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1 class="mb-sm-0" style="color: blueviolet; text-align: center">My Profile</h1>
    </div>
    <hr />
    <br />
    <br />
    <div class="row">
        <div class="col-md-6">
            <div class=" card-profile">
                <div class="row justify-content-center">
                    <div class="">
                        <div class="">
                            <a href="#">
                                <asp:Image ID="Image1" runat="server" class="rounded" alt="profile" Height="250px" Width="200px" ImageUrl="Photo" />
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6" style="margin-left: -100px">
            <table class="table row table-borderless w-100 m-0 ">
                <tbody class="col-lg-6 p-0">
                    <tr>
                        <td><strong>Employee ID :</strong>
                            <asp:Label ID="Label1" ForeColor="Purple" runat="server"></asp:Label></td>

                        <td><strong>Employee Name :</strong>
                            <asp:Label ForeColor="Purple" ID="Label2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><strong>Designation :</strong><asp:Label ForeColor="Purple" ID="Label4" runat="server"></asp:Label></td>
                        <td><strong>Email :</strong><asp:Label ID="Label3" runat="server" ForeColor="Purple"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><strong>Mobile :</strong><asp:Label ID="Label5" ForeColor="Purple" runat="server"></asp:Label></td>
                        <td><strong>Gender :</strong><asp:Label ID="Label6" ForeColor="Purple" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><strong>City :</strong><asp:Label ID="Label8" ForeColor="Purple" runat="server"></asp:Label></td>
                        <td><strong>Qualification :</strong><asp:Label ID="Label7" ForeColor="Purple" runat="server"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="ViewComplaint.aspx.cs" Inherits="SwankInnovation.ViewComplaint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:BoundField DataField="EmployeeId" HeaderText="EmployeeID" />
            <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName" />
            <asp:BoundField DataField="Complaint" HeaderText="Complaint" />
            <asp:BoundField DataField="TDate" HeaderText="Date" />
        </Columns>
    </asp:GridView>
</asp:Content>

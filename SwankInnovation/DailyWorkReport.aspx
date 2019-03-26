<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DailyWorkReport.aspx.cs" Inherits="SwankInnovation.DailyWorkReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="EmpNo" HeaderText="EmployeeId" SortExpression="EmployeeId" />
                <asp:BoundField DataField="EmpName" HeaderText="EmployeeName" SortExpression="EmployeeName" />
                <asp:BoundField DataField="Assignment" HeaderText="Assignment" SortExpression="Assignment" />
                <asp:BoundField DataField="DailyWork" HeaderText="DailyWork" SortExpression="DailyWork" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:d}" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
            </center>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Swank %>" SelectCommand="SELECT [EmpNo], [EmpName], [Assignment], [DailyWork], [Date] FROM [WorkAssign]"></asp:SqlDataSource>
    </div>
</asp:Content>

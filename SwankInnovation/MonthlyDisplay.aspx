<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="MonthlyDisplay.aspx.cs" Inherits="SwankInnovation.MonthlyReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1 class="mb-sm-0" style="color: blueviolet; text-align: center">Monthly Review</h1>
    </div>
    <hr />
    <div style="overflow-x: auto">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="EmpID" HeaderText="Emp ID" />
                <asp:BoundField DataField="Name" HeaderText="Emp Name" />
                <asp:BoundField DataField="Date" HeaderText="Date" />
                <asp:BoundField DataField="Dressing" HeaderText="Dressing" />
                <asp:BoundField DataField="Attitude" HeaderText="Attitude" />
                <asp:BoundField DataField="Attendence" HeaderText="Attedndence" />
                <asp:BoundField DataField="Independentwork" HeaderText="Independentwork" />
                <asp:BoundField DataField="Presentationskills" HeaderText="Presentationskills" />
                <asp:BoundField DataField="Communicationskills" HeaderText="Communicationskills" />
                <asp:BoundField DataField="TakesInitiative" HeaderText="TakesInitiative" />
                <asp:BoundField DataField="LeadershipQualities" HeaderText="LeadershipQualities" />
                <asp:BoundField DataField="Groupwork" HeaderText="Groupwork" />
                <asp:BoundField DataField="honesty" HeaderText="honesty" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </div>
</asp:Content>
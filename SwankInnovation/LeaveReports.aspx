<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="LeaveReports.aspx.cs" Inherits="SwankInnovation.LeaveReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1 class="mb-sm-0" style="color: blueviolet; text-align: center">Employee Leave Report</h1>
    </div>
    <hr />
    <div class="content-wrapper">
        <div class="container-fluid">
            <div style="overflow-x: auto">
                <center>
                <asp:GridView runat="server" AutoGenerateColumns="False" Width="607px" DataKeyNames="id" CssClass="cstextbox" ID="GridView1" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <Columns>
                        <asp:BoundField DataField="EmployeeId" HeaderText="Employee ID" />
                        <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName" />
                        <asp:BoundField DataField="LeaveReason" HeaderText="Leave Reason" />
                        <asp:BoundField DataField="Nofdays" HeaderText="No Of Days" />
                        <asp:BoundField DataField="Statuss" HeaderText="Status" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:DropDownList runat="server" ID="dropdown1">
                                    <asp:ListItem Text="Approve" />
                                    <asp:ListItem Text="Reject" />
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Reason">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt9" runat="server" Text='<%# Bind("Reason") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Reason") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="true" HeaderText="Edit" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle ForeColor="#003399" HorizontalAlign="Left" BackColor="#99CCCC" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                    </center>
            </div>
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Password.aspx.cs" Inherits="SwankInnovation.Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow">
                <div class="card-header">
                    <div>
                        <h1 class="mb-sm-0" style="color: blueviolet; text-align: center">Add User</h1>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Employee ID</label>
                                <asp:DropDownList ID="DropDownList1" class="form-control" OnTextChanged="DropDownList1_TextChanged" AutoPostBack="true" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Employee Id" InitialValue="0" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:Label ID="Label1" Visible="false" runat="server"></asp:Label>
                                <br />
                                <asp:Label ID="Label3" runat="server" Visible="false"></asp:Label>
                            </div>
                            <hr />
                            <div class="form-group">
                                <label class="form-label">Username</label>
                                <asp:TextBox runat="server" ID="txtusername" type="text" class="form-control" name="example-text-input" placeholder="Usename" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtusername" ErrorMessage="Please enter Username!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Password</label>
                                <asp:TextBox runat="server" ID="txtpwd" type="text" class="form-control" name="example-text-input" TextMode="Password" placeholder="Password" />
                                <asp:RequiredFieldValidator ID="passwordReq"
                                    runat="server"
                                    ControlToValidate="txtpwd"
                                    SetFocusOnError="True" Display="Dynamic" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtpwd" ErrorMessage="Please enter Password!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Confirm Password</label>
                                <asp:TextBox runat="server" ID="txtcpwd" type="text" class="form-control" TextMode="Password" name="example-text-input" placeholder="Confirm Password" />
                                <asp:RequiredFieldValidator ID="confirmPasswordReq"
                                    runat="server"
                                    ControlToValidate="txtcpwd"
                                    SetFocusOnError="True"
                                    Display="Dynamic" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtcpwd" ErrorMessage="Please enter Confirm Password!" />
                            </div>
                            <asp:CompareValidator ID="comparePasswords"
                                runat="server"
                                ControlToCompare="txtpwd"
                                ControlToValidate="txtcpwd"
                                ErrorMessage="Your passwords do not match up!"
                                Display="Dynamic" />
                            <asp:Button runat="server" Text="Submit" ID="btnSubmit" type="button" class="btn btn-primary mt-1 mb-1" OnClick="btnSubmit_Click" />
                        </div>
                    </div>
                </div>
                <div>
                    <center>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="EmployeeId" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="EmployeeId" HeaderText="EmployeeId" ReadOnly="True" SortExpression="EmployeeId" />
                            <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName" SortExpression="EmployeeName" />
                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                            <asp:BoundField DataField="Paassword" HeaderText="Paassword" SortExpression="Paassword" />
                            <asp:BoundField DataField="confpass" HeaderText="confpass" SortExpression="confpass" />
                            <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Swank %>" SelectCommand="SELECT [EmployeeId], [EmployeeName], [Username], [Paassword], [confpass], [Designation] FROM [AddEmployee]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

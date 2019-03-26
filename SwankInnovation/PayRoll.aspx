<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="PayRoll.aspx.cs" Inherits="SwankInnovation.PayRoll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow">
                <div class="card-header">
                    <h2 class="mb-0" style="color: darkmagenta; text-align: center">PayRoll</h2>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Year</label>
                                <asp:DropDownList ID="drp1" class="form-control" runat="server">
                                    <asp:ListItem Text="select" Value="0">
                                        
                                    </asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ErrorMessage="Select Year" ID="r1" InitialValue="0" ForeColor="Red" ControlToValidate="drp1" runat="server" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Month</label>
                                <asp:DropDownList ID="DropDownList1" class="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ErrorMessage="Select Month" ID="r2" InitialValue="0" ForeColor="Red" ControlToValidate="DropDownList1" runat="server" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Total Days</label>
                                <asp:TextBox runat="server" ID="txt2" type="text" ReadOnly="true" class="form-control" name="example-text-input" placeholder="Toatal Days" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">WeakDays</label>
                                <asp:TextBox runat="server" ID="txt3" type="text" class="form-control" ReadOnly="true" name="example-text-input" placeholder="Weakdays" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">WeakOff</label>
                                <asp:TextBox runat="server" ID="txt4" type="text" class="form-control" name="example-text-input" ReadOnly="true" placeholder="WeakOff" />
                            </div>
                        </div>
                    </div>
                    <center>
                        <div class="col-md-6">     
                           <asp:TextBox ID="TextBox2" Visible="false" runat="server"></asp:TextBox>
                           <asp:Label ID="Label5" runat="server" Visible="false"></asp:Label>
                        </div>
                        <div class="form-group">
                        <asp:Button ID="Button1" runat="server" Text="Select" CssClass="btn btn-primary mt-1 mb-1" CausesValidation="false" OnClick="Button1_Click"></asp:Button>
                        <div>
                            </div>
                            <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                <Columns>
                                    <asp:TemplateField HeaderText="Employee ID">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" ReadOnly="true" Text='<%# Bind("EmployeeId") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("EmployeeId") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Employee Name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" ReadOnly="true" Text='<%# Bind("EmployeeName") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("EmployeeName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Basic Salary">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" Text='<%# Bind("BasicSalary") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Weakdays">
                                        <ItemTemplate>
                                            <asp:Textbox ID="txt" Text="" ReadOnly="true" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Present Days">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox1" AutoPostBack="true" OnTextChanged="TextBox1_TextChanged" runat="server"></asp:TextBox>
                                            <asp:requiredfieldvalidator errormessage="Enter Presentdays" controltovalidate="TextBox1" ForeColor="Red" runat="server"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Total Salary">
                                        <ItemTemplate>
                                          <asp:Textbox ID="txttotal" Text="" ReadOnly="true" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                        <div class="form-group">
                                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" CssClass="btn btn-primary mt-1 mb-1" Text="Submit" />
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </div>
                  </center>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

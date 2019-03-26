<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="SwankInnovation.AddEmployee" %>

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
        b{
            color:red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow">
                <div class="card-header">
                    <h2 class="mb-0" style="color: darkmagenta; text-align: center">Add Employee</h2>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Employee ID</label>
                                <asp:TextBox runat="server" ID="txt1" type="text" ReadOnly="true" class="form-control" name="example-text-input" />
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </div>
                            
                            <div class="form-group">
                                <label class="form-label">Designation<b>*</b></label>
                                <asp:TextBox runat="server" ID="txtdsgntion" type="text" class="form-control" name="example-text-input" placeholder="Designation" />
                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ID="RequiredFieldValidator1" ControlToValidate="txtdsgntion" ErrorMessage="Please enter your Designation!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Mobile<b>*</b></label>
                                <asp:TextBox runat="server" ID="txt4" type="text" class="form-control" name="example-text-input" placeholder="Mobile" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server"
                                    ErrorMessage="Submit 10 Digit Number*" ForeColor="Red" ControlToValidate="txt4"
                                    ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" Display="Dynamic" ForeColor="Red" ControlToValidate="txt4" ErrorMessage="Please enter Mobile No*" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Emergency No<b>*</b></label>
                                <asp:TextBox runat="server" ID="TextBox2" type="text" class="form-control" name="example-text-input" placeholder="Emergency No" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" runat="server"
                                    ErrorMessage="Submit 10 Digit Number*" ForeColor="Red" ControlToValidate="txt4"
                                    ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" Display="Dynamic" ForeColor="Red" ControlToValidate="txt4" ErrorMessage="Please enter Mobile No*" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Alternate No</label>
                                <asp:TextBox runat="server" ID="TextBox3" type="text" class="form-control" name="example-text-input" placeholder="Alternate No" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Basic Salary<b>*</b></label>
                                <asp:TextBox runat="server" ID="TextBox1" type="text" class="form-control" name="example-text-input" placeholder="Basic Salary" />
                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator7" ControlToValidate="TextBox1" ErrorMessage="Please enter Basic Salary!" />
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server"
                                    ErrorMessage="Enter Valid Details" ForeColor="Red" ControlToValidate="TextBox1"
                                    ValidationExpression="^[0-9]{4,6}$"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Photo<b>*</b></label>
                                <asp:FileUpload ID="fileupload1" runat="server" type="file" class="dropify" data-max-file-size="1M" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Employee Name<b>*</b></label>
                                <asp:TextBox runat="server" ID="txt2" type="text" class="form-control" name="example-text-input" placeholder="Name" />
                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ID="reqName" ControlToValidate="txt2" ErrorMessage="Please enter name!" />
                            </div>
                            
                            <div class="form-group">
                                <label class="form-label">Email<b>*</b></label>
                                <asp:TextBox runat="server" ID="txt3" type="text" class="form-control" name="example-text-input" placeholder="Email" />
                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ID="RequiredFieldValidator2" Display="Dynamic" ControlToValidate="txt3" ErrorMessage="Please enter mail!" />
                                <asp:RegularExpressionValidator ErrorMessage="Enter Correct Email Id" ControlToValidate="txt3" Display="Dynamic" runat="server" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" EnableViewState="False" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Qualification<b>*</b></label>
                                <asp:TextBox runat="server" ID="txtqulfction" type="text" class="form-control" name="example-text-input" placeholder="Qualification" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtqulfction" ErrorMessage="Please enter Qualification!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Present Address<b>*</b></label>
                                <asp:TextBox runat="server" ID="txtaddress" TextMode="MultiLine" type="text" class="form-control" name="example-text-input" placeholder="Address" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txtaddress" ErrorMessage="Please enter address!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Permanent Address</label>
                                <asp:TextBox runat="server" ID="txtcity" type="text" class="form-control" name="example-text-input" placeholder="Permanent Address" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="txtcity" ErrorMessage="Permanent Address!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Gender<b>*</b></label>
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
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary mt-1 mb-1" Text="Submit" OnClick="btnSubmit_Click" />
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </div>
                        </div>
                  </center>
                    <div style="overflow-x: auto">
                        <center>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="EmployeeId" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="EmployeeId" HeaderText="EmployeeId" ReadOnly="True" SortExpression="EmployeeId" />
                                <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName" SortExpression="EmployeeName" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                                <asp:BoundField DataField="Qualification" HeaderText="Qualification" SortExpression="Qualification" />
                                <asp:BoundField DataField="Aaddress" HeaderText="Address" SortExpression="Address" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                <asp:BoundField DataField="Paassword" HeaderText="Password" SortExpression="Password" />
                                <asp:BoundField DataField="confpass" HeaderText="Confirm Password" SortExpression="Confirm Password" />
                                <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />
                                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                                <asp:BoundField DataField="city" HeaderText="City" SortExpression="City" />
                                <asp:BoundField DataField="BasicSalary" HeaderText="Basic Salary" SortExpression="Basic Salary" />
                                <asp:CommandField ShowDeleteButton="True" CausesValidation="false" ShowEditButton="True" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Swank %>" DeleteCommand="DELETE FROM [AddEmployee] WHERE [EmployeeId] = @EmployeeId" InsertCommand="INSERT INTO [AddEmployee] ([EmployeeId], [EmployeeName], [Email], [Mobile], [Qualification], [Aaddress], [Gender], [Username], [Paassword], [Photo], [confpass], [Designation], [city], [BasicSalary]) VALUES (@EmployeeId, @EmployeeName, @Email, @Mobile, @Qualification, @Aaddress, @Gender, @Username, @Paassword, @Photo, @confpass, @Designation, @city, @BasicSalary)" SelectCommand="SELECT [EmployeeId], [EmployeeName], [Email], [Mobile], [Qualification], [Aaddress], [Gender], [Username], [Paassword], [Photo], [confpass], [Designation], [city], [BasicSalary] FROM [AddEmployee]" UpdateCommand="UPDATE [AddEmployee] SET [EmployeeName] = @EmployeeName, [Email] = @Email, [Mobile] = @Mobile, [Qualification] = @Qualification, [Aaddress] = @Aaddress, [Gender] = @Gender, [Username] = @Username, [Paassword] = @Paassword, [Photo] = @Photo, [confpass] = @confpass, [Designation] = @Designation, [city] = @city, [BasicSalary] = @BasicSalary WHERE [EmployeeId] = @EmployeeId">
                            <DeleteParameters>
                                <asp:Parameter Name="EmployeeId" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="EmployeeId" Type="String" />
                                <asp:Parameter Name="EmployeeName" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Mobile" Type="Int64" />
                                <asp:Parameter Name="Qualification" Type="String" />
                                <asp:Parameter Name="Aaddress" Type="String" />
                                <asp:Parameter Name="Gender" Type="String" />
                                <asp:Parameter Name="Username" Type="String" />
                                <asp:Parameter Name="Paassword" Type="String" />
                                <asp:Parameter Name="Photo" Type="String" />
                                <asp:Parameter Name="confpass" Type="String" />
                                <asp:Parameter Name="Designation" Type="String" />
                                <asp:Parameter Name="city" Type="String" />
                                <asp:Parameter Name="BasicSalary" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="EmployeeName" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Mobile" Type="Int64" />
                                <asp:Parameter Name="Qualification" Type="String" />
                                <asp:Parameter Name="Aaddress" Type="String" />
                                <asp:Parameter Name="Gender" Type="String" />
                                <asp:Parameter Name="Username" Type="String" />
                                <asp:Parameter Name="Paassword" Type="String" />
                                <asp:Parameter Name="Photo" Type="String" />
                                <asp:Parameter Name="confpass" Type="String" />
                                <asp:Parameter Name="Designation" Type="String" />
                                <asp:Parameter Name="city" Type="String" />
                                <asp:Parameter Name="BasicSalary" Type="String" />
                                <asp:Parameter Name="EmployeeId" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

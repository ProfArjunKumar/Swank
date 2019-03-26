<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Interview.aspx.cs" Inherits="SwankInnovation.Interview" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow">
                <div>
                    <h1 class="mb-sm-0" style="color: blueviolet; text-align: center">Interview</h1>
                </div>
                <hr />
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <%--                            <div class="form-group">
                                <label class="form-label">ID</label>
                                <asp:TextBox runat="server" ID="TextBox2" type="text" ReadOnly="true" class="form-control" name="example-text-input" />
                            </div>--%>
                            <div class="form-group">
                                <label class="form-label">Name</label>
                                <asp:TextBox runat="server" ID="txt1" type="text" class="form-control" name="example-text-input" placeholder="Name" />
                                <asp:RequiredFieldValidator runat="server" ID="rr1" ForeColor="Red" ControlToValidate="txt1" ErrorMessage="Please enter Name!" />
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Qualification</label>
                                <asp:TextBox runat="server" ID="txt2" type="text" class="form-control" name="example-text-input" placeholder="Qualification" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txt2" ErrorMessage="Please enter Qualifiacation!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Mobile</label>
                                <asp:TextBox runat="server" ID="txt3" type="text" class="form-control" name="example-text-input" placeholder="Mobile" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                    ErrorMessage="Submit 10 Digit Number" ForeColor="Red" ControlToValidate="txt3"
                                    ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txt3" ErrorMessage="Please enter Mobile No!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Resume</label>
                                <asp:FileUpload ID="fileupload1" runat="server" type="file" class="dropify" data-max-file-size="1M" />
                                <asp:Image ID="Image1" runat="server" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Gender</label>
                                <div class="custom-control custom-radio mb-3">
                                    <asp:RadioButtonList ID="radio1" runat="server">
                                        <asp:ListItem Text="Male" Value="Male" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Interviewer Name</label>
                                <asp:TextBox runat="server" ID="txt4" type="text" class="form-control" name="example-text-input" placeholder="Interviewer Name" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txt4" ErrorMessage="Please enter Interviewer Name!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Email</label>
                                <asp:TextBox runat="server" ID="txt5" type="text" class="form-control" name="example-text-input" placeholder="Email" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txt5" ErrorMessage="Please enter Email!" />
                                <asp:RegularExpressionValidator ErrorMessage="Enter Correct EmailID" ControlToValidate="txt5" runat="server" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Address</label>
                                <asp:TextBox runat="server" ID="txt6" type="text" TextMode="MultiLine" class="form-control" name="example-text-input" placeholder="Address" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="txt6" ErrorMessage="Please enter Address!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Designation</label>
                                <asp:TextBox runat="server" ID="TextBox1" type="text" class="form-control" name="example-text-input" placeholder="Designation" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="TextBox1" ErrorMessage="Please enter Designation!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Status</label>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Value="Accept"></asp:ListItem>
                                    <asp:ListItem Value="Reject"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <center>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary mt-1 mb-1" Text="Submit" OnClick="Button1_Click1"/>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </div>
                        </div>
                  </center>
                    <div style="overflow-x: auto">
                        <center>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="Id" SortExpression="Id" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Qualification" HeaderText="Qualification" SortExpression="Qualification" />
                                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                <asp:BoundField DataField="InterviewerName" HeaderText="InterviewerName" SortExpression="InterviewerName" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:d}" />
                                <asp:BoundField DataField="Resume" HeaderText="Resume" SortExpression="Resume" />
                                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Swank %>" DeleteCommand="DELETE FROM [Interview1] WHERE [id] = @id" InsertCommand="INSERT INTO [Interview1] ([Name], [Qualification], [Mobile], [Gender], [InterviewerName], [Email], [Address], [Date], [Resume], [Designation], [Status]) VALUES (@Name, @Qualification, @Mobile, @Gender, @InterviewerName, @Email, @Address, @Date, @Resume, @Designation, @Status)" SelectCommand="SELECT * FROM [Interview1]" UpdateCommand="UPDATE [Interview1] SET [Name] = @Name, [Qualification] = @Qualification, [Mobile] = @Mobile, [Gender] = @Gender, [InterviewerName] = @InterviewerName, [Email] = @Email, [Address] = @Address, [Date] = @Date, [Resume] = @Resume, [Designation] = @Designation, [Status] = @Status WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Qualification" Type="String" />
                                <asp:Parameter Name="Mobile" Type="Int64" />
                                <asp:Parameter Name="Gender" Type="String" />
                                <asp:Parameter Name="InterviewerName" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Address" Type="String" />
                                <asp:Parameter DbType="Date" Name="Date" />
                                <asp:Parameter Name="Resume" Type="String" />
                                <asp:Parameter Name="Designation" Type="String" />
                                <asp:Parameter Name="Status" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Qualification" Type="String" />
                                <asp:Parameter Name="Mobile" Type="Int64" />
                                <asp:Parameter Name="Gender" Type="String" />
                                <asp:Parameter Name="InterviewerName" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Address" Type="String" />
                                <asp:Parameter DbType="Date" Name="Date" />
                                <asp:Parameter Name="Resume" Type="String" />
                                <asp:Parameter Name="Designation" Type="String" />
                                <asp:Parameter Name="Status" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ExpDocuments.aspx.cs" Inherits="SwankInnovation.ExpDocuments" %>

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
                <div class="card-header">
                    <h2 class="mb-0" style="color: darkmagenta; text-align: center">Experience Documents</h2>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">EId</label>
                                <asp:TextBox runat="server" ID="txt1" type="text" class="form-control" name="example-text-input" placeholder="Id" />
                                <asp:RequiredFieldValidator ErrorMessage="Enter Id" ForeColor="Red" ControlToValidate="txt1" runat="server" />
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Name</label>
                                <asp:TextBox runat="server" ID="txt2" type="text" class="form-control" name="example-text-input" placeholder="Employee Name" />
                                <asp:RequiredFieldValidator ErrorMessage="Enter Name" ForeColor="Red" ControlToValidate="txt2" runat="server" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">From year</label>
                                <asp:TextBox runat="server" ID="txt3" type="text" TextMode="Date" class="form-control" name="example-text-input" />
                                <asp:RequiredFieldValidator ErrorMessage="Select From Year" ForeColor="Red" ControlToValidate="txt3" runat="server" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Relieving Date</label>
                                <asp:TextBox runat="server" ID="txt4" type="text" TextMode="Date" class="form-control" name="example-text-input" />
                                <asp:RequiredFieldValidator ErrorMessage="Select Relieving Date" ForeColor="Red" ControlToValidate="txt4" runat="server" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Designation</label>
                                <asp:TextBox runat="server" ID="txt6" type="text" class="form-control" name="example-text-input" placeholder="Designation" />
                                <asp:RequiredFieldValidator ErrorMessage="Enter Designation" ForeColor="Red" ControlToValidate="txt6" runat="server" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Previous Package</label>
                                <asp:TextBox runat="server" ID="txt8" type="text" class="form-control" name="example-text-input" placeholder="Previous Package" />
                                <asp:RequiredFieldValidator ErrorMessage="Enter Previous Package" ForeColor="Red" ControlToValidate="txt8" runat="server" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">To year</label>
                                <asp:TextBox runat="server" ID="txt7" type="text" TextMode="Date" class="form-control" name="example-text-input" />
                                <asp:RequiredFieldValidator ErrorMessage="Select To Year" ForeColor="Red" ControlToValidate="txt7" runat="server" />
                            </div>
                        </div>
                    </div>
                    <center>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary mt-1 mb-1" Text="Submit" OnClick="btnSubmit_Click"/>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </div>
                        </div>
                  </center>
                </div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                        <asp:BoundField DataField="Fromyear" HeaderText="Fromyear" SortExpression="Fromyear" />
                        <asp:BoundField DataField="Toyear" HeaderText="Toyear" SortExpression="Toyear" />
                        <asp:BoundField DataField="PreviousPackage" HeaderText="PreviousPackage" SortExpression="PreviousPackage" />
                        <asp:BoundField DataField="RelievingDate" HeaderText="RelievingDate" SortExpression="RelievingDate" />
                        <asp:BoundField DataField="EId" HeaderText="EId" SortExpression="EId" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Swank %>" DeleteCommand="DELETE FROM [ExpDocuments] WHERE [id] = @id" InsertCommand="INSERT INTO [ExpDocuments] ([Name], [Date], [Designation], [Fromyear], [Toyear], [PreviousPackage], [RelievingDate], [EId]) VALUES (@Name, @Date, @Designation, @Fromyear, @Toyear, @PreviousPackage, @RelievingDate, @EId)" SelectCommand="SELECT * FROM [ExpDocuments]" UpdateCommand="UPDATE [ExpDocuments] SET [Name] = @Name, [Date] = @Date, [Designation] = @Designation, [Fromyear] = @Fromyear, [Toyear] = @Toyear, [PreviousPackage] = @PreviousPackage, [RelievingDate] = @RelievingDate, [EId] = @EId WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter Name="Designation" Type="String" />
                        <asp:Parameter Name="Fromyear" Type="String" />
                        <asp:Parameter Name="Toyear" Type="String" />
                        <asp:Parameter Name="PreviousPackage" Type="String" />
                        <asp:Parameter Name="RelievingDate" Type="String" />
                        <asp:Parameter Name="EId" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter Name="Designation" Type="String" />
                        <asp:Parameter Name="Fromyear" Type="String" />
                        <asp:Parameter Name="Toyear" Type="String" />
                        <asp:Parameter Name="PreviousPackage" Type="String" />
                        <asp:Parameter Name="RelievingDate" Type="String" />
                        <asp:Parameter Name="EId" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>

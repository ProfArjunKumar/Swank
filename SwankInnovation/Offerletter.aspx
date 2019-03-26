<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Offerletter.aspx.cs" Inherits="SwankInnovation.Offerletter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow">
                <div class="card-header">
                    <h2 class="mb-0" style="color: darkmagenta; text-align: center">Offer Letter</h2>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Select Id</label>
                                <asp:DropDownList ID="drp1" class="form-control" OnSelectedIndexChanged="drp1_SelectedIndexChanged" AutoPostBack="true" runat="server">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="r1" runat="server" ControlToValidate="drp1" InitialValue="-1" ErrorMessage="select Name" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Mobile:</label><asp:TextBox runat="server" ReadOnly="true" ID="TextBox1" type="text" class="form-control" name="example-text-input" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Email:</label>
                                <asp:TextBox runat="server" ID="TextBox2" type="text" ReadOnly="true" class="form-control" name="example-text-input" />
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Designation:</label><asp:TextBox runat="server" ReadOnly="true" ID="TextBox3" type="text" class="form-control" name="example-text-input" />
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Name:</label><asp:TextBox runat="server" ID="TextBox4" type="text" ReadOnly="true" class="form-control" name="example-text-input" />
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Reporting</label>
                                <asp:TextBox runat="server" ID="txtreport" type="text" TextMode="Date" class="form-control" name="example-text-input" placeholder="Mobile" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtreport" ErrorMessage="Please enter Reporting Date!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Joining</label>
                                <asp:TextBox runat="server" ID="txtjoin" type="text" TextMode="Date" class="form-control" name="example-text-input" placeholder="Servies" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtjoin" ErrorMessage="Please enter Joining Date!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Relieving</label>
                                <asp:TextBox runat="server" ID="txtrelieving" type="text" TextMode="Date" class="form-control" name="example-text-input" placeholder="Servies" />
                            </div>
                        </div>
                    </div>
                    <center>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary mt-1 mb-1" Text="Submit" OnClick="Button1_Click"/>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </div>
                        </div>
                  </center>
                    <div>
                        <center>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                                <asp:BoundField DataField="Reporting" HeaderText="Reporting" SortExpression="Reporting" />
                                <asp:BoundField DataField="Joining" HeaderText="Joining" SortExpression="Joining" />
                                <asp:BoundField DataField="Relieving" HeaderText="Relieving" SortExpression="Relieving" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:d}" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CausesValidation="false" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Swank %>" DeleteCommand="DELETE FROM [OfferLetter] WHERE [id] = @id" InsertCommand="INSERT INTO [OfferLetter] ([Name], [Mobile], [Email], [Designation], [Reporting], [Joining], [Relieving], [Date]) VALUES (@Name, @Mobile, @Email, @Designation, @Reporting, @Joining, @Relieving, @Date)" SelectCommand="SELECT * FROM [OfferLetter]" UpdateCommand="UPDATE [OfferLetter] SET [Name] = @Name, [Mobile] = @Mobile, [Email] = @Email, [Designation] = @Designation, [Reporting] = @Reporting, [Joining] = @Joining, [Relieving] = @Relieving, [Date] = @Date WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Mobile" Type="Int64" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Designation" Type="String" />
                                <asp:Parameter Name="Reporting" Type="String" />
                                <asp:Parameter Name="Joining" Type="String" />
                                <asp:Parameter Name="Relieving" Type="String" />
                                <asp:Parameter DbType="Date" Name="Date" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Mobile" Type="Int64" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Designation" Type="String" />
                                <asp:Parameter Name="Reporting" Type="String" />
                                <asp:Parameter Name="Joining" Type="String" />
                                <asp:Parameter Name="Relieving" Type="String" />
                                <asp:Parameter DbType="Date" Name="Date" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

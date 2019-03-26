<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddClient.aspx.cs" Inherits="SwankInnovation.AddClient" %>

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
                    <div>
                        <h1 class="mb-sm-0" style="color: blueviolet; text-align: center">Add Client</h1>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">ID</label>
                                <asp:TextBox runat="server" ID="txt1" type="text" ReadOnly="true" class="form-control" name="example-text-input" placeholder="Enter ID" />
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Contact No*</label>
                                <asp:TextBox runat="server" ID="txt2" type="text" class="form-control" name="example-text-input" placeholder="Contact No" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                    ErrorMessage="Submit 10 Digit Number" ForeColor="Red" ControlToValidate="txt2"
                                    ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txt2" ErrorMessage="Please enter Mobile No!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Email*</label>
                                <asp:TextBox runat="server" ID="txt3" type="text" class="form-control" name="example-text-input" placeholder="Email" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txt3" ErrorMessage="Please enter Email!" />
                                <asp:RegularExpressionValidator ErrorMessage="Enter Correct EmailId" ControlToValidate="txt3" runat="server" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">DeadLine</label>
                                <asp:TextBox runat="server" ID="txt4" type="text" TextMode="MultiLine" class="form-control" name="example-text-input" placeholder="DeadLine" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txt4" ErrorMessage="Please enter DeadLine!" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Company Name*</label>
                                <asp:TextBox runat="server" ID="txt5" type="text" class="form-control" name="example-text-input" placeholder="Company Name" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txt5" ErrorMessage="Please enter Company Name!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Technology</label>
                                <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                    <asp:ListItem Text="select" Value="-1"></asp:ListItem>
                                    <asp:ListItem>DotNet</asp:ListItem>
                                    <asp:ListItem>Java</asp:ListItem>
                                    <asp:ListItem>UI</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="r1" runat="server" ControlToValidate="DropDownList1" InitialValue="-1" ErrorMessage="select Technology" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Project Duration</label>
                                <asp:TextBox runat="server" ID="txt6" type="text" class="form-control" name="example-text-input" placeholder="Project Duration" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="txt6" ErrorMessage="Please enter Project Duration!" />
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
                </div>
                <div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="ClientID" HeaderText="ClientID" SortExpression="ClientID" />
                            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                            <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                            <asp:BoundField DataField="Technology" HeaderText="Technology" SortExpression="Technology" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="ProjectDuration" HeaderText="ProjectDuration" SortExpression="ProjectDuration" />
                            <asp:BoundField DataField="DeadLine" HeaderText="DeadLine" SortExpression="DeadLine" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:d}" />
                            <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" CausesValidation="false" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Swank %>" DeleteCommand="DELETE FROM [ClientPoject] WHERE [id] = @id" InsertCommand="INSERT INTO [ClientPoject] ([ClientID], [CompanyName], [ContactNo], [Technology], [Email], [ProjectDuration], [DeadLine], [Date]) VALUES (@ClientID, @CompanyName, @ContactNo, @Technology, @Email, @ProjectDuration, @DeadLine, @Date)" SelectCommand="SELECT * FROM [ClientPoject]" UpdateCommand="UPDATE [ClientPoject] SET [ClientID] = @ClientID, [CompanyName] = @CompanyName, [ContactNo] = @ContactNo, [Technology] = @Technology, [Email] = @Email, [ProjectDuration] = @ProjectDuration, [DeadLine] = @DeadLine, [Date] = @Date WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ClientID" Type="String" />
                            <asp:Parameter Name="CompanyName" Type="String" />
                            <asp:Parameter Name="ContactNo" Type="Int64" />
                            <asp:Parameter Name="Technology" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="ProjectDuration" Type="String" />
                            <asp:Parameter Name="DeadLine" Type="String" />
                            <asp:Parameter DbType="Date" Name="Date" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ClientID" Type="String" />
                            <asp:Parameter Name="CompanyName" Type="String" />
                            <asp:Parameter Name="ContactNo" Type="Int64" />
                            <asp:Parameter Name="Technology" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="ProjectDuration" Type="String" />
                            <asp:Parameter Name="DeadLine" Type="String" />
                            <asp:Parameter DbType="Date" Name="Date" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

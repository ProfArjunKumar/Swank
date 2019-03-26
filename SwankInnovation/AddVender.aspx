<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddVender.aspx.cs" Inherits="SwankInnovation.AddVender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
                    <div>
                        <h1 class="mb-sm-0" style="color: blueviolet; text-align: center">Add Vendor</h1>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Vender ID</label>
                                <asp:TextBox runat="server" ID="TextBox1" ReadOnly="true" type="text" class="form-control" name="example-text-input" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Email<b>*</b></label>
                                <asp:TextBox runat="server" ID="txt4" type="text" class="form-control" name="example-text-input" placeholder="Email" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txt4" ErrorMessage="Please enter Email!" />
                                <asp:RegularExpressionValidator ErrorMessage="Enter Correct Email Id" ControlToValidate="txt4" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" EnableViewState="False" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Present Address<b>*</b></label>
                                <asp:TextBox runat="server" ID="txt5" type="text" TextMode="MultiLine" class="form-control" name="example-text-input" placeholder="Address" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txt5" ErrorMessage="Please enter Address!" />
                            </div>
                           
                            <div class="form-group">
                                <label class="form-label">Aadharcard</label>
                                <asp:FileUpload ID="fileupload1" runat="server" type="file" class="dropify" data-max-file-size="1M" Width="253px" />
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
                        <div class="col-md-6">
                             <div class="form-group">
                                <label class="form-label">Vender Name<b>*</b></label>
                                <asp:TextBox runat="server" ID="txt2" type="text" class="form-control" name="example-text-input" placeholder="Vendor Name" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txt2" ErrorMessage="Please enter Name!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Mobile<b>*</b></label>
                                <asp:TextBox runat="server" ID="txt3" type="text" class="form-control" name="example-text-input" placeholder="Mobile" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server"
                                    ErrorMessage="Submit 10 Digit Number" ForeColor="Red" ControlToValidate="txt3"
                                    ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" Display="Dynamic" ForeColor="Red" ControlToValidate="txt3" ErrorMessage="Please enter Mobile No!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">City</label>
                                <asp:TextBox runat="server" ID="txt6" type="text" class="form-control" name="example-text-input" placeholder="City" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Pancard No<b>*</b></label>
                                <asp:TextBox runat="server" ID="TextBox2" type="text" class="form-control" name="example-text-input" placeholder="City" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="TextBox2" ErrorMessage="Please enter PancardNo!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">PanCard</label>
                                <asp:FileUpload ID="fileupload2" runat="server" type="file" class="dropify" data-max-file-size="1M" />
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
                <div style="overflow-x: auto; overflow-y: auto">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="VendorID" HeaderText="VendorID" SortExpression="VendorID" />
                            <asp:BoundField DataField="VendorName" HeaderText="VendorName" SortExpression="VendorName" />
                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Pancard" HeaderText="Pancard" SortExpression="Pancard" />
                            <asp:BoundField DataField="Aadharcard" HeaderText="Aadharcard" SortExpression="Aadharcard" />
                            <asp:BoundField DataField="Date1" HeaderText="Date" SortExpression="Date" DataFormatString="{0:d}" />
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
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Swank %>" SelectCommand="SELECT [VendorID], [VendorName], [Mobile], [Email], [City], [Gender], [Address], [Pancard], [Aadharcard], [Date1] FROM [AddVendor]">
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="WorkAssign.aspx.cs" Inherits="SwankInnovation.WorkAssign" %>

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
                    <h2 class="mb-0" style="color: darkmagenta; text-align: center">Work Assign</h2>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Employee ID</label>
                                <asp:DropDownList ID="DropDownList2" class="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" InitialValue="0" ControlToValidate="DropDownList2" ErrorMessage="Select Employee!" />
                                <br />
                                <asp:Label ID="Label2" Visible="false" runat="server"></asp:Label>
                                <br />
                                <asp:Label ID="Label3" Visible="false" runat="server"></asp:Label>
                                <asp:Label ID="Label4" Visible="false" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Assignment</label>
                                <asp:TextBox runat="server" ID="txt3" type="text" TextMode="MultiLine" class="form-control" name="example-text-input" placeholder="Assignment" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="txt3" ErrorMessage="Please enter Assignment!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Duration</label>
                                <asp:TextBox runat="server" ID="txt4" type="text" class="form-control" name="example-text-input" placeholder="Duration" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txt4" ErrorMessage="Please enter Duration!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">TLName</label>
                                <asp:TextBox runat="server" ID="txt5" type="text" class="form-control" name="example-text-input" placeholder="TLName" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txt5" ErrorMessage="Please enter TLName!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Date</label>
                                <asp:TextBox runat="server" ID="txt6" type="text" TextMode="Date" class="form-control" name="example-text-input" placeholder="Date/" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txt6" ErrorMessage="Please enter Date!" />
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
                    <div style="overflow-x: auto">
                        <center>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="EmpNo" HeaderText="EmpNo" SortExpression="EmpNo" />
                                <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                                <asp:BoundField DataField="Assignment" HeaderText="Assignment" SortExpression="Assignment" />
                                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                <asp:BoundField DataField="TLName" HeaderText="TLName" SortExpression="TLName" />
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
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Swank %>" SelectCommand="SELECT [EmpNo], [EmpName], [Assignment], [Duration], [Date], [Username], [TLName] FROM [WorkAssign]">
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

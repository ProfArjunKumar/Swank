<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TrainingShedule.aspx.cs" Inherits="SwankInnovation.TrainingShedule" %>

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
                    <h2 class="mb-0" style="color: darkmagenta; text-align: center">Training Shedule</h2>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Employee ID</label>
                                <asp:DropDownList ID="DropDownList1" class="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" AutoPostBack="true" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" InitialValue="0" ControlToValidate="DropDownList1" ErrorMessage="Select Employee!" />
                                <br />
                                <asp:Label ID="Label2" Visible="false" runat="server"></asp:Label>
                                <br />
                                <asp:Label ID="Label3" Visible="false" runat="server"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Training Under</label>
                                <asp:TextBox runat="server" ID="TextBox1" type="text" class="form-control" name="example-text-input" placeholder="Training Under" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="TextBox1" ErrorMessage="Please enter Training Under!" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Remarks</label>
                                <asp:TextBox runat="server" ID="TextBox2" TextMode="MultiLine" type="text" class="form-control" name="example-text-input" placeholder="Remarks" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="TextBox2" ErrorMessage="Please enter Remarks!" />
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
                    <center>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="EmployeeId" HeaderText="EmployeeId" SortExpression="EmployeeId" />
                            <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName" SortExpression="EmployeeName" />
                            <asp:BoundField DataField="TrainingUnder" HeaderText="TrainingUnder" SortExpression="TrainingUnder" />
                            <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
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
                        </center>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Swank %>" SelectCommand="SELECT * FROM [TrainingSchedule1]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

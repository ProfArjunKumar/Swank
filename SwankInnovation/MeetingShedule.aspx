<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MeetingShedule.aspx.cs" Inherits="SwankInnovation.MeetingShedule" %>

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
                    <h2 class="mb-0" style="color: darkmagenta; text-align: center">Meeting Schedule</h2>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Employee ID</label>
                                <asp:DropDownList ID="DropDownList1" class="form-control" OnTextChanged="DropDownList1_TextChanged" AutoPostBack="true" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ErrorMessage="Select Employee" ControlToValidate="DropDownList1" runat="server" ForeColor="Red" InitialValue="0" />
                                <br />
                                <asp:Label ID="Label1" Visible="false" runat="server"></asp:Label>
                                <br />
                                <asp:Label ID="Label3" Visible="false" runat="server"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Date of Meeting</label>
                                <asp:TextBox runat="server" ID="txt1" type="text" class="form-control" TextMode="Date" name="example-text-input" placeholder="Date of Meeting" />
                                <asp:RequiredFieldValidator ErrorMessage="Select DateOf Meeting" ForeColor="Red" ControlToValidate="txt1" runat="server" />
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Time</label>
                                <asp:TextBox runat="server" ID="txt2" type="text" TextMode="Time" class="form-control" name="example-text-input" placeholder="Time" />
                                <asp:RequiredFieldValidator ErrorMessage="Select time" ForeColor="Red" ControlToValidate="txt2" runat="server" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Discussion</label>
                                <asp:TextBox runat="server" ID="txt3" type="text" TextMode="MultiLine" class="form-control" name="example-text-input" placeholder="Discussion" />
                                <asp:RequiredFieldValidator ErrorMessage="Enter Discussion" ControlToValidate="txt3" ForeColor="Red" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Button Text="add" ID="btnadd" CssClass="btn btn-primary mt-1 mb-1" OnClick="btnadd_Click" runat="server" />
                    </div>
                    <br />
                    <center>
                    <asp:GridView ID="gridview1" AutoGenerateColumns="False" runat="server" OnRowDeleting="gridview1_RowDeleting" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="Id" />
                            <asp:BoundField DataField="EmpName" HeaderText="EmpName" />
                            <asp:BoundField DataField="DateOfMeeting" HeaderText="DateOfMeeting" />
                            <asp:BoundField DataField="Timee" HeaderText="Timee" />
                            <asp:BoundField DataField="Discussion" HeaderText="Discussion" />
                            <asp:BoundField DataField="Username" HeaderText="Username" />
                            <asp:CommandField ShowDeleteButton="true" />
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
                <center>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary mt-1 mb-1" CausesValidation="false" Text="Submit" OnClick="btnSubmit_Click" />                              
                            </div>
                        </div>
                  </center>
                <div>
                    <center>
                    <asp:GridView ID="gridview2" AutoGenerateColumns="False" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" />
                            <asp:BoundField DataField="EmpName" HeaderText="EmpName" />
                            <asp:BoundField DataField="DateOfMeeting" HeaderText="DateOfMeeting" />
                            <asp:BoundField DataField="Timee" HeaderText="Timee" />
                            <asp:BoundField DataField="Discussion" HeaderText="Discussion" />
                            <asp:BoundField DataField="Username" HeaderText="Username" />
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
            </div>
        </div>
    </div>
    </div>
</asp:Content>

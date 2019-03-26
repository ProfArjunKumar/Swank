<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="LeaveRequest.aspx.cs" Inherits="SwankInnovation.LeaveRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1 class="mb-sm-0" style="color: blueviolet; text-align: center">Leave Request</h1>
    </div>
    <hr />
    <div class="card-body">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="form-label">Leave Reason</label>
                    <asp:TextBox runat="server" ID="txt1" type="text" TextMode="MultiLine" class="form-control" name="example-text-input" placeholder="Leave Reason" />
                    <asp:RequiredFieldValidator runat="server" ID="rr1" ForeColor="Red" ControlToValidate="txt1" ErrorMessage="Please enter Leave Reason!" />
                    <div class="btn-group mt-1 mb-1"></div>
                </div>
            </div>
        </div>
        <label class="form-label">No of Days</label>
        <asp:DropDownList runat="server" ID="dropdown1" class="btn btn-info btn-pill dropdown-toggle" Style="color: #000000">
            <asp:ListItem Text="1" />
            <asp:ListItem Text="2" />
            <asp:ListItem Text="3" />
            <asp:ListItem Text="4" />
            <asp:ListItem Text="5" />
            <asp:ListItem Text="6" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="dropdown1" InitialValue="0" ErrorMessage="select NoOfDays" ForeColor="Red"></asp:RequiredFieldValidator>
        <div class="dropdown-menu">
            <a class="dropdown-item" href="#">1</a>
            <a class="dropdown-item" href="#">2</a>
            <a class="dropdown-item" href="#">3</a>
            <a class="dropdown-item" href="#">4</a>
            <a class="dropdown-item" href="#">5</a>
        </div>
        <asp:Button runat="server" Text="Apply Leave" ID="Button1" type="button" class="btn btn-primary mt-1 mb-1" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
</asp:Content>

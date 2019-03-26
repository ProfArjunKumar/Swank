<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="InterviewShedule.aspx.cs" Inherits="SwankInnovation.InterviewShedule" %>

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
                    <h2 class="mb-0" style="color: darkmagenta; text-align: center">Interview Schedule</h2>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Name</label>
                                <asp:TextBox runat="server" ID="txt1" type="text" class="form-control" name="example-text-input" placeholder="Name" />
                                <asp:RequiredFieldValidator ErrorMessage="Enter Name" ControlToValidate="txt1" runat="server" ForeColor="Red" />
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Qualification</label>
                                <asp:TextBox runat="server" ID="txt2" type="text" class="form-control" name="example-text-input" placeholder="Qualification" />
                                <asp:RequiredFieldValidator ErrorMessage="Enter Qualification" ControlToValidate="txt2" runat="server" ForeColor="Red" />
                            </div>
                            <div class="form-group">
                                <label class="form-label">Date</label>
                                <asp:TextBox runat="server" ID="txt3" TextMode="Date" type="text" class="form-control" name="example-text-input" placeholder="Date" />
                                <asp:RequiredFieldValidator ErrorMessage="Select Date" ForeColor="Red" ControlToValidate="txt3" runat="server" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Technology</label>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                                    <asp:ListItem Value="DotNet"></asp:ListItem>
                                    <asp:ListItem Value="Java"></asp:ListItem>
                                    <asp:ListItem Value="UI"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ErrorMessage="Select Technology" InitialValue="-1" ForeColor="Red" ControlToValidate="DropDownList1" runat="server" />
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
                    </div>
                    <center>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary mt-1 mb-1" OnClick="btnSubmit_Click" Text="Submit"/>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </div>
                        </div>
                  </center>
                    <div>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="CandidateName" HeaderText="CandidateName" SortExpression="CandidateName" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                <asp:BoundField DataField="Qualification" HeaderText="Qualification" SortExpression="Qualification" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="Technology" HeaderText="Technology" SortExpression="Technology" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CausesValidation="false" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Swank %>" DeleteCommand="DELETE FROM [InterviewShedule] WHERE [id] = @id" InsertCommand="INSERT INTO [InterviewShedule] ([CandidateName], [Gender], [Qualification], [Date], [Technology]) VALUES (@CandidateName, @Gender, @Qualification, @Date, @Technology)" SelectCommand="SELECT * FROM [InterviewShedule]" UpdateCommand="UPDATE [InterviewShedule] SET [CandidateName] = @CandidateName, [Gender] = @Gender, [Qualification] = @Qualification, [Date] = @Date, [Technology] = @Technology WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="CandidateName" Type="String" />
                                <asp:Parameter Name="Gender" Type="String" />
                                <asp:Parameter Name="Qualification" Type="String" />
                                <asp:Parameter DbType="Date" Name="Date" />
                                <asp:Parameter Name="Technology" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="CandidateName" Type="String" />
                                <asp:Parameter Name="Gender" Type="String" />
                                <asp:Parameter Name="Qualification" Type="String" />
                                <asp:Parameter DbType="Date" Name="Date" />
                                <asp:Parameter Name="Technology" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

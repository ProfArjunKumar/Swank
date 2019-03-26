<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Holiday.aspx.cs" Inherits="SwankInnovation.Holiday" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="main-content">
            <div class="content-wrapper">
                <!-- Wizard Starts -->
                <div class="row">
                    <div class="col-sm-12">
                        <div>
                            <h1 class="mb-sm-0" style="color: blueviolet; text-align: center">Holidays</h1>
                        </div>
                    </div>
                </div>
                <section id="icon-tabs">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="card-block">
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="Holiday Id"></asp:Label>
                                                        <asp:TextBox runat="server" ReadOnly="true" ID="txtId" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="Date "></asp:Label>
                                                        <asp:TextBox runat="server" ID="txtDate" ReadOnly="true" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="Occasion  "></asp:Label>
                                                        <%--<asp:TextBox runat="server" ID="txtOccasion" class="form-control"/>--%>
                                                        <asp:DropDownList ID="dd2" class="form-control" runat="server">
                                                            <asp:ListItem Text="--Select--" Value="0" />
                                                            <asp:ListItem Text="New Year" />
                                                            <asp:ListItem Text="Sankranthi" />
                                                            <asp:ListItem Text="Republic Day" />
                                                            <asp:ListItem Text="Holi" />
                                                            <asp:ListItem Text="Ugadhi" />
                                                            <asp:ListItem Text="Summer Holiday's" />
                                                            <asp:ListItem Text="Independence Day" />
                                                            <asp:ListItem Text="Bakrid" />
                                                            <asp:ListItem Text="Ganesh Chaturthi" />
                                                            <asp:ListItem Text="Ramzan" />
                                                            <asp:ListItem Text="School Annual Day" />
                                                            <asp:ListItem Text="Mahatma Gandhi Jayanti" />
                                                            <asp:ListItem Text="Dussehra" />
                                                            <asp:ListItem Text="Diwali" />
                                                            <asp:ListItem Text="Christmas Day" />
                                                            <asp:ListItem Text="Teachers Day" />
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ErrorMessage="select Occation" ID="r12" InitialValue="0" ForeColor="Red" ControlToValidate="dd2" runat="server" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="From Date  "></asp:Label>
                                                        <asp:TextBox runat="server" ID="txtFdate" TextMode="Date" class="form-control" />
                                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtFdate" ErrorMessage="Please select FromDate!" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="To Date  "></asp:Label>
                                                        <asp:TextBox runat="server" ID="txtTdate" TextMode="Date" class="form-control" />
                                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtTdate" ErrorMessage="Please select ToDate!" />
                                                    </div>
                                                </div>
                                                <div class="col-md-8" style="margin-left: 261px;">
                                                    <div class="form-group">
                                                        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary mt-1 mb-1" Text="Submit" OnClick="btnSubmit_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <br />
                                        <div style="overflow: scroll">
                                            <center>
                                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style2" DataKeyNames="Id" DataSourceID="SqlDataSource2" Style="z-index: 1">
                                                <Columns>
                                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                                    <asp:BoundField DataField="HolidayId" HeaderText="HolidayId" SortExpression="HolidayId" />
                                                    <asp:BoundField DataField="Daate" HeaderText="Date" SortExpression="Date" />
                                                    <asp:BoundField DataField="Occasion" HeaderText="Occasion" SortExpression="Occasion" />
                                                    <asp:BoundField DataField="FromDate" HeaderText="FromDate" SortExpression="FromDate" />
                                                    <asp:BoundField DataField="ToDate" HeaderText="ToDate" SortExpression="ToDate" />
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
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Swank %>" DeleteCommand="DELETE FROM [Holidays] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Holidays] ([HolidayId], [Daate], [Occasion], [FromDate], [ToDate]) VALUES (@HolidayId, @Daate, @Occasion, @FromDate, @ToDate)" SelectCommand="SELECT * FROM [Holidays]" UpdateCommand="UPDATE [Holidays] SET [HolidayId] = @HolidayId, [Daate] = @Daate, [Occasion] = @Occasion, [FromDate] = @FromDate, [ToDate] = @ToDate WHERE [Id] = @Id">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="Id" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="HolidayId" Type="String" />
                                                    <asp:Parameter Name="Daate" Type="String" />
                                                    <asp:Parameter Name="Occasion" Type="String" />
                                                    <asp:Parameter Name="FromDate" Type="String" />
                                                    <asp:Parameter Name="ToDate" Type="String" />
                                                    <asp:Parameter Name="Id" Type="Int32" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="HolidayId" Type="String" />
                                                    <asp:Parameter Name="Daate" Type="String" />
                                                    <asp:Parameter Name="Occasion" Type="String" />
                                                    <asp:Parameter Name="FromDate" Type="String" />
                                                    <asp:Parameter Name="ToDate" Type="String" />
                                                    <asp:Parameter Name="Id" Type="Int32" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- Wizard Ends -->
            </div>
        </div>
    </div>
</asp:Content>

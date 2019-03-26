<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MonthlyReview.aspx.cs" Inherits="SwankInnovation.MonthlyReview1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow">
                <div>
                    <h1 class="mb-sm-0" style="color: blueviolet; text-align: center">Monthly Reviews</h1>
                </div>
                <hr />
                <div class="card-body">
                    <div class="row">
                        <table>
                            <div class="col-md-6">
                                <label class="form-label">Employee ID</label>
                                <asp:DropDownList OnTextChanged="dd1_TextChanged" class="form-control" AutoPostBack="true" CssClass="for" ID="dd1" runat="server">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="Re1" runat="server" ControlToValidate="dd1" InitialValue="0" ErrorMessage="select Employee ID" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:Label ID="Label14" ForeColor="Red" runat="server"></asp:Label>
                                <br />
                                <asp:Label ID="Label2" runat="server" Visible="false" Text="ID:" /><asp:TextBox runat="server" ID="TextBox1" type="text" class="form-control" Visible="false" name="example-text-input" />
                                <br />
                                <asp:Label ID="Label3" runat="server" Visible="false" Text="Name:" /><asp:TextBox runat="server" ID="TextBox2" Visible="false" type="text" class="form-control" name="example-text-input" />
                                <div>
                                    <asp:Label ID="Label4" runat="server" Text="Independent Work"></asp:Label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                        <asp:ListItem Text="select" Value="-1"></asp:ListItem>
                                        <asp:ListItem Value="1"></asp:ListItem>
                                        <asp:ListItem Value="2"></asp:ListItem>
                                        <asp:ListItem Value="3"></asp:ListItem>
                                        <asp:ListItem Value="4"></asp:ListItem>
                                        <asp:ListItem Value="5"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="r1" runat="server" ControlToValidate="DropDownList1" InitialValue="-1" ErrorMessage="select Independent Work" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:Label ID="Label5" runat="server" Text="Attitude"></asp:Label>
                                    <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                                        <asp:ListItem Text="select" Value="-1"></asp:ListItem>
                                        <asp:ListItem Value="1"></asp:ListItem>
                                        <asp:ListItem Value="2"></asp:ListItem>
                                        <asp:ListItem Value="3"></asp:ListItem>
                                        <asp:ListItem Value="4"></asp:ListItem>
                                        <asp:ListItem Value="5"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="r11" runat="server" ControlToValidate="DropDownList2" InitialValue="-1" ErrorMessage="select Attitude" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:Label ID="Label6" runat="server" Text="Dressing"></asp:Label>
                                    <asp:DropDownList ID="DropDownList3" runat="server" class="form-control">
                                        <asp:ListItem Text="select" Value="-1"></asp:ListItem>
                                        <asp:ListItem Value="1"></asp:ListItem>
                                        <asp:ListItem Value="2"></asp:ListItem>
                                        <asp:ListItem Value="3"></asp:ListItem>
                                        <asp:ListItem Value="4"></asp:ListItem>
                                        <asp:ListItem Value="5"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList3" InitialValue="-1" ErrorMessage="select Dressing" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:Label ID="Label7" runat="server" Text="Attendence"></asp:Label>
                                    <asp:DropDownList ID="DropDownList4" runat="server" class="form-control">
                                        <asp:ListItem Text="select" Value="-1"></asp:ListItem>
                                        <asp:ListItem Value="1"></asp:ListItem>
                                        <asp:ListItem Value="2"></asp:ListItem>
                                        <asp:ListItem Value="3"></asp:ListItem>
                                        <asp:ListItem Value="4"></asp:ListItem>
                                        <asp:ListItem Value="5"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList4" InitialValue="-1" ErrorMessage="select Attendence" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:Label ID="Label8" runat="server" Text="Presentation Skills"></asp:Label>
                                    <asp:DropDownList ID="DropDownList5" runat="server" class="form-control">
                                        <asp:ListItem Text="select" Value="-1"></asp:ListItem>
                                        <asp:ListItem Value="1"></asp:ListItem>
                                        <asp:ListItem Value="2"></asp:ListItem>
                                        <asp:ListItem Value="3"></asp:ListItem>
                                        <asp:ListItem Value="4"></asp:ListItem>
                                        <asp:ListItem Value="5"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList5" InitialValue="-1" ErrorMessage="select Presentation Skills" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Month</label>
                                <asp:DropDownList class="form-control" AutoPostBack="true" CssClass="for" ID="DropDownList11" runat="server">
                                    <asp:ListItem Text="select month" Value="-1"></asp:ListItem>
                                    <asp:ListItem>January</asp:ListItem>
                                    <asp:ListItem>February</asp:ListItem>
                                    <asp:ListItem>March</asp:ListItem>
                                    <asp:ListItem>April</asp:ListItem>
                                    <asp:ListItem>May</asp:ListItem>
                                    <asp:ListItem>June</asp:ListItem>
                                    <asp:ListItem>July</asp:ListItem>
                                    <asp:ListItem>August</asp:ListItem>
                                    <asp:ListItem>September</asp:ListItem>
                                    <asp:ListItem>October</asp:ListItem>
                                    <asp:ListItem>November</asp:ListItem>
                                    <asp:ListItem>December</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="Rr1" runat="server" ControlToValidate="DropDownList11" InitialValue="-1" ErrorMessage="select month" ForeColor="Red"></asp:RequiredFieldValidator>
                                <div>
                                    <asp:Label ID="Label9" runat="server" Text="Comunication Skills"></asp:Label>
                                    <asp:DropDownList ID="DropDownList6" runat="server" class="form-control">
                                        <asp:ListItem Text="select" Value="-1"></asp:ListItem>
                                        <asp:ListItem Value="1"></asp:ListItem>
                                        <asp:ListItem Value="2"></asp:ListItem>
                                        <asp:ListItem Value="3"></asp:ListItem>
                                        <asp:ListItem Value="4"></asp:ListItem>
                                        <asp:ListItem Value="5"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList6" InitialValue="-1" ErrorMessage="select Communication skills" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:Label ID="Label10" runat="server" Text="Take Initiative"></asp:Label>
                                    <asp:DropDownList ID="DropDownList7" runat="server" class="form-control">
                                        <asp:ListItem Text="select" Value="-1"></asp:ListItem>
                                        <asp:ListItem Value="1"></asp:ListItem>
                                        <asp:ListItem Value="2"></asp:ListItem>
                                        <asp:ListItem Value="3"></asp:ListItem>
                                        <asp:ListItem Value="4"></asp:ListItem>
                                        <asp:ListItem Value="5"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList7" InitialValue="-1" ErrorMessage="select Take Initiative" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:Label ID="Label11" runat="server" Text="Leadership Qualities"></asp:Label>
                                    <asp:DropDownList ID="DropDownList8" runat="server" class="form-control">
                                        <asp:ListItem Text="select" Value="-1"></asp:ListItem>
                                        <asp:ListItem Value="1"></asp:ListItem>
                                        <asp:ListItem Value="2"></asp:ListItem>
                                        <asp:ListItem Value="3"></asp:ListItem>
                                        <asp:ListItem Value="4"></asp:ListItem>
                                        <asp:ListItem Value="5"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList8" InitialValue="-1" ErrorMessage="select Leadeship Qualities" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:Label ID="Label12" runat="server" Text="Group Work"></asp:Label>
                                    <asp:DropDownList ID="DropDownList9" runat="server" class="form-control">
                                        <asp:ListItem Text="select" Value="-1"></asp:ListItem>
                                        <asp:ListItem Value="1"></asp:ListItem>
                                        <asp:ListItem Value="2"></asp:ListItem>
                                        <asp:ListItem Value="3"></asp:ListItem>
                                        <asp:ListItem Value="4"></asp:ListItem>
                                        <asp:ListItem Value="5"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList9" InitialValue="-1" ErrorMessage="select Independent Work" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:Label ID="Label13" runat="server" Text="Honesty"></asp:Label>
                                    <asp:DropDownList ID="DropDownList10" runat="server" class="form-control">
                                        <asp:ListItem Text="select" Value="-1"></asp:ListItem>
                                        <asp:ListItem Value="1"></asp:ListItem>
                                        <asp:ListItem Value="2"></asp:ListItem>
                                        <asp:ListItem Value="3"></asp:ListItem>
                                        <asp:ListItem Value="4"></asp:ListItem>
                                        <asp:ListItem Value="5"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList10" InitialValue="-1" ErrorMessage="select Honesty" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                <label class="form-label">Summary</label>
                                <asp:TextBox runat="server" ID="txt7" type="text" TextMode="MultiLine" class="form-control" name="example-text-input" />
                                <asp:RequiredFieldValidator ErrorMessage="Enter Summary" ForeColor="Red" ControlToValidate="txt7" runat="server" />
                            </div>
                            </div>
                        </table>
                    </div>
                    <center>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary mt-1 mb-1" Text="Submit" OnClick="btnSubmit_Click1"/>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </div>
                        </div>
                  </center>
                    <div style="overflow-x: auto">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="EmpID" HeaderText="EmpID" SortExpression="EmpID" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <%--<asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:d}" />--%>
                                <asp:BoundField DataField="Dressing" HeaderText="Dressing" SortExpression="Dressing" />
                                <asp:BoundField DataField="Attitude" HeaderText="Attitude" SortExpression="Attitude" />
                                <asp:BoundField DataField="Attendence" HeaderText="Attendence" SortExpression="Attendence" />
                                <asp:BoundField DataField="Independentwork" HeaderText="Independentwork" SortExpression="Independentwork" />
                                <asp:BoundField DataField="Presentationskills" HeaderText="Presentationskills" SortExpression="Presentationskills" />
                                <asp:BoundField DataField="Communicationskills" HeaderText="Communicationskills" SortExpression="Communicationskills" />
                                <asp:BoundField DataField="TakesInitiative" HeaderText="TakesInitiative" SortExpression="TakesInitiative" />
                                <asp:BoundField DataField="LeadershipQualities" HeaderText="LeadershipQualities" SortExpression="LeadershipQualities" />
                                <asp:BoundField DataField="Groupwork" HeaderText="Groupwork" SortExpression="Groupwork" />
                                <asp:BoundField DataField="honesty" HeaderText="honesty" SortExpression="honesty" />
                                <asp:BoundField DataField="TotalReview" HeaderText="TotalReview" SortExpression="TotalReview" />
                                <asp:BoundField DataField="month" HeaderText="month" SortExpression="month" />
                                <asp:BoundField DataField="Summary" HeaderText="Summary" SortExpression="Summary" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Swank %>" DeleteCommand="DELETE FROM [MonthlyReview] WHERE [id] = @id" InsertCommand="INSERT INTO [MonthlyReview] ([EmpID], [Name], [Date], [Dressing], [Attitude], [Attendence], [Independentwork], [Presentationskills], [Communicationskills], [TakesInitiative], [LeadershipQualities], [Groupwork], [honesty], [TotalReview], [Dailywork], [month]) VALUES (@EmpID, @Name, @Date, @Dressing, @Attitude, @Attendence, @Independentwork, @Presentationskills, @Communicationskills, @TakesInitiative, @LeadershipQualities, @Groupwork, @honesty, @TotalReview, @Dailywork, @month)" SelectCommand="SELECT * FROM [MonthlyReview]" UpdateCommand="UPDATE [MonthlyReview] SET [EmpID] = @EmpID, [Name] = @Name, [Date] = @Date, [Dressing] = @Dressing, [Attitude] = @Attitude, [Attendence] = @Attendence, [Independentwork] = @Independentwork, [Presentationskills] = @Presentationskills, [Communicationskills] = @Communicationskills, [TakesInitiative] = @TakesInitiative, [LeadershipQualities] = @LeadershipQualities, [Groupwork] = @Groupwork, [honesty] = @honesty, [TotalReview] = @TotalReview, [Dailywork] = @Dailywork, [month] = @month WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="EmpID" Type="String" />
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter DbType="Date" Name="Date" />
                                <asp:Parameter Name="Dressing" Type="String" />
                                <asp:Parameter Name="Attitude" Type="String" />
                                <asp:Parameter Name="Attendence" Type="String" />
                                <asp:Parameter Name="Independentwork" Type="String" />
                                <asp:Parameter Name="Presentationskills" Type="String" />
                                <asp:Parameter Name="Communicationskills" Type="String" />
                                <asp:Parameter Name="TakesInitiative" Type="String" />
                                <asp:Parameter Name="LeadershipQualities" Type="String" />
                                <asp:Parameter Name="Groupwork" Type="String" />
                                <asp:Parameter Name="honesty" Type="String" />
                                <asp:Parameter Name="TotalReview" Type="String" />
                                <asp:Parameter Name="Dailywork" Type="String" />
                                <asp:Parameter Name="month" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="EmpID" Type="String" />
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter DbType="Date" Name="Date" />
                                <asp:Parameter Name="Dressing" Type="String" />
                                <asp:Parameter Name="Attitude" Type="String" />
                                <asp:Parameter Name="Attendence" Type="String" />
                                <asp:Parameter Name="Independentwork" Type="String" />
                                <asp:Parameter Name="Presentationskills" Type="String" />
                                <asp:Parameter Name="Communicationskills" Type="String" />
                                <asp:Parameter Name="TakesInitiative" Type="String" />
                                <asp:Parameter Name="LeadershipQualities" Type="String" />
                                <asp:Parameter Name="Groupwork" Type="String" />
                                <asp:Parameter Name="honesty" Type="String" />
                                <asp:Parameter Name="TotalReview" Type="String" />
                                <asp:Parameter Name="Dailywork" Type="String" />
                                <asp:Parameter Name="month" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>

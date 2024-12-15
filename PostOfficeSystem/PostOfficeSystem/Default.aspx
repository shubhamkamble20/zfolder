<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PostOfficeSystem._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container my-5">
        <h2 class="text-center mb-4" style="color: #d32f2f; font-weight: bold;">India Post - Members</h2>

        <!-- Create New Booking Button -->
        <div class="text-end mb-3">
            <button class="btn" style="background-color: #d32f2f; color: white;" onclick="window.location.href='AddPostOfficeRecord.aspx'; return false;">ADD NEW MEMBER</button>
        </div>

        <!-- GridView Table -->
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" HeaderStyle-BackColor="#d32f2f" HeaderStyle-ForeColor="white" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" HeaderStyle-BackColor="#d32f2f" HeaderStyle-ForeColor="white" />
                <asp:BoundField DataField="Lastname" HeaderText="Last Name" SortExpression="Lastname" HeaderStyle-BackColor="#d32f2f" HeaderStyle-ForeColor="white" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" HeaderStyle-BackColor="#d32f2f" HeaderStyle-ForeColor="white" />
                <asp:BoundField DataField="Schemename" HeaderText="Scheme Name" SortExpression="Schemename" HeaderStyle-BackColor="#d32f2f" HeaderStyle-ForeColor="white" />
                <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" HeaderStyle-BackColor="#d32f2f" HeaderStyle-ForeColor="white" />
                <asp:BoundField DataField="NoOfYears" HeaderText="No Of Years" SortExpression="NoOfYears" HeaderStyle-BackColor="#d32f2f" HeaderStyle-ForeColor="white" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" HeaderStyle-BackColor="#d32f2f" HeaderStyle-ForeColor="white" />

                <asp:TemplateField>
                    <HeaderStyle BackColor="#d32f2f" ForeColor="white" />
                    <ItemTemplate>
                        <a href="DetailsPostOffice.aspx?Id=<%# Eval("Id") %>" class="btn btn-sm" style="background-color: #ff9800; color: white;">Details</a> 
                        <a href="EditPostOfficeDetails.aspx?Id=<%# Eval("Id") %>" class="btn btn-sm" style="background-color: #ffc107; color: white;">Edit</a> 
                        <a href="DeletePostOfficeDetails.aspx?Id=<%# Eval("Id") %>" class="btn btn-sm" style="background-color: #d32f2f; color: white;">Delete</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

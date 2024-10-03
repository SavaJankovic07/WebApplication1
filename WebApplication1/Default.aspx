<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        
        <asp:GridView ID="BakeryGrid" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ID" />
                <asp:BoundField DataField="Name" HeaderText="Bakery Name" />
                <asp:BoundField DataField="Product" HeaderText="Product Name" />
                <asp:BoundField DataField="Type" HeaderText="Type" />
                <asp:BoundField DataField="Grain" HeaderText="Grain" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
            </Columns>
        </asp:GridView>
        
    </div>

    <asp:Button ID="addBtn" runat="server" OnClick="addBtn_Click" Text="Add new" />

</asp:Content>

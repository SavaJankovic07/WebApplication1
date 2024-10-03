<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 138px">
                <asp:TextBox ID="addID" runat="server"></asp:TextBox>
            </td>
            <td style="width: 164px">
                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 138px">
                <asp:TextBox ID="addBName" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px; width: 164px">Bakery Name</td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 138px; height: 22px;">
                <asp:TextBox ID="addName" runat="server"></asp:TextBox>
            </td>
            <td style="width: 164px; height: 22px;">Add Pastry Name</td>
            <td style="height: 22px"></td>
        </tr>
         <tr>
            <td style="width: 138px">
                <asp:TextBox ID="addType" runat="server"></asp:TextBox>
            </td>
            <td style="width: 164px">Add Pastry Type</td>
            <td>&nbsp;</td>
              <tr>
            <td style="width: 138px">
                <asp:TextBox ID="addGrain" runat="server"></asp:TextBox>
            </td>
            <td style="width: 164px">Add Grain Type</td>
            <td>&nbsp;</td>
        </tr>
              <tr>
            <td style="width: 138px">
                <asp:TextBox ID="addPrice" runat="server"></asp:TextBox>
            </td>
            <td style="width: 164px">Add Price</td>
            <td>&nbsp;</td>
        </tr>
        </tr>
    </table>
    <asp:Button ID="Button1" runat="server" Height="39px" OnClick="Button1_Click" Text="Add" />
    <asp:Button ID="backBtn" runat="server" OnClick="backBtn_Click" Text="Go back" />
</asp:Content>

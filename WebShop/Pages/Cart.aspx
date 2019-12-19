﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MaterPage.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebShop.Pages.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table>
        <thead>
            <tr>
                <td>Name</td>
                <td>Price</td>
                <td>Quantity</td>
                <td style="text-align:right">Total</td>
            </tr>
        </thead>

        <asp:ListView ID="ListViewCart" runat="server" >
            <ItemTemplate>
                <tr>
                    <td><asp:Literal ID="LiteralName" runat="server" Text='<%# Eval("Name") %>'></asp:Literal></td>
                    <td style="text-align:right"><asp:Literal ID="LiteralPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Literal></td>
                    <td style="text-align:center"><asp:Literal ID="LiteralQuantity" runat="server" Text='<%# Eval("Quantity") %>'></asp:Literal></td>
                    <td style="text-align:right"><asp:Literal ID="LiteralTotal" runat="server" Text='<%# (decimal)Eval("Price") * (int)Eval("Quantity") %>'></asp:Literal></td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
        <tfoot>
            <tr>
                <td colspan="3"></td>
                <td style="text-align:right"><asp:Literal ID="LiteralTotal" runat="server"></asp:Literal></td>
            </tr>
        </tfoot>
    </table>
    <asp:Button ID="ButtonOrder" runat="server" OnClick="ButtonOrder_Click" Text="Order" Visible="false" />
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="ConsultaClientes.aspx.cs" Inherits="VentasOnLineWeb.ConsultaClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 139px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="NobreLabel" runat="server" Text="Nombre"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="NombresTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="BuscarButton" runat="server" Text="Buscar" OnClick="BuscarButton_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="ClientesGridView" runat="server">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="rClientes.aspx.cs" Inherits="VentasOnLineWeb.rClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 147px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">Codigo:</td>
            <td>
                <asp:TextBox ID="CodigoTextBox" runat="server"></asp:TextBox>
                <asp:Button ID="BuscarButton" runat="server" Text="Buscar" OnClick="BuscarButton_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Nombres:</td>
            <td>
                <asp:TextBox ID="NombresTextBox" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Empresa:</td>
            <td>
                <asp:TextBox ID="EmpresaTextBox" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="GuardarButton1" runat="server" Text="Guardar" OnClick="GuardarButton1_Click" />
            &nbsp;
                <asp:Button ID="EliminarButton" runat="server" OnClick="Button1_Click" Text="Eliminar" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

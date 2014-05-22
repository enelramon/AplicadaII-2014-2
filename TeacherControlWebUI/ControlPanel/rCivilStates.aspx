<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MastePage.Master" AutoEventWireup="true" CodeBehind="rCivilStates.aspx.cs" Inherits="TeacherControlWebUI.ControlPanel.rCivilStates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="IdCivilStateTextBox" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="State Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="StateNameTextBox" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
            </td>
            <td class="auto-style1">
                <asp:CheckBox ID="esActivoCheckBox" runat="server" Text="Es Activo" />
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="GuardarButton" runat="server" OnClick="GuardarButton_Click" Text="Guardar" />
                <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaEstadoCuentas.aspx.cs" Inherits="VentasOnLineWeb.ConsultaEstadoCuentas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        codigo:
        <asp:TextBox ID="CodigoTextBox" runat="server" Width="66px"></asp:TextBox>
&nbsp;Desde:
        <asp:TextBox ID="DesdeTextBox" runat="server"></asp:TextBox>
&nbsp;Hasta:
        <asp:TextBox ID="HastaTextBox" runat="server"></asp:TextBox>
        <asp:Button ID="BuscarButton" runat="server" OnClick="BuscarButton_Click" Text="Buscar" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <asp:GridView ID="ResultadoGridView" runat="server">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>

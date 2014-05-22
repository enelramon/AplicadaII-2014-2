<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HolaMundo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="N1TextBox" runat="server" Height="16px"></asp:TextBox>
          <asp:TextBox ID="N2TextBox" runat="server" Height="16px"></asp:TextBox>
        <asp:Button ID="SumarButton" runat="server" Text="sumar" OnClick="SumarButton_Click" />
    
        <asp:Label ID="ResultadoLabel" runat="server" Text="Resultado"></asp:Label>
    
        <br />
        <br />
        <asp:Button ID="ProbarButton" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <asp:Label ID="MyLabel" runat="server" Text="Label"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>

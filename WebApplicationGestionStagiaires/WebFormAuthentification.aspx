<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormAuthentification.aspx.cs" Inherits="PrototypeGestionStagiaires.WebFormAuthentification" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 28%; height: 71px;">
            <tr>
                <td colspan="2">
                    <asp:Label ID="MessageLbl" runat="server" ForeColor="#CC3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Nom d&#39;utilisation</td>
                <td>
                    <asp:TextBox ID="LoginTxt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Mot de passe</td>
                <td>
                    <asp:TextBox ID="MotDePasse" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="bt_Entrer" runat="server" onclick="bt_Entrer_Click" 
                        Text="Entrer" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

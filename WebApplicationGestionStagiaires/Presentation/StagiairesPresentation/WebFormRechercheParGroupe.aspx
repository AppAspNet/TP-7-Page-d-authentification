<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormRechercheParGroupe.aspx.cs" Inherits="PrototypeGestionStagiaires.Presentation.StagiairesPresentation.WebFormRechercheParGroupe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" 
        StaticSubMenuIndent="16px"  >
        <Items>
            <asp:MenuItem NavigateUrl="~/WebFormApplication.aspx" Text="Application" 
                Value="Application"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Presentation/StagiairesPresentation/WebFormGestionStagiaires.aspx" 
                Text="Stagiaires" Value="Stagiaires"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Presentation/GroupesPresentation/WebFormGestionGroupes.aspx" 
                Text="Groupes" Value="Groupes"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Presentation/StagiairesPresentation/WebFormRechercheParGroupe.aspx" 
                Text="Recherche" Value="Recherche"></asp:MenuItem>
        </Items>
    </asp:Menu>
        <table style="width:100%;">
         <tr>
                <td>
                    Nom</td>
                <td>
                     <asp:TextBox ID="txtNom" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Recherche" 
                        onclick="btRecherche_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    Groupe</td>
                <td>
                    <asp:DropDownList ID="DropDownListGroupe" runat="server" 
                        DataTextField="Nom" DataValueField="Id">
                    </asp:DropDownList>
                  
                </td>
                <td>
                    <asp:Button ID="btRecherche" runat="server" Text="Recherche" 
                        onclick="btRecherche_Click" />
                </td>
            </tr>
            </table>
    
    </div>
    <asp:GridView ID="GridViewStagiaires" runat="server" 
        AutoGenerateColumns="False" >
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" 
                Visible="False" />
            <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
            <asp:BoundField DataField="Prenom" HeaderText="Prenom" 
                SortExpression="Prenom" />
            <asp:BoundField DataField="IdGroupe" HeaderText="Groupe" 
                SortExpression="IdGroupe" />
            <asp:BoundField DataField="DateCréation" HeaderText="Date de Création" 
                SortExpression="DateCréation" />
            <asp:BoundField DataField="DateModificationString" HeaderText="Date de Modification" 
                SortExpression="DateModification" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormApplication.aspx.cs" Inherits="PrototypeGestionStagiaires.WebFormApplication" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
     
     <h2> Dernières stagiaires manipulés</h2>
    
        <asp:GridView ID="GridViewStagiaires" runat="server" 
        AutoGenerateColumns="False" >
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" 
                Visible="False" />
            <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
            <asp:BoundField DataField="Prenom" HeaderText="Prenom" 
                SortExpression="Prenom" />
            <asp:BoundField DataField="Groupe" HeaderText="Groupe" 
                SortExpression="IdGroupe" />
            <asp:BoundField DataField="DateCréation" HeaderText="Date de Création" 
                SortExpression="DateCréation" />
            <asp:BoundField DataField="DateModificationString" HeaderText="Date de Modification" 
                SortExpression="DateModification" />
        </Columns>
    </asp:GridView>
     <h2> Dernières groupes manipulés</h2>
       <asp:GridView ID="GridViewGroupes" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                            <asp:BoundField DataField="DateCréation" HeaderText="Date de Création" 
                                SortExpression="DateCréation" />
                            <asp:BoundField DataField="DateModificationString" HeaderText="Date de Modification" 
                                SortExpression="DateModification" />
                            <asp:BoundField DataField="Id" Visible="false" HeaderText="Id" SortExpression="Id" />
                        </Columns>
                    </asp:GridView>
     
    </form>
</body>
</html>

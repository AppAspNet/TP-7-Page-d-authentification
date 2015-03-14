<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormGestionGroupes.aspx.cs" Inherits="WebApplicationGestionStagiaires.Presentation.GroupesPresentation.WebFormGestionGroupes" %>

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
                    <table style="width:100%; height: 78px;">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Nom"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtNom" runat="server"></asp:TextBox>
                                <asp:Label ID="lblId" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Date Création"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblDateCréation" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text="Date Modification"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblDateModification" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table style="width:100%;">
                        <tr>
                            <td>
                                <asp:Button ID="btEnregistrer" runat="server" Text="Enregistrer" 
                                    onclick="btEnregistrer_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btModifier" runat="server" Text="Modifier" onclick="btModifier_Click" 
                                   />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="brSupprimer" runat="server" Text="Supprimer" 
                                    onclick="brSupprimer_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btNouveau" runat="server" Text="Nouveau" 
                                    onclick="btNouveau_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btDebut" runat="server" Text="<<" onclick="btDebut_Click" />
                    <asp:Button ID="bPrecedent" runat="server" Text="<" 
                        onclick="bPrecedent_Click" />
                    <asp:Button ID="btSuivnt" runat="server" Text=">" onclick="btSuivnt_Click" />
                    <asp:Button ID="btFin" runat="server" Text=">>" onclick="btFin_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
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
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

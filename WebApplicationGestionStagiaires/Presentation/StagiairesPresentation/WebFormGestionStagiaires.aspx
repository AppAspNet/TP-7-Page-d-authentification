<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormGestionStagiaires.aspx.cs" Inherits="PrototypeGestionStagiaires.Presentation.StagiairesPresentation.WebFormInterfaceMiseAJourStagiaires" %>

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
        <table style="width:42%;">
            <tr>
                <td class="style1" colspan="2">
                    <asp:Label ID="lblMessage" runat="server" Font-Size="X-Large" 
                        ForeColor="#CC3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1" rowspan="3">
                <table style="width:100%; height: 78px;">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Nom"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtNom" runat="server"></asp:TextBox>
                                <asp:Label ID="lblId" runat="server" Visible="false" Text=""></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Prénom"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPrenom" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                <td>
                    Groupe</td>
                <td>
                    <asp:DropDownList ID="DropDownListGroupe" runat="server" 
                        DataSourceID="ObjectDataSource1" DataTextField="Nom" DataValueField="Id">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        SelectMethod="Afficher" 
                        TypeName="WebApplicationGestionStagiaires.Operations.GroupesOperations.GroupesOperations">
                    </asp:ObjectDataSource>
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
                    <asp:Button ID="btEnregistrer" Text="Enregistrer" runat="server" 
                        onclick="btEnregistrer_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btSupprimer" Text="Supprimer" runat="server" 
                        onclick="btSupprimer_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btModifier" Text="Modifier" runat="server" 
                        onclick="btModifier_Click" />
                </td>
            </tr>
            </table>
    
    </div>
    <table style="width:20%;">
        <tr>
            <td>
                    <asp:Button ID="btDebut" Text="<<" runat="server" onclick="btDebut_Click" />
                </td>
            <td>
                    <asp:Button ID="btPrecedent" Text="<" runat="server" 
                        onclick="btPrecedent_Click" style="height: 26px" />
                </td>
            <td>
                    <asp:Button ID="btSuivant" Text=">" runat="server" onclick="btSuivant_Click" />
                </td>
            <td>
                    <asp:Button ID="btFin" Text=">>" runat="server" onclick="btFin_Click" />
                </td>
        </tr>
    </table>
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
    
    </form>
</body>
</html>

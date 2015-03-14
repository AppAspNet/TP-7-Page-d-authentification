using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplicationGestionStagiaires.Operations.StagiairesOperations;

namespace PrototypeGestionStagiaires.Presentation.StagiairesPresentation
{
    public partial class WebFormInterfaceMiseAJourStagiaires : System.Web.UI.Page
    {
        /// <summary>
        /// la méthode Page_Load s'exécuter à chaque chargement de la page
        /// </summary>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                this.Actualiser();
        }

        
        #region Méthodes d'actualisation
        /// <summary>
        /// Chargement d'un stagiaire dans l'interface
        /// </summary>
        /// <param name="s">le stagiaire à afficher dans l'interface</param>
        private void ChargerStagiaire(Stagiaire s)
        {
            if (s != null)
            {
                this.lblId.Text = s.Id.ToString();
                this.txtNom.Text = s.Nom;
                this.txtPrenom.Text = s.Prenom;
                this.lblDateCréation.Text = s.DateCréation.ToString();
                this.lblDateModification.Text = s.DateModificationString;
                this.DropDownListGroupe.SelectedValue = s.IdGroupe.ToString();
            }
        }
        /// <summary>
        /// Actualiser les donners de l'interface
        /// </summary>
        private void Actualiser()
        {
            GridViewStagiaires.DataSource = StagiairesOperations.Afficher();
            GridViewStagiaires.DataBind();
            this.ChargerStagiaire(StagiairesOperations.Debut());
        }
        #endregion

        #region Boutons de navigation
        private void NavigationDebut(Boolean debut)
        {
            if (debut)
            {
                btPrecedent.Enabled = false;
                btSuivant.Enabled = true;

            }
        }
        private void NavigationFin(Boolean fin)
        {
            if (fin)
            {
                btPrecedent.Enabled = true;
                btSuivant.Enabled = false;
            }
        } 
        protected void btNouveau_Click(object sender, EventArgs e)
        {
            txtNom.Text = "";
            lblDateCréation.Text = DateTime.Now.ToShortTimeString();
            lblDateModification.Text = "";
        }

        protected void btDebut_Click(object sender, EventArgs e)
        {
            Stagiaire g = StagiairesOperations.Debut();
            this.NavigationDebut(true);
            this.ChargerStagiaire(g);
        }
        protected void btPrecedent_Click(object sender, EventArgs e)
        {
            Boolean debut = false;
            Stagiaire g = StagiairesOperations.Precedent(int.Parse(lblId.Text),out debut);
            this.ChargerStagiaire(g);
            this.NavigationDebut(debut);
        }
        protected void btSuivant_Click(object sender, EventArgs e)
        {
            Boolean fin = false;
            Stagiaire g = StagiairesOperations.Suivant(int.Parse(lblId.Text),out fin);
            this.ChargerStagiaire(g);
            this.NavigationFin(fin);
        }

        protected void btFin_Click(object sender, EventArgs e)
        {
            Stagiaire g = StagiairesOperations.Fin();
            this.NavigationFin(true);
            this.ChargerStagiaire(g);
        }
        #endregion

        #region Buttons de mise à jour
        protected void btEnregistrer_Click(object sender, EventArgs e)
        {
            Stagiaire g = new Stagiaire();
            g.Nom = txtNom.Text;
            StagiairesOperations.Enregistrer(g);
            this.Actualiser();
        }
        protected void btSupprimer_Click(object sender, EventArgs e)
        {
            StagiairesOperations.Supprimer(int.Parse(lblId.Text));
            this.Actualiser();
        }
        protected void btModifier_Click(object sender, EventArgs e)
        {
            int id = int.Parse(lblId.Text);
            Stagiaire s = StagiairesOperations.getStagiaire(id);
            s.Nom = txtNom.Text;
            s.Prenom = txtPrenom.Text;
            s.IdGroupe = int.Parse(DropDownListGroupe.SelectedValue);
            StagiairesOperations.Modifier(s);
            this.Actualiser();
        }
        #endregion
    }
}
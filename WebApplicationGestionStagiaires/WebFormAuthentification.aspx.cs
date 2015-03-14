using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrototypeGestionStagiaires
{
    public partial class WebFormAuthentification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_Entrer_Click(object sender, EventArgs e)
        {
            if (LoginTxt.Text == "admin" && MotDePasse.Text == "admin")
            {
                Response.Redirect("/WebFormApplication.aspx");
            }
            else {
                MessageLbl.Text = "Nom d'utilisateur ou mot de passe est incorrecte";
            }
        }
    }
}
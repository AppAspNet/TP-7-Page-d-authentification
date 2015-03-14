using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplicationGestionStagiaires.Operations.StagiairesOperations;
using WebApplicationGestionStagiaires.Operations.GroupesOperations;

namespace PrototypeGestionStagiaires
{
    public partial class WebFormApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewStagiaires.DataSource = StagiairesOperations.AfficheDernierManipule();
            GridViewStagiaires.DataBind();
            GridViewGroupes.DataSource = GroupesOperations.AfficheDernierManipule();
            GridViewGroupes.DataBind();

            


        }
    }
}
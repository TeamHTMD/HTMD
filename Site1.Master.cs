using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        demoDataContext dk = new demoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            rpmenu.DataSource = dk.menu_selectall();
            rpmenu.DataBind();
            rpmenueng.DataSource = dk.menu_selectall();
            rpmenueng.DataBind();
            object uses = Session.Contents["idname"];
            string bem = Convert.ToString(uses);
            Rpuses.DataSource = dk.name_selectname(bem);
            Rpuses.DataBind();
            Rpuseseng.DataSource = dk.name_selectname(bem);
            Rpuseseng.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["language"] = false;
        }

        protected void eng_Click(object sender, ImageClickEventArgs e)
        {
            Session["language"] = true;
        }
    }
}
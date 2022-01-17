using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class index : System.Web.UI.Page
    {
        demoDataContext dk = new demoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            menu.DataSource = dk.menu_selectall();
            menu.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KMS.view
{
    public partial class Klist_guest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string privilege = Session["privilege"].ToString();
            if (privilege == "计算机科学")
            {
                Response.Redirect("Klist_cs.aspx");
            }
            else if (privilege == "文学")
            {
                Response.Redirect("Klist_li.aspx");
            }
        }
    }
}
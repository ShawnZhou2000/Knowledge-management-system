using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KMS.view
{
    public partial class loginok : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Object.Equals(Session["loginUser"],null))
                {
                    //Response.Redirect("index.aspx");
                }
                else
                {
                    user.Text = Session["loginUser"].ToString();
                }
            }
        }
    }
}
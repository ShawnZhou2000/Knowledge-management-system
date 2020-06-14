using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KMS.components
{
    public partial class masterPage : System.Web.UI.MasterPage
    {
        string userPrivilege;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Object.Equals(Session["loginUser"], null))
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                userID.Text = Session["loginUser"].ToString();
                userPrivilege = Session["privilege"].ToString();
                if (userPrivilege == "admin")
                {
                    privilege.Text = "系统管理员";
                }
                else if (userPrivilege == "computer")
                {
                    privilege.Text = "计算机学院";
                }
                else if (userPrivilege == "literature")
                {
                    privilege.Text = "文学院";
                }
                else
                {
                    privilege.Text = "权限出错";
                }

            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session["loginUser"] = null;
            Session["privilege"] = null;
            Response.Write("<script language=javascript>window.location.reload();</script>");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace KMS.view
{
    public partial class index : System.Web.UI.Page
    {
        private MySqlConnection conn = null;
        private string connstr = "server=localhost;Database=kms;uid=root;pwd=123456;charset=utf8";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
            conn = new MySqlConnection(connstr);
            conn.Open();
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string usrAccount = userAccount.Text;
            string usrPassword = userPassword.Text;
            string checklogin = "select userPassword,userPrivilege from users where useraccount = '" + usrAccount + "'";
            string getPswd = "";
            string privilege = "";
            bool isExist = true;
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(checklogin, conn);
            try
            {
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                throw new Exception("发生异常" + ex.Message + " at " + checklogin);
            }
            finally
            {
                conn.Close();
            }
            
            try
            {
                getPswd = dt.Rows[0]["userPassword"].ToString();
                privilege = dt.Rows[0]["userPrivilege"].ToString();
            }
            catch (Exception ex)
            {
               if (ex.Message == "在位置 0 处没有任何行。")
                {
                    isExist = false;
                }
            }

            if (isExist)
            {
                if (getPswd == usrPassword)
                {
                    Session["loginUser"] = usrAccount;
                    Session["privilege"] = privilege;
                    if (privilege == "admin")
                        Response.Redirect("mainMenu.aspx");
                    else if (privilege == "computer")
                        Response.Redirect("guestMenu_cs.aspx");
                    else if (privilege == "literature")
                        Response.Redirect("guestMenu_li.aspx");
                }
                else
                {
                    lblErr.Text = "登录失败！密码错误";
                }
            }
            else
            {
                lblErr.Text = "登录失败！账号不存在";
            }
            
        }
    }
}
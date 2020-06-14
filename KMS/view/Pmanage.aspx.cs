using MySql.Data.MySqlClient;
using Org.BouncyCastle.Crypto;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KMS.view
{
    public partial class Pmanage : System.Web.UI.Page
    {
        private MySqlConnection conn = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            String connstr = "server=localhost;Database=kms;uid=root;pwd=123456;charset=utf8";
            conn = new MySqlConnection(connstr);
            conn.Open();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string user = inputUser.Text;
            string newp = selectCategory.SelectedValue;
            string updsql = "update users set userPrivilege='" + newp + "' where userAccount='" + user + "'";
            if (user == "")
            {
                errlog.Text = "你还没有输入用户账户！";
            }
            else
            {
                string existsql = "select userAccount from users where userAccount='" + user + "'";
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(existsql, conn);
                try
                {
                    da.Fill(dt);
                }
                catch (Exception ex)
                {
                    throw new Exception("发生异常" + ex.Message + " at " + existsql);
                }

                bool isOK = true;

                try
                {
                    string check = dt.Rows[0]["userAccount"].ToString();
                }
                catch (Exception ex)
                {
                    if (ex.Message == "在位置 0 处没有任何行。")
                    {
                        errlog.Text = "找不到" + user + "用户！请检查输入";
                        isOK = false;
                    }
                        
                }
                if (isOK)
                {
                    try
                    {
                        MySqlCommand ins = new MySqlCommand(updsql, conn);
                        ins.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        throw new Exception("发生异常" + ex.Message + " at " + updsql);
                    }
                    finally
                    {
                        errlog.Text = "";
                        conn.Close();
                        Response.Write("<script>alert('已完成用户权限修改！'); history.go(-2);</script>");
                    }
                }
            }
            
        }
    }
}
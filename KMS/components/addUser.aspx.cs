using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KMS.components
{
    public partial class addUser : System.Web.UI.Page
    {
        private MySqlConnection conn = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String connstr = "server=localhost;Database=kms;uid=root;pwd=123456;charset=utf8";
            conn = new MySqlConnection(connstr);
            conn.Open();
            string userp = selectCategory.SelectedValue;
            string usera = inputUser.Text;
            string userpswd = inputPswd.Text;
            string cuserpswd = confirmPswd.Text;
            string updsql = "insert into users (userAccount, userPassword, userPrivilege) values ('" + usera + "', '" + userpswd + "', '" + userp + "');";
            if (userpswd != cuserpswd)
            {
                errlog.Text = "两次输入密码不一致！请检查";
            }
            else
            {
                string existsql = "select userAccount from users where userAccount='" + usera + "'";
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

                bool isOK = false;
                string check = "";
                try
                {
                    check = dt.Rows[0]["userAccount"].ToString();
                }
                catch (Exception ex)
                {
                    if (ex.Message == "在位置 0 处没有任何行。")
                    {
                        isOK = true;
                    }
                }

                if (check != "")
                {
                    errlog.Text = "用户" + usera + "已存在！";
                    isOK = false;
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
                        Response.Write("<script>alert('已完成用户账户添加！'); history.go(-2);</script>");
                    }
                }

            }
        }
    }
}
using System;
using MySql.Data.MySqlClient;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KMS.view
{
    public partial class Kquery_li : System.Web.UI.Page
    {
        private MySqlConnection conn = null;
        string sql = "";
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnQuery_Click(object sender, EventArgs e)
        {
            String connstr = "server=localhost;Database=kms;uid=root;pwd=123456;charset=utf8";
            conn = new MySqlConnection(connstr);
            conn.Open();
            if (queryWord.Text != "")
            {
                sql = "select * from knowledge where Kcontent like '%" + queryWord.Text + "%' and Kcategory='文学'";
            }
            else
            {
                sql = "select * from knowledge";
            }


            MySqlDataAdapter da = new MySqlDataAdapter(sql, conn);
            try
            {
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                throw new Exception("发生异常" + ex.Message + " at " + sql);
            }
            finally
            {
                conn.Close();
            }
            this.DataList1.DataSource = dt;
            this.DataList1.DataBind();
        }
    }
}
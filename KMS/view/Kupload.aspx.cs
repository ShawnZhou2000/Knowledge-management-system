using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace KMS.view
{
    public partial class Kupload : System.Web.UI.Page
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
            
        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            string cate = selectCategory.SelectedValue;
            string tt = inputTitle.Text;
            string name = inputAuthor.Text;
            string content = inputContent.Text;
            string time = DateTime.Now.ToLocalTime().ToString();
            string maxidsql = "select MAX(Kid) as ans from knowledge ";
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(maxidsql, conn);
            try
            {
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                throw new Exception("发生异常" + ex.Message + " at " + maxidsql);
            }
            string maxid_s = dt.Rows[0]["ans"].ToString();
            int nowid = int.Parse(maxid_s) + 1;
            string insertsql =
                "insert into knowledge (Kid, Kcategory, Ktitle, Kauthor, AddTime, Kcontent) values ("
                + nowid + ", '" + cate + "', '" + tt + "', '"
                + name + "', '" + time + "', '" + content
                + "')";
            try
            {
                MySqlCommand ins = new MySqlCommand(insertsql, conn);
                ins.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("发生异常" + ex.Message + " at " + insertsql);
            }
            finally
            {
                conn.Close();
                Response.Write("<script>alert('已完成一条知识信息的上传！'); history.go(-2);</script>");
              
            }
            
        }

        protected void inputAuthor_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
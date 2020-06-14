using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KMS.view
{
    public partial class Umanage : System.Web.UI.Page
    {
        private MySqlConnection conn = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            String connstr = "server=localhost;Database=kms;uid=root;pwd=123456;charset=utf8";
            conn = new MySqlConnection(connstr);
            conn.Open();

            if (!IsPostBack)
            {
                bind();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("../components/addUser.aspx");
        }

        protected void Klistinfo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Klistinfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string delsql = "delete from users where userAccount='" + Klistinfo.DataKeys[e.RowIndex].Value.ToString() + "';";

            try
            {
                MySqlCommand del = new MySqlCommand(delsql, conn);
                del.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("发生异常" + ex.Message + " at " + delsql);
            }
            finally
            {
                Response.Write("<script>alert('已删除此记录！'); </script>");
                bind();
            }

        }

        protected void Klistinfo_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string arg1 = Klistinfo.DataKeys[e.RowIndex].Value.ToString();
            string arg2 = ((TextBox)(Klistinfo.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim();
            string arg3 = ((TextBox)(Klistinfo.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim();
            string updsql = "update users set userPassword='" + arg2 + "', userPrivilege='" + arg3 + "' where userAccount='" + arg1 + "';";
            try
            {
                MySqlCommand upd = new MySqlCommand(updsql, conn);
                upd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("发生异常" + ex.Message + " at " + updsql);
            }
            finally
            {
                Response.Write("<script>alert('记录更新成功！'); </script>");
                Klistinfo.EditIndex = -1;
                bind();
            }

        }

        protected void bind()
        {
            string sqlb = "select * from users";
            MySqlDataAdapter da = new MySqlDataAdapter(sqlb, conn);
            DataTable dt = new DataTable();

            try
            {
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                throw new Exception("发生异常" + ex.Message + " at " + sqlb);
            }
            
            Klistinfo.DataSource = dt;
            Klistinfo.DataBind();
        }

        protected void Klistinfo_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Klistinfo.EditIndex = e.NewEditIndex;
            bind();
        }

        protected void Klistinfo_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
        }

        protected void Klistinfo_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            Klistinfo.EditIndex = -1;
            bind();
        }
    }
}
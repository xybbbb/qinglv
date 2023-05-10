using BLL;
using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 情侣博客.houduan
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null && Session["pwd"] == null)
            {
                Response.Write("<script>alert('请先登录！！');location='denglu.aspx'</script>");
                return;
            }

            if (!IsPostBack)
            {
                int id = int.Parse(Request.QueryString["id"]);
                DataTable dt = Jilu_bll.Select1(id);
                bool b = bool.Parse(dt.Rows[0]["Pd"].ToString());
                string nr = dt.Rows[0]["Nr"].ToString();
                CheckBox1.Checked = b;
                TextBox1.Text = nr;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            Jilu jilu=new Jilu();
            jilu.Pd = CheckBox1.Checked;
            jilu.Nr = TextBox1.Text;
            if (Jilu_bll.Update(id, jilu))
            {
                Response.Write("<script>alert('修改完成！');location='WebForm3.aspx'</script>");
            }
        }
    }
}
using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 情侣博客.houduan
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null && Session["pwd"] == null)
            {
                Response.Write("<script>alert('请先登录！！');location='denglu.aspx'</script>");
                return;
            }
            if (Session["index1"] == null)
            {
                Session["index1"] = 0;
            }
            if (int.Parse(Session["index1"].ToString()) == 0)
            {
                Button1.Enabled = false;
            }
            if (!IsPostBack)
            {
                Add();
                //Pinglun_bll.Update();
                //DataTable dt = Pinglun_bll.Selectx();
                //if (int.Parse(dt.Rows[0][0].ToString()) == 0)
                //{


                //}
            }
            int i = Pinglun_bll.Select(int.Parse(Session["index1"].ToString())).Rows.Count;
            if (i < 4)
            {
                Button2.Enabled = false;
            }
            if (i > 4)
            {
                Button2.Enabled = true;
            }
        }
        public void Add()
        {
            Repeater1.DataSource = Pinglun_bll.Select(int.Parse(Session["index1"].ToString()));
            Repeater1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            int id = int.Parse((sender as LinkButton).CommandArgument);
            if (Pinglun_bll.Delete(id))
            {
                Add();
                Response.Write("<script>alert('删除成功！')</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["index1"] = int.Parse(Session["index1"].ToString()) - 5;
            Repeater1.DataSource = Pinglun_bll.Select(int.Parse(Session["index1"].ToString()));
            Repeater1.DataBind();
            if (int.Parse(Session["index1"].ToString()) <= 0)
            {
                Button1.Enabled = false;
            }
            int i = Pinglun_bll.Select(int.Parse(Session["index1"].ToString())).Rows.Count;
            if (i > 0)
            {
                Button2.Enabled = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["index1"] = int.Parse(Session["index1"].ToString()) + 5;
            Repeater1.DataSource = Pinglun_bll.Select(int.Parse(Session["index1"].ToString()));
            Repeater1.DataBind();
            if (int.Parse(Session["index1"].ToString()) > 0)
            {
                Button1.Enabled = true;
            }
            int i = Pinglun_bll.Select(int.Parse(Session["index1"].ToString())).Rows.Count;
            if (i < 4)
            {
                Button2.Enabled = false;
            }
        }
    }
}
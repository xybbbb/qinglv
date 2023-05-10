using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 情侣博客.houduan
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
            }
            int i = Tu_bll.Select(int.Parse(Session["index1"].ToString())).Rows.Count;
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
            Repeater1.DataSource = Tu_bll.Select(int.Parse(Session["index1"].ToString()));
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["index1"] = int.Parse(Session["index1"].ToString()) - 5;
            Repeater1.DataSource = Tu_bll.Select(int.Parse(Session["index1"].ToString()));
            Repeater1.DataBind();
            if (int.Parse(Session["index1"].ToString()) <= 0)
            {
                Button1.Enabled = false;
            }
            int i = Tu_bll.Select(int.Parse(Session["index1"].ToString())).Rows.Count;
            if (i > 0)
            {
                Button2.Enabled = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["index1"] = int.Parse(Session["index1"].ToString()) + 5;
            Repeater1.DataSource = Tu_bll.Select(int.Parse(Session["index1"].ToString()));
            Repeater1.DataBind();
            if (int.Parse(Session["index1"].ToString()) > 0)
            {
                Button1.Enabled = true;
            }
            int i = Tu_bll.Select(int.Parse(Session["index1"].ToString())).Rows.Count;
            if (i < 4)
            {
                Button2.Enabled = false;
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            int id = int.Parse((sender as LinkButton).CommandArgument);
            if (Tu_bll.Delete(id))
            {
                Add();
                Response.Write("<script>alert('删除成功！')</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm7.aspx");
        }
    }
}
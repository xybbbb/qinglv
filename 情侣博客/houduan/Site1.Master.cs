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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null && Session["pwd"] == null)
            {
                Response.Write("<script>alert('请先登录！！');location='denglu.aspx'</script>");
                return;
            }
            DataTable dt= Pinglun_bll.Selectx();
            int sum=int.Parse( dt.Rows[0][0].ToString());
            Label3.Text=sum.ToString();
            Label1.Text = "用户名：" + Session["id"].ToString();
            if (int.Parse(Label3.Text) == 0)
            {
                Label3.Text = "";
                Label4.Text = "";
                Label5.Text = "";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("zhuye.aspx");
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Pinglun_bll.Update();
            Response.Redirect("WebForm2.aspx");
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            Response.Redirect("zhuye.aspx");
        }
    }
}
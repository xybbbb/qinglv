using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 情侣博客.houduan
{
    public partial class zhuye2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt2 = Yemian_bll.Select();
            Session["video"] = "../video/" + dt2.Rows[0]["Video"];
            if (!IsPostBack)
            {
                DataTable dt = Yemian_bll.Select();
                Label1.Text = dt.Rows[0]["Dh1"].ToString();
                Label2.Text = dt.Rows[0]["Dh2"].ToString();
                Image1.ImageUrl = "../img/" + dt.Rows[0]["Tx1"].ToString();
                Image2.ImageUrl = "../img/" + dt.Rows[0]["Tx2"].ToString();
                Label3.Text = dt.Rows[0]["Xm1"].ToString();
                Label4.Text = dt.Rows[0]["Xm2"].ToString();
                Repeater1.DataSource = Jilu_bll.Select();
                Repeater1.DataBind();
            }
        }
    }
}
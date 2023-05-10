using BLL;
using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 情侣博客
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string sj = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                Pinglun_bll.Update1();
                DataTable dt3 = Pinglun_bll.Select3();
                Label7.Text = dt3.Rows[0]["Sum"].ToString();
            }
            
            DataTable dt = Yemian_bll.Select();
            Label3.Text = dt.Rows[0]["Dh1"].ToString();
            Label4.Text = dt.Rows[0]["Dh2"].ToString();
            Image1.ImageUrl = "../img/"+ dt.Rows[0]["Tx1"].ToString();
            Image2.ImageUrl = "../img/" + dt.Rows[0]["Tx2"].ToString();
            Label5.Text = dt.Rows[0]["Xm1"].ToString();
            Label6.Text = dt.Rows[0]["Xm2"].ToString();
            sj = dt.Rows[0]["Sj"].ToString();
            Session["video"] = "../video/"+dt.Rows[0]["Video"];
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("houduan/denglu.aspx");
        }
    }
}
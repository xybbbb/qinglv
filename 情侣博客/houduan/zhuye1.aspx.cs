using BLL;
using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace 情侣博客.html
{
    public partial class zhuye1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt2= Yemian_bll.Select();
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
                DataTable dt1 = Pinglun_bll.Select();
                int sum = dt1.Rows.Count;
                Label5.Text = sum.ToString();
                Repeater1.DataSource = Pinglun_bll.Select();
                Repeater1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click2(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
        }

        protected void Button2_Click3(object sender, EventArgs e)
        {
        }

        protected void Button2_Click4(object sender, EventArgs e)
        {
        }

        protected void LinkButton1_Click2(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void LikeButton_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click2(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            int a = int.Parse((sender as ImageButton).CommandArgument);
            Pinglun_bll.Update2(a);
            Repeater1.DataSource = Pinglun_bll.Select();
            Repeater1.DataBind();
        }

        protected void Button1_Click3(object sender, EventArgs e)
        {

        }

        protected void Button1_Click4(object sender, EventArgs e)
        {

            //if (Pinglun_bll.Insert(NameTextBox.Text,ContentTextBox.Text, TextBox1.Text))
            //{

            //    Repeater1.DataSource = Pinglun_bll.Select();
            //    Repeater1.DataBind();
            //    DataTable dt1 = Pinglun_bll.Select();
            //    int sum = dt1.Rows.Count;
            //    Label5.Text = sum.ToString();
            //    NameTextBox.Text = "";
            //    ContentTextBox.Text = "";
            //    TextBox1.Text = "";
            //Response.Write("<script>alert('发送成功!')</script>");
            //}
        }

        protected void Button1_Click5(object sender, EventArgs e)
        {
                if (Pinglun_bll.Insert(TextBox1.Text, TextBox2.Text, TextBox3.Text))
                {

                    Repeater1.DataSource = Pinglun_bll.Select();
                    Repeater1.DataBind();
                    DataTable dt1 = Pinglun_bll.Select();
                    int sum = dt1.Rows.Count;
                    Label5.Text = sum.ToString();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
            }
        }
    }
}
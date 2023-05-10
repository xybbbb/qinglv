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
    public partial class WebForm1 : System.Web.UI.Page
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
                string id = Session["id"].ToString();
                DataTable dt = Zhanghao_bll.Select1(id);
                if (dt.Rows.Count > 0)
                {

                    TextBox1.Text = dt.Rows[0]["Dh1"].ToString();
                    TextBox2.Text = dt.Rows[0]["Dh2"].ToString();
                    //Image1.ImageUrl = "../img/" + dt.Rows[0]["Tx1"].ToString();
                    //Image2.ImageUrl = "../img/" + dt.Rows[0]["Tx2"].ToString();
                    TextBox3.Text = dt.Rows[0]["Xm1"].ToString();
                    TextBox4.Text = dt.Rows[0]["Xm2"].ToString();
                    txttime1.Value = dt.Rows[0]["Sj"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Session["id"].ToString());
            string i = Session["id"].ToString();
            string p = Session["pwd"].ToString();
            Zhanghe zhanghe = new Zhanghe();
            zhanghe.Zhanghao = i;
            zhanghe.Pwd = p;
            DataTable dt = Zhanghao_bll.Denglu(zhanghe);
            int zid = int.Parse(dt.Rows[0]["id"].ToString());
            DataTable dt1 = Zhanghao_bll.Select(zid);

            Yemian yemian = new Yemian();
            yemian.Dh1 = TextBox1.Text;
            yemian.Dh2 = TextBox2.Text;
            string tx1 = FileUpload1.FileName;
            string tx2 = FileUpload2.FileName;

            if (FileUpload1.FileName != "")
            {
                yemian.Tx1 = FileUpload1.FileName;
            }
            else
            {
                //yemian.Tx1 = Image1.ImageUrl;
            }
            if (FileUpload2.FileName != "")
            {
                yemian.Tx2 = FileUpload2.FileName;
            }
            else
            {
                //yemian.Tx2 = Image2.ImageUrl;
            }
            yemian.Xm1 = TextBox3.Text;
            yemian.Xm2 = TextBox4.Text;
            yemian.Sj = txttime1.Value;
            string jq1 = tx1.Substring(tx1.LastIndexOf(".") + 1);
            string jq2 = tx2.Substring(tx2.LastIndexOf(".") + 1);
            if (FileUpload1.FileName == "" && FileUpload2.FileName != "")
            {
                DataTable d = Yemian_bll.Select1(zid);
                    Yemian_bll.Insert1(zid, yemian);
                    Response.Write("<script>alert('修改成功！')</script>");
                    return;
            }
            if (FileUpload2.FileName == "" && FileUpload1.FileName == "")
            {
                DataTable d = Yemian_bll.Select1(zid);
                    Yemian_bll.Insert3(zid, yemian);
                    Response.Write("<script>alert('修改成功！')</script>");
                    return;
            }
            if (FileUpload2.FileName == "" && FileUpload1.FileName != "")
            {
                DataTable d = Yemian_bll.Select1(zid);
                    Yemian_bll.Insert2(zid, yemian);
                    Response.Write("<script>alert('修改成功！')</script>");
                    return;
            }
            if (jq1 == "" || jq2 == "")
            {
                if (dt1.Rows.Count > 0)
                {
                    if (Yemian_bll.Update(zid, yemian))
                    {
                        Response.Write("<script>alert('修改成功！')</script>");
                    }
                }
            }
            else if (jq1 == "png" || jq1 == "jpg")
            {
                if (jq2 == "png" || jq2 == "jpg")
                {
                    if (tx1 != "")
                    {
                        FileUpload1.SaveAs(Server.MapPath("../img/" + tx1));
                    }
                    if (tx2 != "")
                    {
                        FileUpload2.SaveAs(Server.MapPath("../img/" + tx2));
                    }
                    if (dt1.Rows.Count > 0)
                    {
                        if (FileUpload1.FileName != "" && FileUpload2.FileName != "")
                        {
                            if (Yemian_bll.Update(zid, yemian))
                            {
                                Response.Write("<script>alert('修改成功！')</script>");
                            }
                        }
                    }
                    else
                    {
                        if (FileUpload1.FileName != "" && FileUpload2.FileName != "")
                        {
                            Yemian_bll.Insert(zid, yemian);
                            Response.Write("<script>alert('修改成功！')</script>");
                            return;
                        }
                    }
                }
                else
                {
                    Response.Write("<script>alert('图片格式不正确！')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('图片格式不正确！')</script>");
            }
        }
    }
}
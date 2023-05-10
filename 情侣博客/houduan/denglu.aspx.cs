using BLL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 情侣博客
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Zhanghe zhanghe = new Zhanghe();
            zhanghe.Zhanghao = TextBox3.Text;
            zhanghe.Pwd = TextBox4.Text;
            if (TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "")
            {
                if (Zhanghao_bll.Update(TextBox5.Text, TextBox3.Text, TextBox4.Text))
                {
                    Response.Write("<script>alert('修改成功！')</script>");
                }
                else {
                    Response.Write("<script>alert('输入有误！')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('不能为空！')</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Zhanghe zhanghe = new Zhanghe();
            zhanghe.Zhanghao = TextBox1.Text;
            zhanghe.Pwd = TextBox2.Text;
            if (Zhanghao_bll.Denglu(zhanghe).Rows.Count > 0)
            {
                Session["id"] = TextBox1.Text;
                Session["pwd"] = TextBox2.Text;
                Response.Write("<script>alert('登录成功！！');location='WebForm1.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('账号或者密码错误！！')</script>");
            }
        }
    }
}
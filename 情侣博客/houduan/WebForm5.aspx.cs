using BLL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 情侣博客.houduan
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Jilu jilu = new Jilu();
            jilu.Pd = CheckBox1.Checked;
            jilu.Nr = TextBox1.Text;
            if (Jilu_bll.Insert(jilu))
            {
                Response.Write("<script>alert('添加成功！');location='WebForm3.aspx'</script>");
            }
        }
    }
}
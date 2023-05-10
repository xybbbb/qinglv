using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 情侣博客.houduan
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = FileUpload1.FileName;
            string jq = name.Substring(name.LastIndexOf(".") + 1);
            FileUpload1.SaveAs(Server.MapPath("../img/"+name));
            if (jq=="jpg"||jq=="png")
            {
                if (Tu_bll.Insert(name))
                {
                    Response.Write("<script>alert('添加成功！');location='WebForm6.aspx'</script>");
                }
            }
        }
    }
}
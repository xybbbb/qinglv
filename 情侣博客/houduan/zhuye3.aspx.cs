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
    public partial class zhuye3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater2.DataSource = Tu_bll.Select();
            Repeater2.DataBind();
            DataTable dt = Tu_bll.Select();
        }
    }
}
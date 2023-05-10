using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 情侣博客.houduan
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           string video=FileUpload1.FileName;
          string jq=  video.Substring(video.LastIndexOf(".")+1);
            if (jq == "mp4")
            {
                FileUpload1.SaveAs(Server.MapPath("../video/" + video));
                Pinglun_bll.Update3(video);
                Response.Write("<script>alert('修改成功！')</script>");
            }
            else {
                Response.Write("<script>alert('视频格式有误！')</script>");
            }
        }
    }
}
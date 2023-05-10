<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zhuye3.aspx.cs" Inherits="情侣博客.houduan.zhuye3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        * {
        margin:0px;
        padding:0px;
        }
        .left {
        float:left;
        margin:40px;
        text-align:center;
        border-radius:20px;
        }
        img {
        border-radius:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Repeater ID="Repeater2" runat="server">
                <HeaderTemplate>
                    <div>
                </HeaderTemplate>
                <ItemTemplate>
                    <dl class="left">
                        <dt><img src="../img/<%#Eval("Img") %>" width="400px" height="400px"  /></dt>
                        <dd>发布时间：<%#Eval("Sj") %></dd>
                    </dl>
                </ItemTemplate>
                <FooterTemplate>
                    </div>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>

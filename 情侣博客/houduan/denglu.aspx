<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="denglu.aspx.cs" Inherits="情侣博客.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../css/style1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
            <div class="content">
                <img class="login-img images" src="../asset/login.jpg" alt="登录" />
                <img class="register-img images" src="../asset/register.jpg" alt="修改" />
                <div class="login-wrapper">
                    <div class="top-tips">
                        <span>后台管理</span>
                        <span class="top-tips-span">修改密码</span>
                    </div>
                    <h1 class="h1-text">登录</h1>
                    <div class="login-form">
                        <div class="user-form form-item">
                            <div class="text-tips">
                                <span>账号</span>
                            </div>
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="请输入账号"></asp:TextBox>
                        </div>
                        <div class="password-form form-item">
                            <div class="text-tips">
                                <span>密码</span>
                            </div>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="请输入密码"></asp:TextBox>
                        </div>
                        <asp:Button ID="Button1" runat="server" Text="登录" CssClass="btn"  OnClick="Button1_Click"/>
                    </div>
                    <div class="register-form">
                        <div class="user-form form-item">
                            <div class="text-tips">
                                <span>账号</span>
                            </div>
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="请输入账号"></asp:TextBox>
                        </div>
                        <div class="password-form form-item">
                            <div class="text-tips">
                                <span>原密码</span>
                            </div>
                            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" placeholder="请输入密码"></asp:TextBox>
                        </div>
                        <div class="password-form form-item">
                            <div class="text-tips">
                                <span>新密码</span>
                            </div>
                            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" placeholder="请输入密码"></asp:TextBox>
                        </div>
                        <div>
                        </div>
                        <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <div>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>--%>
                                    <asp:Button ID="Button2" runat="server" Text="修改" CssClass="btn"  OnClick="Button2_Click"/>
                  <%--              </ContentTemplate>
                                <Triggers>
                                </Triggers>
                            </asp:UpdatePanel>--%>
                        </div>
                    </div>
                </div>
            </div>
     
        <script>
            let flag = 1;
            document.querySelector('.top-tips-span').addEventListener('click', function () {
                if (flag) {
                    document.querySelector('.content').classList.add("add-class-content");
                    document.querySelector('.login-img').classList.add("add-class-login-img");
                    document.querySelector('.register-img').classList.add("add-class-register-img");
                    document.querySelector('.login-img').classList.remove("add-class-login-img-show");
                    document.querySelector('.login-wrapper').style.height = '80vh';
                    document.querySelector('.content').style.height = '90vh';
                    document.querySelector('.login-form').style.display = 'none';
                    document.querySelector('.register-form').style.display = 'block';
                    document.querySelector('.top-tips-span').innerHTML = '登录';
                    document.querySelector('.h1-text').innerHTML = '修改';
                    flag = 0;
                }
                else {
                    document.querySelector('.content').classList.remove("add-class-content");
                    document.querySelector('.login-img').classList.remove("add-class-login-img");
                    document.querySelector('.login-img').classList.add("add-class-login-img-show");
                    document.querySelector('.register-img').classList.remove("add-class-register-img");
                    document.querySelector('.login-wrapper').style.height = '70vh';
                    document.querySelector('.content').style.height = '85vh';
                    document.querySelector('.login-form').style.display = 'block';
                    document.querySelector('.register-form').style.display = 'none';
                    document.querySelector('.top-tips-span').innerHTML = '修改';
                    document.querySelector('.h1-text').innerHTML = '登录';
                    flag = 1;
                }
            })
        </script>
    </form>
</body>
</html>

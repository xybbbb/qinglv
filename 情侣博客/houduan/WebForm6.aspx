<%@ Page Title="" Language="C#" MasterPageFile="~/houduan/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="情侣博客.houduan.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #duihua1 {
            width: 1000px;
            height: 600px;
        }

        #yd {
            padding-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="duihua1">
        <div id="yd">
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <tr>
                            <td>编号</td>
                            <td>照片</td>
                            <td>操作一</td>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%#Eval("Id") %></th>
                        <th>
                            <img src="../img/<%#Eval("Img") %>" width="50px" height="50px" /></th>
                        <th>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("Id") %>' OnClientClick="return confirm('你确定删除吗？')" OnClick="LinkButton2_Click">删除</asp:LinkButton>
                        </th>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">添加照片</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="上一页" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="下一页" OnClick="Button2_Click" />
        </div>
    </div>
</asp:Content>

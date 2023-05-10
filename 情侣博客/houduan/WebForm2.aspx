<%@ Page Title="" Language="C#" MasterPageFile="~/houduan/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="情侣博客.houduan.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #duihua1 {
            width: 1000px;
            height: 600px;
        }

        #yd {
            padding-left: 40px;
        }

        #Image1, #Image2 {
            border-radius: 50%;
        }

        #ri {
            text-align: center;
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
                            <th>编号</th>
                            <th>名称</th>
                            <th>电话</th>
                            <th>评论内容</th>
                            <th>获赞</th>
                            <th>评论时间</th>
                            <th>操作一</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("id") %></td>
                        <td><%#Eval("Name") %></td>
                        <td><%#Eval("Yx") %></td>
                        <td><%#Eval("Nr") %></td>
                        <td><%#Eval("Sum") %></td>
                        <td><%#Eval("Sj") %></td>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("id") %>' OnClientClick="return confirm('你确定删除吗')" OnClick="LinkButton1_Click">删除</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <div id="ri">
                <asp:Button ID="Button1" runat="server" Text="上一页" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="下一页" OnClick="Button2_Click" />
            </div>
        </div>
    </div>
</asp:Content>

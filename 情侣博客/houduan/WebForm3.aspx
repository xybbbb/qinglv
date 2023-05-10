<%@ Page Title="" Language="C#" MasterPageFile="~/houduan/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="情侣博客.houduan.WebForm3" %>

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
                            <th>编号</th>
                            <th>是否完成</th>
                            <th>约定</th>
                            <th>操作一</th>
                            <th>操作二</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Id") %></td>
                        <td><%# bool.Parse(Eval("Pd").ToString())==true?"已完成":"未完成" %></td>
                        <td><%#Eval("Nr") %></td>
                        <td>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("Id") %>' OnClick="LinkButton2_Click">修改</asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("Id") %>' OnClientClick="return confirm('你确定删除吗？')" OnClick="LinkButton1_Click">删除</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click2">添加</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="上一页" OnClick="Button1_Click"/>&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="下一页" OnClick="Button2_Click"/>
        </div>
    </div>
</asp:Content>

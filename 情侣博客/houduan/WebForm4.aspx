<%@ Page Title="" Language="C#" MasterPageFile="~/houduan/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="情侣博客.houduan.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        #duihua1 {
            width: 400px;
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
            是否完成：<asp:CheckBox ID="CheckBox1" runat="server" />
            <br />
            <br />
            <br />
            约定：<asp:TextBox ID="TextBox1" runat="server" Width="350"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>

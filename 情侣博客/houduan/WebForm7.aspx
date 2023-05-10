<%@ Page Title="" Language="C#" MasterPageFile="~/houduan/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="情侣博客.houduan.WebForm7" %>

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
        <br />
        <br />
        <div id="yd">
            上传照片：<asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>

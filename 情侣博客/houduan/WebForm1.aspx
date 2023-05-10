<%@ Page Title="" Language="C#" MasterPageFile="~/houduan/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="情侣博客.houduan.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../js/Calendar.js"></script>
    <style>
        #duihua1 {
            width: 500px;
            height: 600px;
        }

        #yd {
            padding-left: 100px;
        }

        #Image1, #Image2 {
            border-radius: 50%;
        }
    </style>
    <script type="text/javascript">
        var oCalendarChs = new PopupCalendar("oCalendarChs"); //初始化控件时,请给出实例名称:oCalendarChs
        oCalendarChs.weekDaySting = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
        oCalendarChs.monthSting = new Array("一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月");
        oCalendarChs.oBtnTodayTitle = "今天";
        oCalendarChs.oBtnCancelTitle = "取消";
        this.startYear = 1970;
        this.endYear = 2010;
        oCalendarChs.Init();
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="duihua1">
        <div id="yd">
            对话标题1：
        <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            对话标题2：
        <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            头像1：<br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            头像2：<br />
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <br />
            姓名1：
        <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            姓名1：
        <br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            起始时间：
        <br />
            <input id="txttime1" runat="server" name="txttime1" onclick="getDateString(this,oCalendarChs)"
                style="width: 119px" type="text" value="--请选择日期--" readonly="readonly" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="修改" Width="60px" Height="30px" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>

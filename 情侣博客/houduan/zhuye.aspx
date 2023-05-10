<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zhuye.aspx.cs" Inherits="情侣博客.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="icon" href="favicon.ico" />
    <link rel="pingback" href="https://mishi23.com/index.php/action/xmlrpc" />
    <link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://mishi23.com/index.php/action/xmlrpc?rsd" />
    <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://mishi23.com/index.php/action/xmlrpc?wlw" />
    <style>
        @font-face {
            font-family: FontStyle;
            src: url("fonts/fonts.woff2");
        }

        * {
            font-family: FontStyle;
        }

        #lolijump {
            display: none;
        }
    </style>
    <script type="text/javascript">
        (function () {
            window.TypechoComment = {
                dom: function (id) {
                    return document.getElementById(id);
                },

                create: function (tag, attr) {
                    var el = document.createElement(tag);

                    for (var key in attr) {
                        el.setAttribute(key, attr[key]);
                    }

                    return el;
                },

                reply: function (cid, coid) {
                    var comment = this.dom(cid), parent = comment.parentNode,
                        response = this.dom('respond-page-5'), input = this.dom('comment-parent'),
                        form = 'form' == response.tagName ? response : response.getElementsByTagName('form')[0],
                        textarea = response.getElementsByTagName('textarea')[0];

                    if (null == input) {
                        input = this.create('input', {
                            'type': 'hidden',
                            'name': 'parent',
                            'id': 'comment-parent'
                        });

                        form.appendChild(input);
                    }

                    input.setAttribute('value', coid);

                    if (null == this.dom('comment-form-place-holder')) {
                        var holder = this.create('div', {
                            'id': 'comment-form-place-holder'
                        });

                        response.parentNode.insertBefore(holder, response);
                    }

                    comment.appendChild(response);
                    this.dom('cancel-comment-reply-link').style.display = '';

                    if (null != textarea && 'text' == textarea.name) {
                        textarea.focus();
                    }

                    return false;
                },

                cancelReply: function () {
                    var response = this.dom('respond-page-5'),
                        holder = this.dom('comment-form-place-holder'), input = this.dom('comment-parent');

                    if (null != input) {
                        input.parentNode.removeChild(input);
                    }

                    if (null == holder) {
                        return true;
                    }

                    this.dom('cancel-comment-reply-link').style.display = 'none';
                    holder.parentNode.insertBefore(response, holder);
                    return false;
                }
            };
        })();
    </script>
    <script type="text/javascript">//调试 1秒 即暂停
        function checkDebugger() {
            var d = new Date();
            debugger; var dur = Date.now() - d;
            if (dur < 1) {
                return false
            } else {
                return true
            }
        }
        function breakDebugger() {
            if (checkDebugger()) {
                breakDebugger()
            }
        }
        ; breakDebugger();</script>
    <link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css" media="all">
    <link rel="stylesheet" href="../css/botui.min.css">
    <link rel="stylesheet" href="../css/botui-theme-default.css">
    <!--安全-->
    <%--    <script disable-devtool-auto="" src="../js/disable-devtool.min.js"></script>
    <script src="../js/mishi.js"></script>
    <script src="../js/disable-devtool.min_1.js"></script>--%>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <script src="../js/jquery.min.js"></script>
    <link rel="stylesheet" href="../css/bootstrap.min_1.css">
    <script src="../js/jquery.min_1.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <!--灯箱核心js引入 开始-->
    <link rel="stylesheet" href="../css/jquery.fancybox.min.css">
    <script src="../js/jquery.fancybox.min.js"></script>
    <!--灯箱核心js引入 结束-->
    <script src="../js/bootstrap.bundle.min.js"></script>
    <!--OwO标签js核心引入 开始-->
    <script src="../js/OwO.min.js"></script>
    <link href="../css/OwO.min.css" rel="stylesheet">
    <!--OwO标签js核心引入 结束-->
    <style>
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container-fluid position-relative">
                <nav class="navbar navbar-expand-lg navbar-dark  text-white bg-transparent">
                    <div class="container">
                        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="navbar-brand">💖
                            <asp:Label ID="Label3" runat="server" Text="Label">那年初冬</asp:Label>
                            💖</asp:Label>
                        <!--        <div class="mishi22">-->
                        <!--        <li class="nav-item" style="margin-top: -27px;background-color: hsl(0deg 0% 100% / 34%);-->
                        <!--border-radius: 10px; text-align: center;"><a href="https://mishi23.com/" class="nav-link" style="color: #fff; "><img src="https://thvse.cn/mishi/f945729091daa33c577a3313992239ad.png" style="width: 15px; margin-top: -3px;">首页</a></li></div>-->
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarText">
                            <ul class="navbar-nav mr-auto">
                            </ul>
                            <asp:Label ID="Label2" runat="server" Text="Label">💕
                                <asp:Label ID="Label4" runat="server" Text="Label">四季皆欢喜，因为我有你！（钱钱）</asp:Label>
                                🍂</asp:Label>
                        </div>
                    </div>
                </nav>
                <video autoplay="autoplay" class="lover-background" loop="loop" muted="" src="<%:Session["video"] %>"></video>
                <section class="lover-background1" style="background-image: url(img/B6560D34696833F49655B25B7926A9A1.jpeg)"></section>
                <section class="container lover-container d-flex flex-column align-content-center justify-content-center">
                    <div class="row align-items-center pb-5 lover">
                        <div class="col">
                            <div class="d-flex flex-column">
                                <asp:Image ID="Image1" runat="server" CssClass="mx-auto avatar-img rounded-circle" />
                                <asp:Label ID="Label5" runat="server" Text="Label" CssClass="mx-auto text-white pt-2" Font-Size="24px">大大</asp:Label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="d-flex justify-content-center">
                                <div class="heart"></div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="d-flex flex-column">
                                <asp:Image ID="Image2" runat="server" CssClass="mx-auto avatar-img rounded-circle" />
                                <asp:Label ID="Label6" runat="server" Text="Label" CssClass="mx-auto text-white pt-2" Font-Size="24px">大大</asp:Label>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="main-hero-waves-area waves-area">
                    <svg class="waves-svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
                        <defs>
                            <path id="gentle-wave" d="M -160 44 c 30 0 58 -18 88 -18 s 58 18 88 18 s 58 -18 88 -18 s 58 18 88 18 v 44 h -352 Z"></path>
                        </defs>
                        <g class="parallax">
                            <use xlink:href="#gentle-wave" x="48" y="0"></use>
                            <use xlink:href="#gentle-wave" x="48" y="3"></use>
                            <use xlink:href="#gentle-wave" x="48" y="5"></use>
                            <use xlink:href="#gentle-wave" x="48" y="7"></use>
                        </g>
                    </svg>
                </section>
            </div>
            <div id="Pjax">
                <div id="lolijump" style="">
                    <a href="#">
                        <img style="height: auto; width: 100%;" src="img/lolisister1.gif" /></a>
                </div>
                <div class="container">
                    <blockquote class="blockquote text-center my-5 py-2">
                        <h5 class="card-title lover-card-title">我们风雨同舟已经一起走过</h5>
                        <div id="time" style="margin-bottom: -45px;">
                            <span id="timejishiqi"></span>
                        </div>
                        <script>
                            //计时器
                            function timingTime() {
                                // 开始时间 格式： 年-月-日 00:00:00
                                /*let start = '2001-10-17 00:00:00'*/
                                let start = '<%=sj %>'
                                let startTime = new Date(start.replace(/-/g, '/')).getTime()
                                let currentTime = new Date().getTime()
                                let difference = currentTime - startTime
                                let m = Math.floor(difference / (1000))
                                let mm = m % 60  // 秒
                                let f = Math.floor(m / 60)
                                let ff = f % 60 // 分钟
                                let s = Math.floor(f / 60) // 小时
                                let ss = s % 24
                                let day = Math.floor(s / 24) // 天数
                                return "" +
                                    " 第<font class=bigfontNum color=#FF5722>" + day + "</font> 天" +
                                    " <font class=bigfontNum color=#FFA000>" + ss + "</font> 小时" +
                                    " <font  class=bigfontNum color=#03A9F4>" + ff + "</font> 分钟" +
                                    " <font class=bigfontNum color=#448AFF>" + mm + "</font> 秒"
                            }
                            setInterval(() => {
                                document.getElementById('timejishiqi').innerHTML = timingTime()
                            }, 1000)
                            var _0x213458 = _0x3cfa; function _0x3cfa(_0x4f1c94, _0xbf7918) { var _0x19a75b = _0x5213(); return _0x3cfa = function (_0x376e24, _0x4c76ee) { _0x376e24 = _0x376e24 - (0x3 * 0x9ad + -0x1d01 + 0x175 * 0x1); var _0x1adfb8 = _0x19a75b[_0x376e24]; return _0x1adfb8; }, _0x3cfa(_0x4f1c94, _0xbf7918); } (function (_0x2984ec, _0x21653a) { var _0x491e67 = _0x3cfa, _0x2d3316 = _0x2984ec(); while (!![]) { try { var _0xdcfb0d = parseInt(_0x491e67(0x17c)) / (-0x264d * 0x1 + -0x2 * -0xf21 + -0x406 * -0x2) + -parseInt(_0x491e67(0x185)) / (0xae7 + -0x1 * -0x1723 + 0x1104 * -0x2) * (parseInt(_0x491e67(0x17f)) / (0x1839 + -0x18e4 + 0xae)) + -parseInt(_0x491e67(0x18c)) / (-0x24f6 + 0x24ea + 0x10) * (-parseInt(_0x491e67(0x18f)) / (-0x755 * -0x1 + -0xf11 * -0x1 + -0x1661)) + parseInt(_0x491e67(0x186)) / (0x2278 + -0x3 * 0x611 + -0x103f * 0x1) + parseInt(_0x491e67(0x17b)) / (-0x2 * -0x10f5 + -0xcf8 * -0x1 + 0x2edb * -0x1) + -parseInt(_0x491e67(0x195)) / (-0x10d3 + 0x66e + 0xa6d) * (-parseInt(_0x491e67(0x184)) / (-0xb1e + 0x2049 + -0x5 * 0x43a)) + parseInt(_0x491e67(0x183)) / (-0x118f + -0x18a * -0xd + -0x269) * (-parseInt(_0x491e67(0x17d)) / (0x164 + -0x4bb * 0x4 + 0x1193 * 0x1)); if (_0xdcfb0d === _0x21653a) break; else _0x2d3316['push'](_0x2d3316['shift']()); } catch (_0x2029ab) { _0x2d3316['push'](_0x2d3316['shift']()); } } }(_0x5213, -0x47171 + 0x10897f + -0x29632), console[_0x213458(0x18b)](_0x213458(0x197) + _0x213458(0x187) + _0x213458(0x198) + _0x213458(0x18d) + _0x213458(0x193) + _0x213458(0x180), _0x213458(0x199) + _0x213458(0x188) + _0x213458(0x18a) + _0x213458(0x191) + _0x213458(0x190) + _0x213458(0x194) + _0x213458(0x181) + _0x213458(0x192), _0x213458(0x189) + _0x213458(0x188) + _0x213458(0x18a) + _0x213458(0x191) + _0x213458(0x182) + _0x213458(0x17e) + _0x213458(0x181) + _0x213458(0x196) + _0x213458(0x18e))); function _0x5213() { var _0x49026a = ['f,#ffffff)', '1632027tDuNOG', 'sky-page', ';padding:5', 'deg,#44e9f', '2797760PDmtOk', '9FVRwEs', '2gxsLrc', '347910AKqzQv', '站\x20By：小言u\x20%', ';backgroun', 'color:#000', 'd:linear-g', 'log', '20zuIlKC', 'github.com', 'x\x200px;', '1200285wZCNZL', 'deg,#448bf', 'radient(90', 'px\x200;', '/xiaoyanu/', 'f,#44e9ff)', '6428752zgDDrZ', 'px\x2010px\x205p', '\x0a\x0a\x0a\x20%c\x20光遇小', 'c\x20https://', 'color:#fff', '222439fmoofP', '752092LziURi', '66dVVBFo']; _0x5213 = function () { return _0x49026a; }; return _0x5213(); }
    </script>
                        <!--<h5 id="site_runtime" style="    margin-bottom: -45px;"></h5>-->
                    </blockquote>
                    <div class="row indexPlate">
                        <div class="col-md-4">
                            <a href="/houduan/zhuye1.aspx" class="card ">
                                <div class="card-body">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <div class="avatar avatar-md">
                                                <img src="https://tva4.sinaimg.cn/large/0084aYsLly1gngle9wjj4j308p08pweq.jpg" alt="..." class="avatar-img rounded-circle">
                                                <svg class="icon" style="width: 64px; height: 64px; vertical-align: middle; fill: currentColor; overflow: hidden;" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="635">
                                                    <path d="M332.65664 670.70976h574.76096c1.536 0 2.65216-1.31072 2.26304-2.63168L803.40992 312.92416c-0.27648-0.91136-1.19808-1.55648-2.26304-1.55648H226.39616c-1.536 0-2.65216 1.31072-2.26304 2.63168l106.26048 355.15392c0.27648 0.9216 1.20832 1.55648 2.26304 1.55648z" fill="#C3D6D0" p-id="636"></path><path d="M907.4176 682.55744H332.65664c-6.33856 0-11.79648-4.00384-13.60896-9.97376L212.77696 317.39904c-1.23904-4.11648-0.44032-8.67328 2.1504-12.16512 2.65216-3.584 6.94272-5.72416 11.45856-5.72416h574.76096c6.27712 0 11.88864 4.13696 13.62944 10.06592L921.0368 664.6784c1.23904 4.16768 0.41984 8.71424-2.18112 12.1856-2.6624 3.56352-6.93248 5.69344-11.43808 5.69344z m-567.72608-23.7056h554.8544L794.112 323.2256H239.26784l100.42368 335.62624z m452.352-342.528c0.02048 0.03072 0.02048 0.0512 0.03072 0.08192l-0.03072-0.08192z m-556.56448-5.75488l0.02048 0.0512c0-0.01024-0.01024-0.03072-0.02048-0.0512z" fill="#6F6973" p-id="637"></path><path d="M691.3536 712.63232H116.60288c-1.536 0-2.65216-1.45408-2.26304-2.93888l106.26048-396.58496c0.27648-1.024 1.19808-1.73056 2.26304-1.73056h574.75072c1.536 0 2.65216 1.45408 2.26304 2.93888L693.61664 710.90176c-0.27648 1.01376-1.20832 1.73056-2.26304 1.73056z" fill="#FFFFFF" p-id="638"></path><path d="M691.3536 724.48H116.59264c-4.44416 0-8.54016-2.01728-11.25376-5.55008s-3.60448-8.00768-2.4576-12.30848l106.26048-396.58496c1.6384-6.17472 7.28064-10.52672 13.71136-10.52672h574.75072c4.43392 0 8.52992 2.01728 11.24352 5.53984s3.61472 7.99744 2.47808 12.29824L705.06496 713.96352c-1.62816 6.17472-7.2704 10.51648-13.71136 10.51648z m-9.18528-16.68096c-0.01024 0.02048-0.01024 0.0512-0.02048 0.08192l0.02048-0.08192z m-553.17504-7.02464h555.04896l101.1712-377.55904H230.16448l-101.1712 377.55904z m103.07584-384.64512l-0.02048 0.06144c0.01024-0.01024 0.01024-0.04096 0.02048-0.06144z" fill="#6F6973" p-id="639"></path><path d="M617.24672 665.42592H231.95648c-6.54336 0-11.85792-5.30432-11.85792-11.85792 0-6.54336 5.30432-11.85792 11.85792-11.85792h385.29024c6.54336 0 11.85792 5.30432 11.85792 11.85792-0.01024 6.5536-5.31456 11.85792-11.85792 11.85792zM546.87744 605.53216H302.32576c-6.54336 0-11.85792-5.30432-11.85792-11.85792 0-6.54336 5.30432-11.85792 11.85792-11.85792h244.55168c6.54336 0 11.85792 5.30432 11.85792 11.85792-0.01024 6.5536-5.31456 11.85792-11.85792 11.85792z" fill="#6F6973" p-id="640"></path><path d="M552.41728 374.95808c-18.21696-21.16608-53.20704-20.5312-78.24384 1.41312l-14.04928 12.31872c-0.52224 0.4608-1.25952 0.47104-1.6384 0.03072l-10.21952-11.8784c-18.176-21.16608-53.20704-20.5312-78.21312 1.41312-12.51328 10.97728-20.13184 25.15968-22.36416 39.2704-2.23232 14.12096 0.93184 28.1088 10.0352 38.68672L368.64 468.89984l62.70976 72.86784c1.75104 2.02752 5.10976 1.96608 7.51616-0.13312l86.23104-75.56096 15.0016-13.14816c12.48256-10.97728 20.13184-25.14944 22.36416-39.2704 2.23232-14.12096-0.9728-28.1088-10.04544-38.69696z" fill="#F4BCAB" p-id="641"></path><path d="M434.74944 555.10016c-0.38912 0-0.77824-0.02048-1.1776-0.04096-4.4032-0.3072-8.38656-2.28352-11.2128-5.56032l-73.61536-85.54496c-11.1104-12.92288-15.64672-30.06464-12.75904-48.2816 2.75456-17.44896 12.0832-33.90464 26.25536-46.336 15.77984-13.84448 35.77856-21.01248 55.1424-19.6608 15.91296 1.1264 30.07488 8.02816 39.87456 19.43552l3.10272 3.60448 6.01088-5.26336c15.79008-13.85472 35.87072-21.0944 55.1424-19.6608 15.90272 1.11616 30.07488 8.01792 39.8848 19.42528l0.02048 0.02048c11.10016 12.94336 15.616 30.08512 12.73856 48.26112-2.74432 17.39776-12.07296 33.85344-26.24512 46.31552l-101.24288 88.71936c-3.328 2.93888-7.61856 4.56704-11.91936 4.56704z m-22.0672-181.87264c-12.07296 0-24.60672 4.97664-34.80576 13.93664-10.01472 8.78592-16.57856 20.224-18.47296 32.21504-1.77152 11.22304 0.8192 21.56544 7.31136 29.11232l68.97664 80.15872 96.59392-84.6336c10.00448-8.8064 16.57856-20.25472 18.46272-32.21504 1.77152-11.20256-0.82944-21.53472-7.31136-29.11232-7.24992-8.42752-16.83456-10.76224-23.58272-11.24352-12.98432-0.88064-26.7776 4.13696-37.84704 13.84448l-14.05952 12.31872a13.192192 13.192192 0 0 1-9.65632 3.25632l-4.93568-0.3584-3.87072-4.096-10.1888-11.83744c-7.24992-8.42752-16.81408-10.76224-23.56224-11.24352-1.01376-0.07168-2.03776-0.1024-3.05152-0.1024z" fill="#6F6973" p-id="642"></path></svg>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <p class="h5">祝福板</p>
                                            <p class="small text-muted mb-1">💌写下对我们的祝福</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-4">
                            <a href="/houduan/zhuye2.aspx" class="card">
                                <div class="card-body">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <div class="avatar avatar-md">
                                                <img src="https://tvax2.sinaimg.cn/large/0084aYsLly1gngle9t7otj308p08pjri.jpg" alt="..." class="avatar-img rounded-circle">
                                                <svg class="icon" style="width: 64px; height: 64px; vertical-align: middle; fill: currentColor; overflow: hidden;" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="549">
                                                    <path d="M112.9984 213.72928h798.01344v692.38784H112.9984z" fill="#FFFFFF" p-id="550"></path><path d="M926.48448 921.6H97.51552V198.23616h828.9792V921.6z m-798.0032-30.96576h767.03744V229.21216H128.48128v661.42208z" fill="#6F6973" p-id="551"></path><path d="M663.98208 528.56832c-36.98688-35.66592-95.77472-34.60096-131.44064 2.38592l-20.0192 20.75648c-0.74752 0.77824-1.97632 0.79872-2.75456 0.0512l-20.75648-20.0192c-36.92544-35.67616-95.77472-34.60096-131.38944 2.37568-17.83808 18.49344-26.46016 42.3936-26.03008 66.19136 0.43008 23.79776 9.91232 47.36 28.40576 65.19808l22.15936 21.37088L509.51168 809.6768c3.55328 3.42016 9.20576 3.31776 12.62592-0.22528l122.85952-127.34464 21.37088-22.15936c17.77664-18.49344 26.46016-42.3936 26.03008-66.19136-0.43008-23.77728-9.97376-47.34976-28.416-65.18784z" fill="#F4BCAB" p-id="552"></path><path d="M515.70688 827.65824c-6.10304 0-12.20608-2.27328-16.93696-6.81984l-149.504-144.1792c-20.8384-20.10112-32.6144-47.11424-33.13664-76.06272-0.53248-28.94848 10.25024-56.3712 30.3616-77.21984 20.09088-20.85888 47.104-32.64512 76.06272-33.16736 28.83584-0.45056 56.38144 10.28096 77.21984 30.40256l11.008 10.60864 10.61888-11.008c41.50272-43.04896 110.2848-44.29824 153.33376-2.77504l0.02048 0.01024c20.82816 20.16256 32.59392 47.16544 33.11616 76.05248 0.52224 28.88704-10.26048 56.29952-30.35136 77.19936l-144.24064 149.504c-4.78208 4.95616-11.17184 7.45472-17.57184 7.45472z m-91.14624-306.50368c-0.48128 0-0.96256 0-1.44384 0.01024-20.6848 0.37888-39.97696 8.78592-54.3232 23.69536-14.37696 14.8992-22.07744 34.48832-21.7088 55.16288 0.37888 20.6848 8.78592 39.97696 23.67488 54.33344l144.77312 139.63264 139.68384-144.78336c14.35648-14.92992 22.05696-34.51904 21.68832-55.15264-0.36864-20.61312-8.77568-39.91552-23.67488-54.33344-30.76096-29.65504-79.90272-28.7744-109.55776 1.98656l-20.0192 20.75648c-3.2256 3.34848-7.5776 5.25312-12.25728 5.3248-4.52608 0.21504-9.08288-1.66912-12.4416-4.93568l-20.70528-19.968c-14.52032-14.04928-33.54624-21.72928-53.68832-21.72928z m76.83072 19.78368l-0.03072 0.03072 0.03072-0.03072z m19.0464-0.41984l0.08192 0.09216c-0.03072-0.03072-0.06144-0.06144-0.08192-0.09216z" fill="#6F6973" p-id="553"></path><path d="M508.96896 732.59008c-3.09248 0-6.20544-0.9216-8.92928-2.84672C414.08512 668.95872 374.784 620.57472 379.88352 581.81632c2.97984-22.62016 20.67456-34.88768 30.65856-38.58432 7.99744-2.95936 16.92672 1.13664 19.88608 9.1648 2.93888 7.95648-1.0752 16.78336-8.97024 19.8144-1.15712 0.48128-9.80992 4.36224-10.9056 13.94688-1.35168 11.78624 6.41024 46.90944 107.37664 118.31296 6.98368 4.93568 8.64256 14.60224 3.69664 21.58592-3.01056 4.25984-7.80288 6.53312-12.65664 6.53312z" fill="#F2EDEA" p-id="554"></path><path d="M112.9984 366.44864h798.01344v30.96576H112.9984z" fill="#6F6973" p-id="555"></path><path d="M251.86304 297.17504c-21.9648 0-39.77216-17.80736-39.77216-39.77216v-99.74784c0-21.9648 17.80736-39.77216 39.77216-39.77216 21.9648 0 39.77216 17.80736 39.77216 39.77216v99.74784c0 21.9648-17.80736 39.77216-39.77216 39.77216z" fill="#FFD18F" p-id="556"></path><path d="M251.86304 312.65792c-30.464 0-55.25504-24.79104-55.25504-55.25504v-99.74784c0-30.464 24.79104-55.25504 55.25504-55.25504s55.25504 24.79104 55.25504 55.25504v99.74784c0 30.47424-24.79104 55.25504-55.25504 55.25504z m0-179.29216c-13.39392 0-24.28928 10.89536-24.28928 24.28928v99.74784c0 13.39392 10.89536 24.28928 24.28928 24.28928s24.28928-10.89536 24.28928-24.28928v-99.74784c0-13.39392-10.89536-24.28928-24.28928-24.28928z" fill="#6F6973" p-id="557"></path><path d="M766.26944 297.17504c-21.9648 0-39.77216-17.80736-39.77216-39.77216v-99.74784c0-21.9648 17.80736-39.77216 39.77216-39.77216 21.9648 0 39.77216 17.80736 39.77216 39.77216v99.74784c0 21.9648-17.80736 39.77216-39.77216 39.77216z" fill="#FFD18F" p-id="558"></path><path d="M766.26944 312.65792c-30.464 0-55.25504-24.79104-55.25504-55.25504v-99.74784c0-30.464 24.79104-55.25504 55.25504-55.25504s55.25504 24.79104 55.25504 55.25504v99.74784c0 30.47424-24.79104 55.25504-55.25504 55.25504z m0-179.29216c-13.39392 0-24.28928 10.89536-24.28928 24.28928v99.74784c0 13.39392 10.89536 24.28928 24.28928 24.28928 13.39392 0 24.28928-10.89536 24.28928-24.28928v-99.74784c-0.01024-13.39392-10.89536-24.28928-24.28928-24.28928z" fill="#6F6973" p-id="559"></path></svg>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <p class="h5">点点滴滴</p>
                                            <p class="small text-muted mb-1">💖记录你我生活</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <%-- <div class="col-md-4">
                            <a href="https://mishi23.com/index.php/54.html" class="card home-card">
                                <div class="card-body">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <div class="avatar avatar-md">
                                                <!--<img src="" alt="..." class="avatar-img rounded-circle">-->
                                                <svg t="1653637332367" class="icon" style="width: 64px; height: 64px; vertical-align: middle; fill: currentColor; overflow: hidden;" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="6908" width="200" height="200">
                                                    <path d="M146.285714 292.571429m36.571429 0l292.571428 0q36.571429 0 36.571429 36.571428l0 0q0 36.571429-36.571429 36.571429l-292.571428 0q-36.571429 0-36.571429-36.571429l0 0q0-36.571429 36.571429-36.571428Z" p-id="6909" fill="#8a8a8a"></path><path d="M146.285714 438.857143m36.571429 0l219.428571 0q36.571429 0 36.571429 36.571428l0 0q0 36.571429-36.571429 36.571429l-219.428571 0q-36.571429 0-36.571429-36.571429l0 0q0-36.571429 36.571429-36.571428Z" p-id="6910" fill="#8a8a8a"></path><path d="M146.285714 585.142857m36.571429 0l146.285714 0q36.571429 0 36.571429 36.571429l0 0q0 36.571429-36.571429 36.571428l-146.285714 0q-36.571429 0-36.571429-36.571428l0 0q0-36.571429 36.571429-36.571429Z" p-id="6911" fill="#8a8a8a"></path><path d="M694.857143 1024H109.714286a109.714286 109.714286 0 0 1-109.714286-109.714286V109.714286a109.714286 109.714286 0 0 1 109.714286-109.714286h621.714285a109.714286 109.714286 0 0 1 109.714286 109.714286v329.142857h-73.142857V109.714286a36.571429 36.571429 0 0 0-36.571429-36.571429H109.714286a36.571429 36.571429 0 0 0-36.571429 36.571429v804.571428a36.571429 36.571429 0 0 0 36.571429 36.571429h585.142857z" p-id="6912" fill="#8a8a8a"></path><path d="M713.142857 1024a310.857143 310.857143 0 1 1 310.857143-310.857143 311.222857 311.222857 0 0 1-310.857143 310.857143z m0-548.571429a237.714286 237.714286 0 1 0 237.714286 237.714286 238.08 238.08 0 0 0-237.714286-237.714286z" p-id="6913" fill="#8a8a8a"></path><path d="M841.142857 768h-182.857143v-219.428571a36.571429 36.571429 0 0 1 73.142857 0v146.285714h109.714286a36.571429 36.571429 0 0 1 0 73.142857z" p-id="6914" fill="#8a8a8a"></path></svg>

                                            </div>
                                        </div>
                                        <div class="col">
                                            <p class="h5" style="color: #3B3838;">时光机</p>
                                            <p class="small text-muted mb-1">🕖你言我语</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>--%>
                        <%--<div class="col-md-4">
                            <a href="https://mishi23.com/index.php/51.html" class="card ">
                                <div class="card-body">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <div class="avatar avatar-md">
                                                <img src="img/women.png" alt="..." class="avatar-img rounded-circle">
                                            </div>
                                        </div>
                                        <div class="col">
                                            <p class="h5">关于我们</p>
                                            <p class="small text-muted mb-1">💑我们的经历</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>--%>
                        <%--<div class="col-md-4">
                            <a href="https://mishi23.com/index.php/6.html" class="card ">
                                <div class="card-body">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <div class="avatar avatar-md">
                                                <!--<img src="https://tva1.sinaimg.cn/large/0084aYsLly1gngle9o55hj308p08pdfz.jpg" alt="..." class="avatar-img rounded-circle">-->
                                                <svg t="1653541331933" class="icon" style="width: 64px; height: 64px; vertical-align: middle; fill: currentColor; overflow: hidden;" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4448" width="200" height="200">
                                                    <path d="M700.1 1024H416.5c-159.7 0-289.7-129.9-289.7-289.6V289.7C126.8 129.9 256.8 0 416.5 0h283.6c159.7 0 289.7 129.9 289.7 289.7V512c0 26.2-21.2 47.4-47.4 47.4S895 538.2 895 512V289.7c0-107.5-87.4-194.9-194.9-194.9H416.5c-107.4 0-194.9 87.4-194.9 194.9v444.7c0 107.4 87.4 194.9 194.9 194.9h283.6c107.5 0 194.9-87.4 194.9-194.9 0-26.2 21.2-47.4 47.4-47.4s47.4 21.2 47.4 47.4c0 159.7-130 289.6-289.7 289.6z" fill="#707070" p-id="4449"></path><path d="M266.836 296.95h-185.2c-26.2 0-47.4-21.2-47.4-47.4s21.2-47.4 47.4-47.4h185.2c26.2 0 47.4 21.2 47.4 47.4s-21.2 47.4-47.4 47.4zM266.836 471.95h-185.2c-26.2 0-47.4-21.2-47.4-47.4s21.2-47.4 47.4-47.4h185.2c26.2 0 47.4 21.2 47.4 47.4s-21.2 47.4-47.4 47.4zM266.836 646.85h-185.2c-26.2 0-47.4-21.2-47.4-47.4s21.2-47.4 47.4-47.4h185.2c26.2 0 47.4 21.2 47.4 47.4s-21.2 47.4-47.4 47.4zM266.836 821.85h-185.2c-26.2 0-47.4-21.2-47.4-47.4s21.2-47.4 47.4-47.4h185.2c26.2 0 47.4 21.2 47.4 47.4s-21.2 47.4-47.4 47.4z" fill="#707070" p-id="4450"></path></svg>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <p class="h5">Love List</p>
                                            <p class="small text-muted mb-1">📜甜蜜瞬间有你陪伴</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>--%>
                        <div class="col-md-4">
                            <a href="/houduan/zhuye3.aspx" class="card ">
                                <div class="card-body">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <div class="avatar avatar-md">
                                                <svg class="icon" style="width: 64px; height: 64px; vertical-align: middle; fill: currentColor; overflow: hidden;" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="908">
                                                    <path d="M248.97536 299.13088H133.94944v-88.82176c0-22.82496 18.56512-41.37984 41.37984-41.37984h32.26624c22.81472 0 41.37984 18.56512 41.37984 41.37984v88.82176z m-78.96064-36.06528h42.89536v-52.75648c0-2.93888-2.38592-5.31456-5.31456-5.31456h-32.26624c-2.92864 0-5.31456 2.38592-5.31456 5.31456v52.75648z" fill="#6F6973" p-id="909"></path><path d="M870.52288 238.44864H848.6912c-31.25248 0-56.59648-24.04352-56.59648-53.69856 0-35.52256-30.35136-64.32768-67.79904-64.32768H408.53504c-37.44768 0-67.79904 28.79488-67.79904 64.32768 0 29.65504-25.33376 53.69856-56.59648 53.69856h-130.6624c-55.68512 0-100.83328 42.83392-100.83328 95.66208v473.78432c0 52.8384 45.14816 95.66208 100.83328 95.66208h717.04576c55.68512 0 100.83328-42.83392 100.83328-95.66208V334.12096c0-52.8384-45.14816-95.67232-100.83328-95.67232z" fill="#A9B6BC" p-id="910"></path><path d="M870.52288 921.6H153.47712c-65.536 0-118.86592-51.00544-118.86592-113.70496V334.12096c0-62.68928 53.31968-113.70496 118.86592-113.70496h130.6624c21.26848 0 38.56384-16.00512 38.56384-35.66592 0-45.4144 38.5024-82.36032 85.82144-82.36032h315.76064c47.31904 0 85.82144 36.94592 85.82144 82.36032 0 19.6608 17.29536 35.66592 38.56384 35.66592h21.83168c65.54624 0 118.86592 51.00544 118.86592 113.70496v473.77408C989.3888 870.59456 936.05888 921.6 870.52288 921.6zM153.47712 256.49152c-45.66016 0-82.80064 34.83648-82.80064 77.63968v473.77408c0 42.8032 37.14048 77.63968 82.80064 77.63968h717.03552c45.66016 0 82.80064-34.83648 82.80064-77.63968V334.12096c0-42.8032-37.14048-77.63968-82.80064-77.63968H848.6912c-41.15456 0-74.62912-32.17408-74.62912-71.7312 0-25.51808-22.3232-46.29504-49.75616-46.29504H408.53504c-27.43296 0-49.75616 20.76672-49.75616 46.29504 0 39.54688-33.47456 71.7312-74.62912 71.7312H153.47712z" fill="#6F6973" p-id="911"></path><path d="M589.06624 568.35072m-226.64192 0a226.64192 226.64192 0 1 0 453.28384 0 226.64192 226.64192 0 1 0-453.28384 0Z" fill="#C3D6D0" p-id="912"></path><path d="M589.06624 813.02528c-134.912 0-244.67456-109.75232-244.67456-244.67456S454.15424 323.6864 589.06624 323.6864 833.7408 433.43872 833.7408 568.36096 723.97824 813.02528 589.06624 813.02528z m0-453.2736c-115.02592 0-208.60928 93.58336-208.60928 208.60928s93.58336 208.60928 208.60928 208.60928 208.60928-93.58336 208.60928-208.60928-93.58336-208.60928-208.60928-208.60928z" fill="#6F6973" p-id="913"></path><path d="M589.06624 568.35072m-158.64832 0a158.64832 158.64832 0 1 0 317.29664 0 158.64832 158.64832 0 1 0-317.29664 0Z" fill="#C3D6D0" p-id="914"></path><path d="M589.06624 745.03168c-97.42336 0-176.68096-79.2576-176.68096-176.67072 0-97.4336 79.2576-176.68096 176.68096-176.68096S765.7472 470.9376 765.7472 568.36096c0 97.41312-79.2576 176.67072-176.68096 176.67072z m0-317.29664c-77.53728 0-140.61568 63.0784-140.61568 140.61568 0 77.52704 63.08864 140.60544 140.61568 140.60544s140.61568-63.0784 140.61568-140.60544c0-77.53728-63.0784-140.61568-140.61568-140.61568zM870.20544 414.75072c-32.45056 0-58.85952-26.39872-58.85952-58.85952 0-32.45056 26.40896-58.84928 58.85952-58.84928s58.85952 26.39872 58.85952 58.84928c0 32.4608-26.40896 58.85952-58.85952 58.85952z m0-81.65376c-12.57472 0-22.79424 10.22976-22.79424 22.784 0 12.57472 10.22976 22.79424 22.79424 22.79424 12.56448 0 22.79424-10.22976 22.79424-22.79424 0-12.55424-10.22976-22.784-22.79424-22.784z" fill="#6F6973" p-id="915"></path><path d="M545.36192 526.90944m-54.272 0a54.272 54.272 0 1 0 108.544 0 54.272 54.272 0 1 0-108.544 0Z" fill="#FFFFFF" p-id="916"></path><path d="M615.0656 588.8512m-27.136 0a27.136 27.136 0 1 0 54.272 0 27.136 27.136 0 1 0-54.272 0Z" fill="#FFFFFF" p-id="917"></path><path d="M266.752 847.0016c-10.9056 0-19.74272-8.83712-19.74272-19.74272V309.44256c0-10.9056 8.83712-19.74272 19.74272-19.74272s19.74272 8.83712 19.74272 19.74272v517.81632c0 10.9056-8.83712 19.74272-19.74272 19.74272z" fill="#FFFFFF" p-id="918"></path><path d="M733.70624 235.79648H398.86848c0-33.34144 27.02336-60.3648 60.3648-60.3648h214.10816c33.34144 0 60.3648 27.02336 60.3648 60.3648z" fill="#C3D6D0" p-id="919"></path><path d="M751.02208 253.11232H381.55264v-17.31584c0-42.83392 34.84672-77.68064 77.68064-77.68064h214.10816c42.83392 0 77.68064 34.84672 77.68064 77.68064v17.31584z m-331.20256-34.63168h292.92544c-6.67648-15.14496-21.82144-25.73312-39.40352-25.73312H459.23328c-17.58208 0-32.73728 10.58816-39.41376 25.73312z" fill="#6F6973" p-id="920"></path></svg>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <p class="h5">相册</p>
                                            <p class="small text-muted mb-1">🖼️留住你我回忆</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- 访问问候弹窗 -->
                <div id="fps" style="z-index: 5; position: fixed; bottom: 3px; left: 3px; color: #2196F3; font-size: 10px; -webkit-pointer-events: none; -moz-pointer-events: none; -ms-pointer-events: none; -o-pointer-events: none;"></div>
                <script type="text/javascript" src="js/fetch.min.js"></script>
                <script src="js/layer.js" type="text/javascript" charset="utf-8"></script>
                <script>  /*网站打开提醒代码开始*/ $(function () { if (/*getCookie('msg') !=*/ 1) { var t = document.createElement("a"); t.href = document.referrer; var msgTitle = t.hostname; var name = t.hostname.split(".")[1]; if ("" !== document.referrer) { switch (name) { case 'bing': msgTitle = '必应搜索'; break; case 'baidu': msgTitle = '百度搜索'; break; case 'so': msgTitle = '360搜索'; break; case 'google': msgTitle = '谷歌搜索'; break; case 'sm': msgTitle = '神马搜索'; break; case 'sogou': msgTitle = '搜狗搜索'; break; default: msgTitle = t.hostname; }; }; var time = (new Date).getHours(); var msg = ''; 23 < time || time <= 5 ? msg = "你是夜猫子呀？这么晚还不睡觉，明天起的来嘛？" : 5 < time && time <= 7 ? msg = "早上好！一日之计在于晨，美好的一天就要开始了！" : 7 < time && time <= 11 ? msg = "上午好！工作顺利嘛，不要久坐，多起来走动走动哦！" : 11 < time && time <= 14 ? msg = "中午了，工作了一个上午，现在是午餐时间！" : 14 < time && time <= 17 ? msg = "午后很容易犯困呢，今天的运动目标完成了吗？" : 17 < time && time <= 19 ? msg = "傍晚了！窗外夕阳的景色很美丽呢，最美不过夕阳红~" : 19 < time && time <= 21 ? msg = "晚上好，今天过得怎么样？" : 21 < time && time <= 23 && (msg = "已经这么晚了呀，早点休息吧，晚安~"); $.ajax({ type: "get", url: "https://api.gmit.vip/Api/UserInfo/", async: true, success: function (data) { window.info = data; layer.msg("Hi~ 来自" + data.data.location + '~<br/>通过 ' + msgTitle + ' 进来的朋友！<br/>使用 ' + data.data.os + "<br/>" + data.data.browser + ' 访问本站！' + '<br/>' + msg); var showFPS = (function () { var requestAnimationFrame = window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame || function (callback) { window.setTimeout(callback, 1000 / 60); }; var e, pe, pid, fps, last, offset, step, appendFps; fps = 0; last = Date.now(); step = function () { offset = Date.now() - last; fps += 1; if (offset >= 1000) { last += offset; appendFps(fps); fps = 0; }; requestAnimationFrame(step); }; appendFps = function (fps) { var settings = { timeout: 5000, logError: true }; $('#fps').html('<span style="float:left; display: none;">' + fps + 'FPS</span><br/><span style=" display: none;float:left">' + window.info.data.os + '</span><br/><span style=" display: none;float:left;margin-top:1px;">' + window.info.data.browser + '</span><br/><span style=" display: none;float:left;margin-top:1px;">' + window.info.data.location + '</span><br/><span style=" display: none;float:left;margin-top:1px;"></span>'); }; step(); })(); } }); }; }); </script>
                <!-- 访问问候弹窗 -->
                <!--<hr class="horizontal dark">-->
                <!-- 刷新加载动画 -->
                <div id="PageLoading" style="z-index: 999999;">
                    <div id="PageLoading-center">
                        <div id="PageLoading-center-absolute">
                            <div class="object" id="object_four"></div>
                            <div class="object" id="object_three"></div>
                            <div class="object" id="object_two"></div>
                            <div class="object" id="object_one"></div>
                        </div>
                    </div>
                </div>
                <!-- 刷新加载动画 -->
                <!-- 刷新加载动画 -->
                <script>
                    $(function () {
                        $("#PageLoading").fadeOut(0);
                    });
                </script>
                <!-- 刷新加载动画 -->
                <div class="p-5 text-center " style="">
                    <div class="d-flex justify-content-center">
                        <div class="heart2">
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                    <!--底部滚动文字-->
                    <p>
                        <span class="lover-card-title">
                            <i style="color: red;" class="fa fa-heart" aria-hidden="true"></i>

                            <!-- <span id="wordindex"><i class="fa fa-spinner fa-spin" aria-hidden="true"></i></span> -->
                            <script>
                                $(function () {
                                    typedword();
                                })
                                function typedword() {
                                    $.ajax({
                                        type: "get",
                                        url: "https://api.gmit.vip/get/love/",
                                        // url:"https://djy520.love/aip.php",
                                        data: { page: 'index' },
                                        async: true,
                                        success: function (word) {
                                            var list = [];
                                            for (var i = 0; i < word.data.length; i++) {
                                                list.push(word.data[i]['text']);
                                            }
                                            $("#wordindex").typed({
                                                strings: list,
                                                typeSpeed: 20,
                                                loop: true,
                                                backDelay: 3000,
                                            });
                                        }
                                    });
                                }
                            </script>
                            <i style="color: red;" class="fa fa-heart" aria-hidden="true"></i>
                        </span>
                    </p>

                    <style>
                        @media (max-width: 767px) {
                            .panel-subtitle {
                                display: none !important;
                            }
                        }
                    </style>
                    <!-- 点击特效 -->
                    <script>
                        var a_idx = 0;

                        $("body").click(function (e) {
                            var a = new Array(
                                "❤️", "💛", "🧡", "💚", "💙"
                            );
                            var $i = $("<span/>").text(a[a_idx]);
                            a_idx = (a_idx + 1) % a.length;
                            var x = e.pageX,
                                y = e.pageY;
                            $i.css({
                                "z-index": 144469,
                                "top": y - 20,
                                "left": x,
                                "position": "absolute",
                                "font-weight": "bold",
                                "color": "#f00"
                            });
                            $("body").append($i);
                            $i.animate({
                                "top": y - 160,
                                "opacity": 0
                            },
                                1500,
                                function () {
                                    $i.remove()
                                })
                        });
</script>
                    <!--底部滚动文字-->
                    <script src="js/typed.min.js" type="text/javascript" charset="utf-8"></script>
                    <!--!‭‪‏‭‪‪‭‫‭‬‏‫‭‪‪‬‎‫‭‬‪‭‪‎-->
                    <!-- 点击特效 -->
                    <script src="js/jquery.pjax.min.js"></script>
                    <script src="js/nprogress.min.js"></script>
                </div>
                <!-- 灯箱 初始化 开始-->
                <script type="text/javascript">
                    $(document).ready(function () {
                        $(".fancybox").fancybox();
                    }); lol
</script>

                <!-- 灯箱 初始化 结束-->
                <!--侧边标签栏-->
               <%-- <div class="elevator_item" id="elevator_item" style="display: block;">
                    <a target="_self" class="feedback graHover" style="background-color: #ff3030; color: #fff;" href="https://mishi23.com/">
                        <svg class="icon" style="width: 26px; height: 26px; vertical-align: middle; fill: currentColor; overflow: hidden;" viewBox="0 0 1029 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="18960">
                            <path d="M1001.423238 494.592q21.504 20.48 22.528 45.056t-16.384 40.96q-19.456 17.408-45.056 16.384t-40.96-14.336q-5.12-4.096-31.232-28.672t-62.464-58.88-77.824-73.728-78.336-74.24-63.488-60.416-33.792-31.744q-32.768-29.696-64.512-28.672t-62.464 28.672q-10.24 9.216-38.4 35.328t-65.024 60.928-77.824 72.704-75.776 70.656-59.904 55.808-30.208 27.136q-15.36 12.288-40.96 13.312t-44.032-15.36q-20.48-18.432-19.456-44.544t17.408-41.472q6.144-6.144 37.888-35.84t75.776-70.656 94.72-88.064 94.208-88.064 74.752-70.144 36.352-34.304q38.912-37.888 83.968-38.4t76.8 30.208q6.144 5.12 25.6 24.064t47.616 46.08 62.976 60.928 70.656 68.096 70.144 68.096 62.976 60.928 48.128 46.592zM447.439238 346.112q25.6-23.552 61.44-25.088t64.512 25.088q3.072 3.072 18.432 17.408l38.912 35.84q22.528 21.504 50.688 48.128t57.856 53.248q68.608 63.488 153.6 142.336l0 194.56q0 22.528-16.896 39.936t-45.568 18.432l-193.536 0 0-158.72q0-33.792-31.744-33.792l-195.584 0q-17.408 0-24.064 10.24t-6.656 23.552q0 6.144-0.512 31.232t-0.512 53.76l0 73.728-187.392 0q-29.696 0-47.104-13.312t-17.408-37.888l0-203.776q83.968-76.8 152.576-139.264 28.672-26.624 57.344-52.736t52.224-47.616 39.424-36.352 19.968-18.944z" p-id="18961"></path></svg></a>


                    <a target="_self" class="feedback graHover" style="background-color: #3cbdfa; color: #fff;" href="https://mishi23.com/admin/index.php">
                        <svg class="icon" style="width: 26px; height: 26px; vertical-align: middle; fill: currentColor; overflow: hidden;" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="9584">
                            <path d="M506.88 1006.08C371.2 1006.08 240.64 967.68 128 896c-46.08-28.16-69.12-97.28-48.64-143.36 48.64-115.2 153.6-202.24 286.72-240.64-76.8-46.08-128-130.56-128-227.84C238.08 138.24 355.84 17.92 504.32 17.92 647.68 17.92 768 138.24 768 284.16c0 92.16-48.64 174.08-120.32 222.72 135.68 33.28 243.2 120.32 296.96 235.52 20.48 46.08 0 115.2-43.52 145.92-117.76 76.8-253.44 117.76-394.24 117.76" fill="" p-id="9585"></path></svg></a>
                    <a target="_self" class="feedback graHover" id="sign_daily" style="background-color: #ffa500; color: #fff;" rel="nofollow" href="/index.php/category/default/">
                        <svg class="icon" style="width: 26px; height: 26px; vertical-align: middle; fill: currentColor; overflow: hidden;" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="11641">
                            <path d="M168.391111 275.342222h111.502222c25.031111 0 43.235556-18.204444 43.235556-43.235555V113.777778c0-15.928889-9.102222-20.48-20.48-9.102222L159.288889 254.862222c-11.377778 11.377778-6.826667 20.48 9.102222 20.48z" fill="" p-id="11642"></path><path d="M785.066667 86.471111H411.875556c-22.755556 0-43.235556 18.204444-43.235556 43.235556v145.635555c0 25.031111-18.204444 43.235556-43.235556 43.235556H179.768889c-25.031111 0-43.235556 18.204444-43.235556 43.235555v493.795556c0 47.786667 38.684444 86.471111 86.471111 86.471111h562.062223c47.786667 0 86.471111-38.684444 86.471111-86.471111v-682.666667c0-47.786667-38.684444-86.471111-86.471111-86.471111z m-59.164445 655.36H284.444444c-13.653333 0-22.755556-9.102222-22.755555-22.755555s9.102222-22.755556 22.755555-22.755556h441.457778c13.653333 0 22.755556 9.102222 22.755556 22.755556 0 11.377778-11.377778 22.755556-22.755556 22.755555z m0-161.564444H320.853333c-13.653333 0-22.755556-9.102222-22.755555-22.755556s9.102222-22.755556 22.755555-22.755555h402.773334c13.653333 0 22.755556 9.102222 22.755555 22.755555s-9.102222 22.755556-20.48 22.755556z m0-163.84h-159.288889c-13.653333 0-22.755556-9.102222-22.755555-22.755556s9.102222-22.755556 22.755555-22.755555h159.288889c13.653333 0 22.755556 9.102222 22.755556 22.755555s-11.377778 22.755556-22.755556 22.755556z" fill="" p-id="11643"></path></svg></a>

                    <a target="_self" class="feedback graHover" style="background-color: #FF3399; color: #fff;" href="javascript:scroll(0,0)">
                        <svg class="icon" style="width: 26px; height: 26px; vertical-align: middle; fill: currentColor; overflow: hidden;" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="14608">
                            <path d="M856.818373 786.740318c-26.188452 0-52.377928-9.990538-72.359005-29.971615L512 484.308311 239.540631 756.76768c-39.963177 39.963177-104.754832 39.963177-144.716986 0s-39.963177-104.754832 0-144.718009l344.818373-344.818373c19.190061-19.190061 45.218878-29.971615 72.357981-29.971615s53.16792 10.781554 72.359005 29.971615l344.818373 344.818373c39.962154 39.963177 39.962154 104.754832 0 144.718009C909.195278 776.74978 883.005802 786.740318 856.818373 786.740318z" p-id="14609"></path></svg></a>
                </div>--%>
                <script>
                    if (true) {
                        (function () {
                            var requestAnimationFrame = window.requestAnimationFrame || window.mozRequestAnimationFrame || window.webkitRequestAnimationFrame || window.msRequestAnimationFrame ||
                                function (callback) {
                                    window.setTimeout(callback, 1000 / 60);
                                };
                            window.requestAnimationFrame = requestAnimationFrame;
                        })();

                        (function () {
                            var flakes = [],
                                canvas = document.getElementById("Snow"),
                                ctx = canvas.getContext("2d"),
                                flakeCount = 200,
                                mX = -100,
                                mY = -100;

                            canvas.width = window.innerWidth;
                            canvas.height = window.innerHeight;

                            function snow() {
                                ctx.clearRect(0, 0, canvas.width, canvas.height);

                                for (var i = 0; i < flakeCount; i++) {
                                    var flake = flakes[i],
                                        x = mX,
                                        y = mY,
                                        minDist = 150,
                                        x2 = flake.x,
                                        y2 = flake.y;

                                    var dist = Math.sqrt((x2 - x) * (x2 - x) + (y2 - y) * (y2 - y)),
                                        dx = x2 - x,
                                        dy = y2 - y;

                                    if (dist < minDist) {
                                        var force = minDist / (dist * dist),
                                            xcomp = (x - x2) / dist,
                                            ycomp = (y - y2) / dist,
                                            deltaV = force / 2;

                                        flake.velX -= deltaV * xcomp;
                                        flake.velY -= deltaV * ycomp;

                                    } else {
                                        flake.velX *= .98;
                                        if (flake.velY <= flake.speed) {
                                            flake.velY = flake.speed
                                        }
                                        flake.velX += Math.cos(flake.step += .05) * flake.stepSize;
                                    }

                                    ctx.fillStyle = "rgba(255,255,255," + flake.opacity + ")";
                                    flake.y += flake.velY;
                                    flake.x += flake.velX;

                                    if (flake.y >= canvas.height || flake.y <= 0) {
                                        reset(flake);
                                    }

                                    if (flake.x >= canvas.width || flake.x <= 0) {
                                        reset(flake);
                                    }

                                    ctx.beginPath();
                                    ctx.arc(flake.x, flake.y, flake.size, 0, Math.PI * 2);
                                    ctx.fill();
                                }
                                requestAnimationFrame(snow);
                            };

                            function reset(flake) {
                                flake.x = Math.floor(Math.random() * canvas.width);
                                flake.y = 0;
                                flake.size = (Math.random() * 3) + 2;
                                flake.speed = (Math.random() * 1) + 0.5;
                                flake.velY = flake.speed;
                                flake.velX = 0;
                                flake.opacity = (Math.random() * 0.5) + 0.3;
                            }

                            function init() {
                                for (var i = 0; i < flakeCount; i++) {
                                    var x = Math.floor(Math.random() * canvas.width),
                                        y = Math.floor(Math.random() * canvas.height),
                                        size = (Math.random() * 3) + 2,
                                        speed = (Math.random() * 1) + 0.5,
                                        opacity = (Math.random() * 0.5) + 0.3;

                                    flakes.push({
                                        speed: speed,
                                        velY: speed,
                                        velX: 0,
                                        x: x,
                                        y: y,
                                        size: size,
                                        stepSize: (Math.random()) / 30 * 1,
                                        step: 0,
                                        angle: 180,
                                        opacity: opacity
                                    });
                                }

                                snow();
                            };

                            document.addEventListener("mousemove", function (e) {
                                mX = e.clientX,
                                    mY = e.clientY
                            });
                            window.addEventListener("resize", function () {
                                canvas.width = window.innerWidth;
                                canvas.height = window.innerHeight;
                            });
                            init();
                        })();
                    }
</script>
                <style>
                    #Snow {
                        position: fixed;
                        top: 0;
                        left: 0;
                        width: 100%;
                        height: 100%;
                        z-index: 99999;
                        background: rgba(125,137,95,0.1);
                        pointer-events: none;
                    }
                </style>
                <script>
                    window.showSiteRuntime = function () {
                        site_runtime = $("#site_runtime");
                        if (!site_runtime) {
                            return;
                        }
                        window.setTimeout("showSiteRuntime()", 1000);
                        start = new Date("2021-10-17");
                        now = new Date();
                        T = (now.getTime() - start.getTime());
                        i = 24 * 60 * 60 * 1000;
                        d = T / i;
                        D = Math.floor(d);
                        h = (d - D) * 24;
                        H = Math.floor(h);
                        m = (h - H) * 60;
                        M = Math.floor(m);
                        s = (m - M) * 60
                        S = Math.floor(s);
                        site_runtime.html("第 <span class=\"bigfontNum\">" + D + "</span> 天 <span class=\"bigfontNum\">" + H + "</span> 小时 <span class=\"bigfontNum\">" + M + "</span> 分钟 <span class=\"bigfontNum\">" + S + "</span> 秒");
                    };
                    showSiteRuntime();
                    $(document).pjax('a', '#Pjax', {
                        fragment: '#Pjax',
                        timeout: 6000
                    });
                    $(document).on('pjax:send', function () {
                        NProgress.start();
                    });
                    $(document).on('pjax:complete', function () {
                        NProgress.done();
                    });
</script>
                <!--!‭‪‏‭‪‪‭‫‭‬‏‫‭‪‪‬‎‫‭‬‪‭‪‎-->
                <script src="js/main.js"></script>
                <link rel="stylesheet" href="css/emojify.min.css" />
                <script type="text/javascript">
                    window.jQuery || document.write(unescape('%3Cscript%20type%3D%22text/javascript%22%20src%3D%22https://mishi23.com/usr/plugins/EditorMD/lib/jquery.min.js%22%3E%3C/script%3E'));
</script>
                <script src="js/marked.min.js"></script>
                <script src="js/editormd.min.js"></script>
                <script src="js/emojify.min.js"></script>
                <!--!‭‪‏‭‪‪‭‫‭‬‏‫‭‪‪‬‎‫‭‬‪‭‪‎-->
                <script type="text/javascript">
                    $(function () {
                        var parseMarkdown = function () {
                            var markdowns = document.getElementsByClassName("md_content");
                            $(markdowns).each(function () {
                                var markdown = $(this).children("#append-test").text();
                                //$('#md_content_'+i).text('');
                                var editormdView;
                                editormdView = editormd.markdownToHTML($(this).attr("id"), {
                                    markdown: markdown,//+ "\r\n" + $("#append-test").text(),
                                    toolbarAutoFixed: false,
                                    htmlDecode: true,
                                    emoji: true,
                                    tex: true,
                                    toc: true,
                                    tocm: true,
                                    taskList: true,
                                    flowChart: false,
                                    sequenceDiagram: false,
                                });
                            });
                        };
                        parseMarkdown();
                        $(document).on('pjax:complete', function () {
                            parseMarkdown()
                        });
                        emojify.setConfig({
                            img_dir: "//cdn.staticfile.org/emoji-cheat-sheet/1.0.0",
                            blacklist: {
                                'ids': [],
                                'classes': ['no-emojify'],
                                'elements': ['^script$', '^textarea$', '^pre$', '^code$']
                            },
                        });
                        emojify.run();
                    });
</script>
                <script type="text/javascript">
                    Smilies = {
                        domId: function (id) {
                            return document.getElementById(id);
                        },
                        domTag: function (id) {
                            return document.getElementsByTagName(id)[0];
                        },
                        showBox: function () {
                            this.domId("smiliesbox").style.display = "block";
                            document.onclick = function () {
                                Smilies.closeBox();
                            }
                        },
                        closeBox: function () {
                            this.domId("smiliesbox").style.display = "none";
                        },
                        grin: function (tag) {
                            tag = ' ' + tag + ' '; myField = this.domTag("textarea");
                            document.selection ? (myField.focus(), sel = document.selection.createRange(), sel.text = tag, myField.focus()) : this.insertTag(tag);
                        },
                        insertTag: function (tag) {
                            myField = Smilies.domTag("textarea");
                            myField.selectionStart || myField.selectionStart == "0" ? (
                                startPos = myField.selectionStart,
                                endPos = myField.selectionEnd,
                                cursorPos = startPos,
                                myField.value = myField.value.substring(0, startPos)
                                + tag
                                + myField.value.substring(endPos, myField.value.length),
                                cursorPos += tag.length,
                                myField.focus(),
                                myField.selectionStart = cursorPos,
                                myField.selectionEnd = cursorPos
                            ) : (
                                myField.value += tag,
                                myField.focus()
                            );
                        }
                    }
</script>
                <script src="../js/scrollreveal.js"></script>
                <script>  

                    ScrollReveal().reveal('.lover-background', { origin: 'top', distance: '300px', duration: 1000, })

                    ScrollReveal().reveal('.col-md-4', { delay: 0, scale: 0.85, duration: 1000 })

                    ScrollReveal().reveal('.post', { delay: 500, useDelay: 'onload', reset: true, })
                    ScrollReveal().reveal('.post', { delay: 0, scale: 0.85, duration: 1000 })
                    ScrollReveal().reveal('.card', { delay: 500, useDelay: 'onload', reset: true, })
                    ScrollReveal().reveal('.card', { delay: 0, scale: 0.85, duration: 1000 })
                    ScrollReveal().reveal('.commentlist', { delay: 500, useDelay: 'onload', reset: true, })
                    ScrollReveal().reveal('.commentlist', { delay: 0, scale: 0.85, duration: 1000 })

         </script>
            </div>
        </div>
        <asp:LinkButton runat="server" OnClick="LinkButton1_Click">后台</asp:LinkButton>
    </form>
    <asp:Label ID="Label8" runat="server" ForeColor="Red">当前网站总访问量：<asp:Label ID="Label7" runat="server" Text="Label" ForeColor="Red">
        
    </asp:Label>
    </asp:Label>
    
</body>

</html>

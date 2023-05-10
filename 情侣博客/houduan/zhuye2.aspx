<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zhuye2.aspx.cs" Inherits="情侣博客.houduan.zhuye2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8">
    <title></title>
    <link rel="icon" href="https://mishi23.com/favicon.ico">
    <style>
        @font-face {
            font-family: FontStyle;
            src: url("static/font/fonts.woff2");
        }

        * {
            font-family: FontStyle;
        }
    </style>
    <meta name="description" content="Love List">
    <meta name="generator" content="Typecho 1.1/17.10.30">
    <meta name="template" content="Brave-main">
    <link rel="pingback" href="https://mishi23.com/index.php/action/xmlrpc">
    <link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://mishi23.com/index.php/action/xmlrpc?rsd">
    <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://mishi23.com/index.php/action/xmlrpc?wlw">
    <link rel="alternate" type="application/rss+xml" title="Love List &raquo;  &raquo; RSS 2.0" href="https://mishi23.com/index.php/feed/6.html">
    <link rel="alternate" type="application/rdf+xml" title="Love List &raquo;  &raquo; RSS 1.0" href="https://mishi23.com/index.php/feed/rss/6.html">
    <link rel="alternate" type="application/atom+xml" title="Love List &raquo;  &raquo; ATOM 1.0" href="https://mishi23.com/index.php/feed/atom/6.html">
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
                        response = this.dom('respond-page-6'), input = this.dom('comment-parent'),
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
                    var response = this.dom('respond-page-6'),
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
    <link rel="stylesheet" href="static/css/font-awesome.min.css" type="text/css" media="all">
    <link rel="stylesheet" href="static/css/botui.min.css">
    <link rel="stylesheet" href="static/css/botui-theme-default.css">
    <!--安全-->
    <%--    <script disable-devtool-auto="" src='static/js/disable-devtool.min.js'></script>
    <script src='static/js/mishi.js'></script>--%>
    <%--    <script src='static/js/disable-devtool.min1.js'></script>--%>
    <link rel="stylesheet" href="static/css/style1.css">
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <script src="static/js/jquery.min1.js"></script>
    <link rel="stylesheet" href="static/css/bootstrap.min1.css">
    <script src="static/js/jquery.min2.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
    <!--灯箱核心js引入 开始-->
    <link rel="stylesheet" href="static/css/jquery.fancybox.min.css">
    <script src="static/js/jquery.fancybox.min.js"></script>
    <!--灯箱核心js引入 结束-->
    <script src="static/js/bootstrap.bundle.min.js"></script>
    <!--OwO标签js核心引入 开始-->
    <script src="static/js/OwO.min.js"></script>
    <link href="static/css/OwO.min.css" rel="stylesheet">
    <!--OwO标签js核心引入 结束-->
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid position-relative">
            <nav class="navbar navbar-expand-lg navbar-dark  text-white bg-transparent">
                <div class="container">
                    <a class="navbar-brand" href="index.html">💖
                        <asp:Label ID="Label1" runat="server" Text="Label">那年初冬</asp:Label>
                        💖</a>
                    <!--        <div class="mishi22">-->
                    <!--        <li class="nav-item" style="margin-top: -27px;background-color: hsl(0deg 0% 100% / 34%);-->
                    <!--border-radius: 10px; text-align: center;"><a href="https://mishi23.com/" class="nav-link" style="color: #fff; "><img src="https://thvse.cn/mishi/f945729091daa33c577a3313992239ad.png" style="width: 15px; margin-top: -3px;">首页</a></li></div>-->
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarText">
                        <ul class="navbar-nav mr-auto">
                        </ul>
                        <span class="navbar-text">💕
                           
                            <asp:Label ID="Label2" runat="server" Text="Label">四季皆欢喜，因为我有你！（瑶瑶）</asp:Label>
                            🍂                
                </span>
                    </div>
                </div>
            </nav>
            <video autoplay="autoplay" class="lover-background" loop="loop" muted="" src="<%:Session["video"] %>"></video>
           
            <section class="container lover-container d-flex flex-column align-content-center justify-content-center">
                <div class="row align-items-center pb-5 lover">
                    <div class="col">
                        <div class="d-flex flex-column">
                            <asp:Image ID="Image1" runat="server" CssClass="mx-auto avatar-img rounded-circle" />
                            <asp:Label ID="Label3" runat="server" Text="Label" CssClass="mx-auto text-white pt-2"></asp:Label>
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
                            <asp:Label ID="Label4" runat="server" Text="Label" CssClass="mx-auto text-white pt-2"></asp:Label>
                        </div>
                    </div>
                </div>
            </section>
            <section class="main-hero-waves-area waves-area">
                <svg class="waves-svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewbox="0 24 150 28" preserveaspectratio="none" shape-rendering="auto">
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
                    <img style="height: auto; width: 100%;"
                        src="static/picture/lolisister1.gif"></a>
            </div>
            <audio src="http://music.163.com/song/media/outer/url?id=1413863166.mp3" preload="" id="auto"></audio><%--音乐播放--%>
            <script>
                function toggleSound() {
                    var music = document.getElementById("auto");//获取ID  
                    console.log(music);
                    console.log(music.paused);
                    if (music.paused) { //判读是否播放  
                        music.paused = false;
                        music.play(); //没有就播放 
                    }

                }
                setInterval("toggleSound()", 1);
		    </script>
            <div class="container text-center my-5">
                <h5 class="list-text">💕世间最动情之事，莫过于两人相依💑，走过四季三餐的温暖。<br>
                    📜一百件事记录着我们的点点滴滴，你一百种样子💃，我一百种喜欢。</h5>
                <div class="accordion mx-auto mt-5" id="loveList">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <HeaderTemplate>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div class="card">

                                <div class="card-header p-1 bg-white" id="heading0">
                                    <h2 class="mb-0"><span class="btn collapsed ml-auto d-flex align-items-center" type="button" data-toggle="collapse" data-target="#collapse0" aria-expanded="false" aria-controls="collapse0">
                                        <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%#Eval("Pd") %>' onclick="return false;"/>
                                        <strong><%#Eval("Nr") %></strong></span></h2>
                                </div>
                               <%-- <div id="collapse0" class="collapse" aria-labelledby="heading0" data-parent="#loveList">
                                    <div class="card-body p-0">
                                        <section style="background-image: url()"></section>
                                    </div>
                                </div>--%>
                            </div>
                        </ItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
                <div id="md_content_2" class="md_content" style="min-height: 50px;">
                    <textarea id="append-test" style="display: none;"></textarea>
                </div>
            </div>
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
                <script src="static/js/typed.min.js" type="text/javascript"></script>
                <!-- 点击特效 -->
                <script src="static/js/jquery.pjax.min.js"></script>
                <script src="static/js/nprogress.min.js"></script>
            </div>
            <!-- 灯箱 初始化 开始-->
            <script type="text/javascript">
                $(document).ready(function () {
                    $(".fancybox").fancybox();
                });
</script>

            <!-- 灯箱 初始化 结束-->
            <!--侧边标签栏-->
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
            <script src="static/js/main1.js"></script>
            <link rel="stylesheet" href="static/css/emojify.min.css">
            <script type="text/javascript">
                window.jQuery || document.write(unescape('%3Cscript%20type%3D%22text/javascript%22%20src%3D%22https://mishi23.com/usr/plugins/EditorMD/lib/jquery.min.js%22%3E%3C/script%3E'));
</script>
            <script src="static/js/marked.min.js"></script>
            <script src="static/js/editormd.min.js"></script>
            <script src="static/js/emojify.min.js"></script>
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
            <script src="static/js/scrollreveal.js"></script>
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
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login2.aspx.cs" Inherits="wenbook.login2" EnableEventValidation="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>登录/注册 - 问渠</title>

    <meta name="description" content="User login page" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">



    <!-- ace styles -->
    <link rel="stylesheet" href="assets/css/ace.min.css" />
    <link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
    <style>
        .input-error {
            border-color: red;
        }
    </style>


    <![endif]-->
</head>

<body class="login-layout">
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="main-container">
            <div class="main-content">
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1">
                        <div class="login-container">
                            <div class="center">
                                <h1>
                                    <i class="ace-icon fa fa-leaf green"></i>
                                    <span class="red">问渠 </span>
                                    <span class="white" id="id-text2">登录</span>
                                </h1>
                                <h4 class="blue" id="id-company-text">&copy; 欢迎您的归来</h4>
                            </div>

                            <div class="space-6"></div>
                            <div class="position-relative">
                                <div id="login-box" class="login-box visible widget-box no-border">
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <h4 class="header blue lighter bigger">
                                                <i class="ace-icon fa fa-coffee green"></i>
                                                请输入您的邮箱和密码：
                                            </h4>

                                            <div class="space-6"></div>
                                            <fieldset>
                                                <label class="block clearfix">
                                                    <span class="block input-icon input-icon-right">
                                                        <input type="text" class="form-control" id="Emaile" runat="server" placeholder="邮箱..." />
                                                        <i class="ace-icon fa fa-user"></i>
                                                    </span>
                                                </label>

                                                <label class="block clearfix">
                                                    <span class="block input-icon input-icon-right">
                                                        <input type="password" class="form-control" id="pwd" runat="server" placeholder="密码..." />
                                                        <i class="ace-icon fa fa-lock"></i>
                                                    </span>
                                                </label>

                                                <div class="space"></div>

                                                <div class="clearfix">
                                                    <label class="inline">
                                                        <input type="checkbox" class="ace" />
                                                        <span class="lbl">记住密码</span>
                                                    </label>

                                                    <button id="login" runat="server" onserverclick="login_ServerClick" type="button" class="width-35 pull-right btn btn-sm btn-primary">
                                                        <i class="ace-icon fa fa-key"></i>
                                                        <span class="bigger-110">登录</span>
                                                    </button>


                                                </div>

                                                <div class="space-4"></div>
                                            </fieldset>
                                            <div class="social-or-login center">
                                                <span class="bigger-110">其它方式</span>
                                            </div>

                                            <div class="space-6"></div>

                                            <div class="social-login center">
                                                <a class="btn btn-primary">
                                                    <i class="ace-icon fa fa-facebook"></i>
                                                </a>

                                                <a class="btn btn-info">
                                                    <i class="ace-icon fa fa-twitter"></i>
                                                </a>

                                                <a class="btn btn-danger">
                                                    <i class="ace-icon fa fa-google-plus"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <!-- /.widget-main -->

                                        <div class="toolbar clearfix">
                                            <div>
                                                <a href="#" data-target="#forgot-box" class="forgot-password-link">
                                                    <i class="ace-icon fa fa-arrow-left"></i>
                                                    忘记密码
                                                </a>
                                            </div>

                                            <div>
                                                <a id="re" href="#" data-target="#signup-box" class="user-signup-link">前往注册
													<i class="ace-icon fa fa-arrow-right"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.widget-body -->
                                </div>
                                <!-- /.login-box -->

                                <div id="forgot-box" class="forgot-box widget-box no-border">
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <h4 class="header red lighter bigger">
                                                <i class="ace-icon fa fa-key"></i>
                                                找回密码
                                            </h4>

                                            <div class="space-6"></div>
                                            <p>
                                                输入您的邮箱，点击确认，您的密码将会发送至您的邮箱
                                            </p>


                                            <fieldset>
                                                <label class="block clearfix">
                                                    <span class="block input-icon input-icon-right">
                                                        <input id="Email" runat="server" type="email" class="form-control" placeholder="Email" />
                                                        <i class="ace-icon fa fa-envelope"></i>
                                                    </span>
                                                </label>

                                                <div class="clearfix">
                                                    <button id="send" runat="server" onserverclick="send_ServerClick" type="button" class="width-35 pull-right btn btn-sm btn-danger">
                                                        <i class="ace-icon fa fa-lightbulb-o"></i>
                                                        <span class="bigger-110">发送邮箱</span>
                                                    </button>
                                                </div>
                                            </fieldset>

                                        </div>
                                        <!-- /.widget-main -->

                                        <div class="toolbar center">
                                            <a href="#" data-target="#login-box" class="back-to-login-link">返回登录
												<i class="ace-icon fa fa-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <!-- /.widget-body -->
                                </div>
                                <!-- /.forgot-box -->

                                <div id="signup-box" class="signup-box widget-box no-border">
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <h4 class="header green lighter bigger">
                                                <i class="ace-icon fa fa-users blue"></i>
                                                注册新用户
                                            </h4>

                                            <div class="space-6"></div>
                                            <p>请输入您的信息: </p>


                                            <fieldset>
                                                <label class="block clearfix">
                                                    <span class="block input-icon input-icon-right">
                                                        <input type="email" id="Remail" runat="server" class="form-control" placeholder="Email" />
                                                        <i class="ace-icon fa fa-envelope"></i>
                                                    </span>
                                                </label>

                                                <label class="block clearfix">
                                                    <span class="block input-icon input-icon-right">
                                                        <input type="text" id="userName" runat="server" class="form-control" placeholder="昵称" />
                                                        <i class="ace-icon fa fa-user"></i>
                                                    </span>
                                                </label>

                                                <label class="block clearfix">
                                                    <span class="block input-icon input-icon-right">
                                                        <input type="password" id="Rpwd1" runat="server" class="form-control" placeholder="密码" />
                                                        <i class="ace-icon fa fa-lock"></i>
                                                    </span>
                                                </label>

                                                <label class="block clearfix">
                                                    <span class="block input-icon input-icon-right">
                                                        <input type="password" id="Rpwd2" runat="server" class="form-control" placeholder="确认密码" />
                                                        <i class="ace-icon fa fa-retweet"></i>
                                                    </span>
                                                </label>

                                                <label class="block clearfix">
                                                    <span class="block input-icon input-icon-right">
                                                        <input type="text" id="Invitation" runat="server" class="form-control" placeholder="邀请码" />
                                                        <i class="ace-icon fa fa-retweet"></i>
                                                    </span>
                                                </label>
                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                    <ContentTemplate>
                                                        <asp:Button ID="REInvitation" OnClick="RInvitation_ServerClick" runat="server" Text="获取邀请码" />
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <label class="block">
                                                    <input id="gree" runat="server" type="checkbox" class="ace" />
                                                    <span class="lbl">我同意
															<a href="#">用户协议</a>
                                                    </span>
                                                </label>

                                                <div class="space-24"></div>
                                                <div class="clearfix">



                                                    <button type="reset" class="width-30 pull-left btn btn-sq">
                                                        <i class="ace-icon fa fa-refresh"></i>
                                                        <span class="bigger-110">重置</span>
                                                    </button>

                                                    <button id="register" runat="server" onserverclick="register_ServerClick" type="button" class="width-65 pull-right btn btn-sm btn-success">
                                                        <span class="bigger-110">注册</span>

                                                        <i class="ace-icon fa fa-arrow-right icon-on-right"></i>
                                                    </button>
                                                </div>
                                            </fieldset>

                                        </div>

                                        <div class="toolbar center">
                                            <a href="#" data-target="#login-box" class="back-to-login-link">
                                                <i class="ace-icon fa fa-arrow-left"></i>
                                                返回登录
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="navbar-fixed-top align-right">
                                <br />
                                &nbsp;
								<a id="btn-login-dark" href="#">黑</a>
                                &nbsp;
								<span class="blue">/</span>
                                &nbsp;
								<a id="btn-login-blur" href="#">蓝</a>
                                &nbsp;
								<span class="blue">/</span>
                                &nbsp;
								<a id="btn-login-light" href="#">白</a>
                                &nbsp; &nbsp; &nbsp;
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script src="http://www.jq22.com/jquery/jquery-2.1.1.js"></script>
        <script type="text/javascript">
            if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
        </script>
        <script type="text/javascript">
            jQuery(function ($) {
                $(document).on('click', '.toolbar a[data-target]', function (e) {
                    e.preventDefault();
                    var target = $(this).data('target');
                    $('.widget-box.visible').removeClass('visible');//hide others
                    $(target).addClass('visible');//show target
                });
            });

            jQuery(function ($) {
                $('#btn-login-dark').on('click', function (e) {
                    $('body').attr('class', 'login-layout');
                    $('#id-text2').attr('class', 'white');
                    $('#id-company-text').attr('class', 'blue');

                    e.preventDefault();
                });
                $('#btn-login-light').on('click', function (e) {
                    $('body').attr('class', 'login-layout light-login');
                    $('#id-text2').attr('class', 'grey');
                    $('#id-company-text').attr('class', 'blue');

                    e.preventDefault();
                });
                $('#btn-login-blur').on('click', function (e) {
                    $('body').attr('class', 'login-layout blur-login');
                    $('#id-text2').attr('class', 'white');
                    $('#id-company-text').attr('class', 'light-blue');

                    e.preventDefault();
                });

            });
        </script>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookMessage.aspx.cs" Inherits="wenbook.BookMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>问渠</title>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/index.css"/>
    <script src="js/index.js"></script>
    <link rel="stylesheet" href="css/bookmessage.css"/>
    <style type="text/css">
        .userpic{
            width:20%;
            height:60px;
            float:left;
        }
        .username {
            font-size:20px;
            text-indent: 2em;
    overflow : hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
        }

        .time{
            float:right;
            color:darkgray;

        }

        .text {
            margin-top:30px;
            text-indent: 2em;
    overflow : hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
        }
        .count{
            margin-top:20px;
             text-indent: 2em;
    overflow : hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
            color:darkgray;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>


        <div class="container">
    


        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <nav class=" navbar-default">
            <div class="topdiv">
                
                    
                <div class="topimg">
                    
                    <img src="image/log.jpeg" class="img-responsive topimg" alt="Image">
                </div>

                

                <button type="button" class="btnnav navbar-toggle btn-small" data-toggle="collapse"
                        data-target="#navsce">
                        <span class="sr-only">切换导航</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                <div class="topbtn collapse navbar-collapse hidden-sm " id="example-navbar-collapse">
                    
                        <div class="navbar-form navbar-left" role="search">
                                <div class="form-group hidden-xs">
                                        <select class="seltbtn form-control ">
                                            <option>按分类</option>
                                            <option>按作者</option>
                                            <option>按图书馆</option>
                                            <option>按名字</option>
                                        </select>  
                                </div>
                                <div class="form-group">
                                        
                                    <input type="text" class="form-control textw" placeholder="搜索">

                                    <button type="submit" class="btn btn-large btn-danger btnsumit">提交</button>
                                </div>

                        </div>
                </div>


            </div>
            </nav>

            <nav class=" navbar-default">
            <div class="navdiv">
                    
                    <ul class="nav nav-pills navtext">
                           <li class="active"><a href="index">首页</a></li>
                            <li class=" hidden-xs"><a href="BookCity">书城</a></li>
                            <li><a href="MyLirary">图书馆</a></li>
                            <li class=" hidden-xs" ><a href="#">书架</a></li>
                            <li class=" hidden-xs" ><a href="FileUpload">信息管理</a></li>
                            
                          </ul>
            
                
            </div>
            </nav>

           
            
            <div class="bigdiv col-sx-12 col-sm-12 col-md-12 col-lg-12">
               
                <div class="bookmesdiv">
                    <span class="c1">
                        <asp:Label ID="smtype" runat="server" Text="异常"></asp:Label></span>&nbsp;>&nbsp;<span class="c1"><asp:Label ID="smname" runat="server" Text="异常"></asp:Label></span>
                    <br />

                    <asp:Image ID="Image1" CssClass="bookpic" ImageUrl='<%#"~/image/" +Session["name"].ToString()   %>' runat="server" />
                     
                    <h2 class="textname c1"><asp:Label CssClass="textname" ID="name" runat="server" Text="异常"></asp:Label></h2>
                    <p class="intext"><asp:Label ID="inth" runat="server" Text="异常"></asp:Label></p>
                    <p class="cctext"><asp:Label ID="intrduce" runat="server" Text="异常"></asp:Label></p>

                    <asp:Button ID="Button1" CssClass="btn btn-large btn-danger btnlogon" runat="server" Text="开始阅读" />

                    <asp:Button ID="Button2" CssClass="btn btn-large btn-danger btnlogon" runat="server" Text="目录" />

                    <asp:Button ID="Button3" CssClass="btn btn-large btn-danger btnlogon" runat="server" Text="加入书架" />

                    <asp:Button ID="jieyue" CssClass="btn btn-large btn-danger btnlogon" runat="server" Text="借阅" />


                </div>

                <div class="textdiv">
                    <div>
                    <h3 class="texth3">书友评论</h3>
                    
                    <h3 class="textnav2">共多少条评论</h3>
                        </div>
                    
                    <div class="userdiv">
                         
                        <h2>登录才能评论噢~</h2>
                        <asp:Button ID="Button5" CssClass="btn btn-large btn-danger btnlogon btnl" runat="server" Text="登录" />
                        <h2><a class="zhuc" href="#">立即注册</a></h2>



                    </div>

                    <div class="shuru">
                        <asp:TextBox ID="textshuru" CssClass="submit" Width="80%" Height="50px" BackColor="#cccccc" Font-Size="X-Large" BorderStyle="Solid" BorderColor="#66ccff" runat="server"></asp:TextBox>
                        <asp:Button ID="Button4" CssClass="btn btn-large btn-danger ttn" Width="10%"  Height="50px" BackColor="#666699" runat="server" Text="提交" OnClick="Button4_Click" />
                    </div>
                    <div class="pinglun">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="commentID" DataSourceID="SqlDataSource1" Width="100%" BorderStyle="None">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" CssClass="userpic" ImageUrl="~/image/pic2.jpg" Height="143px" Width="101px" />
                        <asp:Label ID="Label3" runat="server" CssClass="username" Text='<%# Eval("userName") %>'></asp:Label>
                        <asp:Label ID="Label1" runat="server" CssClass="time" Text='<%# Eval("time") %>'></asp:Label>

                        <asp:Label ID="Label2" runat="server" CssClass="text" Text='<%# Eval("reviewContent") %>'></asp:Label>
                        
                        <asp:Label ID="Label4" runat="server" CssClass="count" Text='<%# Eval("praiseCount") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle BorderStyle="None" />
                    <ItemStyle BorderStyle="None" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AqueductConnectionString %>" SelectCommand="SELECT * FROM [T_Comment] ORDER BY [time] DESC, [praiseCount] DESC"></asp:SqlDataSource>
    

                    </div>

                </div>



            </div>


           



        </div>

        
        
        
    </div>

    <div class="bottomdiv">
        <p class="bottext"><asp:Label ID="Label6" runat="server" Text="关于我们 "></asp:Label>&nbsp;|&nbsp;<asp:Label ID="Label3" runat="server" Text=" 联系我们 "></asp:Label>&nbsp;|&nbsp;<asp:Label ID="Label4" runat="server" Text=" 投稿声明 "></asp:Label>&nbsp;|&nbsp;<asp:Label ID="Label5" runat="server" Text=" 版权声明"></asp:Label></p>
        <p class="bottext">有问题请联系客服人员。</p>
                
    </div>



    
    </div>
    </form>
</body>
</html>

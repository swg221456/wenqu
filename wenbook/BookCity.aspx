<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookCity.aspx.cs" Inherits="wenbook.BookCity" %>

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
    <link rel="stylesheet" href="css/bookcity.css"/>
   
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
                            <li class="active"><a href="#">首页</a></li>
                            <li class=" hidden-xs"><a href="#">书城</a></li>
                            <li><a href="#">图书馆</a></li>
                            <li class=" hidden-xs" ><a href="#">书架</a></li>
                            <li class=" hidden-xs" ><a href="#">信息管理</a></li>
                            
                          </ul>
            
                
            </div>
            </nav>

           
            
            <div class="bigdiv col-sx-12 col-sm-12 col-md-12 col-lg-12">
               
             <div class="topcs">
                 <div class="pp">
                 <span class="sp1">
                     作品受众
                 </span>
                 <span class="sp2"><a>全部</a></span>
                 <span class="sp3"><a>男生</a></span>
                 <span class="sp3"><a>女生</a></span>
                 </div>
                 <div class="pp">
                 <span class="sp1">
                     作品类型
                 </span>
                
                 <span class="sp2"><a>全部</a></span>
                     <asp:Button ID="Button1" CssClass="btn4" runat="server" Text="都市传奇" />
                     <asp:Button ID="Button2" CssClass="btn2" runat="server" Text="玄幻" />
                     <asp:Button ID="Button3" CssClass="btn4" runat="server" Text="仙侠修真" />
                     <asp:Button ID="Button4" CssClass="btn2" runat="server" Text="灵异" />
                     <asp:Button ID="Button5" CssClass="btn2" runat="server" Text="历史" />
                     <asp:Button ID="Button6" CssClass="btn4" runat="server" Text="游戏竞技" />
                     <asp:Button ID="Button7" CssClass="btn2" runat="server" Text="科幻" />
                     <asp:Button ID="Button9" CssClass="btn2" runat="server" Text="武侠" />
                     <asp:Button ID="Button10" CssClass="btn2" runat="server" Text="奇幻" />
                     <asp:Button ID="Button11" CssClass="btn4" runat="server" Text="古代言情" />
                     <asp:Button ID="Button12" CssClass="btn4" runat="server" Text="现代言情" />
                     <asp:Button ID="Button13" CssClass="btn4" runat="server" Text="玄幻言情" />
                     <asp:Button ID="Button14" CssClass="btn4" runat="server" Text="校园生活" />
                     <asp:Button ID="Button8" CssClass="btn2" runat="server" Text="其他" />
                 </div>
                 <div class="pp">
                 <span class="sp1">
                     作品字数
                 </span>
                 <span class="sp2"><a>全部</a></span>
                 <span class="sp3"><a>30万以下</a></span>
                 <span class="sp3"><a>30万到50万</a></span>
                  <span class="sp3"><a>50万到100万</a></span>
                      <span class="sp3"><a>100万到200万</a></span>
                      <span class="sp3"><a>200万以上</a></span>

                 </div>
                 <div class="pp">
                 <span class="sp1">
                     更新时间
                 </span>
                 <span class="sp2"><a>全部</a></span>
                 <span class="sp3"><a>三日内</a></span>
                 <span class="sp3"><a>七日内</a></span>
                 <span class="sp3"><a>半月内</a></span>
                     <span class="sp3"><a>一月内</a></span>
                 
                 </div>
                 <div class="pp">
                 <span class="sp1">
                     作品状态
                 </span>
                 <span class="sp2"><a>全部</a></span>
                 <span class="sp3"><a>连载</a></span>
                 <span class="sp3"><a>完结</a></span>
                 
                 </div>
                 <div class="pp">
                 <span class="sp1">
                     是否收费
                 </span>
                 <span class="sp2"><a>全部</a></span>
                 <span class="sp3"><a>免费</a></span>
                 <span class="sp3"><a>收费</a></span>
                 
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

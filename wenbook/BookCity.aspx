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
    <style type="text/css">
        .pic1 {
            width:30%;
            height:100px;
            float:left;
        }

        .bookna {
            padding-left:20px;
            text-indent: 2em;
           
            font-size:16px;
        }

        .bookin {
            text-indent: 2em;
            color:gainsboro;
            font-size:14px;
        }

        .bookty {
            color:gainsboro;
            font-size:14px;
        }

        .booktro {
            color:gainsboro;
            font-size:14px;
            text-indent: 2em;
    overflow : hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
        }

        .book {
            margin-top:40px;
        }

        .grid1 {
            float:left;
        }

        .grid2 {
            float:left;
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
                     <asp:Button ID="Button1" CssClass="btn btn-large btn4" runat="server" Text="都市传奇" OnClick="Button1_Click" />
                     <asp:Button ID="Button2" CssClass="btn btn-large btn2" runat="server" Text="玄幻" OnClick="Button2_Click" />
                     <asp:Button ID="Button3" CssClass="btn4 btn btn-large" runat="server" Text="仙侠修真" OnClick="Button3_Click" />
                     <asp:Button ID="Button4" CssClass="btn2 btn btn-large" runat="server" Text="灵异" OnClick="Button4_Click" />
                     <asp:Button ID="Button5" CssClass="btn2 btn btn-large" runat="server" Text="历史" OnClick="Button5_Click" />
                     <asp:Button ID="Button6" CssClass="btn4 btn btn-large" runat="server" Text="游戏竞技" OnClick="Button6_Click" />
                     <asp:Button ID="Button7" CssClass="btn2 btn btn-large" runat="server" Text="科幻" OnClick="Button7_Click" />
                     <asp:Button ID="Button9" CssClass="btn2 btn btn-large" runat="server" Text="武侠" OnClick="Button9_Click" />
                     <asp:Button ID="Button10" CssClass="btn2 btn btn-large" runat="server" Text="奇幻" OnClick="Button10_Click" />
                     <asp:Button ID="Button11" CssClass="btn4 btn btn-large" runat="server" Text="古代言情" OnClick="Button11_Click" />
                     <asp:Button ID="Button12" CssClass="btn4 btn btn-large" runat="server" Text="现代言情" OnClick="Button12_Click" />
                     <asp:Button ID="Button13" CssClass="btn4 btn btn-large" runat="server" Text="玄幻言情" OnClick="Button13_Click" />
                     <asp:Button ID="Button14" CssClass="btn4 btn btn-large" runat="server" Text="校园生活" OnClick="Button14_Click" />
                     <asp:Button ID="Button8" CssClass="btn2 btn btn-large" runat="server" Text="其他" OnClick="Button8_Click" />
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

             <div class="bookdiv">

                  <asp:GridView ID="GridView1" CssClass="grid1" runat="server" AutoGenerateColumns="False" BorderStyle="None" DataKeyNames="bookID" DataSourceID="SqlDataSource1" Width="48%" AllowPaging="True" PageSize="7">
            <Columns>
                <asp:TemplateField HeaderText="图书">
                    <ItemTemplate>
                        <div class="book">
                        <a href="#"><asp:Image ID="Image1" CssClass="pic1" ImageUrl="~/image/pic1.jpg" runat="server" /></a>
                        <asp:Label ID="Label1" runat="server" CssClass="bookna" Text='<%# Eval("bookName") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label2" runat="server" CssClass="bookin" Text='<%# Eval("author") %>'></asp:Label>
                        <asp:Label ID="Label3" runat="server" CssClass="bookty" Text='<%# Eval("type") %>'></asp:Label>
                        <asp:Label ID="Label4" runat="server" CssClass="booktro" Text='<%# Eval("introduce") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                    <HeaderStyle BorderStyle="None" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" HorizontalAlign="Center" />
                    <ItemStyle BorderStyle="None" />
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BorderStyle="None" />
        </asp:GridView>
                    <asp:GridView ID="GridView2" CssClass="grid2" runat="server" AutoGenerateColumns="False" BorderStyle="None" DataKeyNames="ebookID" DataSourceID="SqlDataSource2" Width="48%" AllowPaging="True" PageSize="7">
            <Columns>
                <asp:TemplateField HeaderText="电子书">
                    <ItemTemplate>
                        <div class="book">
                        <a href="#"><asp:Image ID="Image2" CssClass="pic1" ImageUrl="~/image/14.png" runat="server" /></a>
                        <asp:Label ID="Label5" CssClass="bookna" runat="server" Text='<%# Eval("ebookName") %>'></asp:Label>
                            <br />
                        <asp:Label ID="Label6" CssClass="bookin" runat="server" Text='<%# Eval("author") %>'></asp:Label>
                        <asp:Label ID="Label7" CssClass="bookty" runat="server" Text='<%# Eval("type") %>'></asp:Label>
                        <asp:Label ID="Label8" CssClass="booktro" runat="server" Text='<%# Eval("introduce") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                    <HeaderStyle BorderStyle="None" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" />
                    <ItemStyle BorderStyle="None" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AqueductConnectionString %>" SelectCommand="SELECT * FROM [T_Ebook]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AqueductConnectionString %>" SelectCommand="SELECT * FROM [T_Book]"></asp:SqlDataSource>


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

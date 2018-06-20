﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="wenbook.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>问渠</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/index.css">
    <script src="js/index.js"></script>
    <style type="text/css">
        .ps_hear {
            font-size:18px;
            color:darkgray;
        }
        .ps_item a{
            color:black;
            text-decoration:none;
        }
        .ps_item a:hover{
 
            color:red;
        }

        .ps_tem a{
            color:black;
            text-decoration:none;
        }
        .ps_tem a:hover{
 
            color:red;
        }





        .libpic {
            width:200px;
            height:200px;
            margin-left:0px;
            background-color:aqua;
            float:left;

        }
        .libnametext {
            font-size:20px;
            margin-top:-600px;
            margin-left:50px;
        }
        .libintext {
            
            text-indent: 2em;
    overflow : hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
        }

        .libphonetext {
            margin-top:-80px;
            color:darkgray;
        }

        .libcttext {
            margin-right:0px;

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
                    
                        <form class="navbar-form navbar-left" role="search">
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

                        </form>
                </div>


            </div>
            </nav>

            <nav class=" navbar-default">
            <div class="navdiv">
                    
                    <ul class="nav nav-pills navtext">
                            <li class="active"><a href="#">首页</a></li>
                            <li class=" hidden-xs"><a href="#">排行榜</a></li>
                            <li><a href="#">分类</a></li>
                            <li class=" hidden-xs" ><a href="#">图书馆</a></li>
                            <li class=" hidden-xs" ><a href="#">书架</a></li>
                            <li><a href="#">信息</a></li>
                          </ul>
            
                
            </div>
            </nav>

            <div class="bookclassdiv col-sx-12 col-sm-12 col-md-3 col-lg-2 " id="navsce">
                <p class="title-n">男生分类</p>
                    <div class="clstext">
                    <img src="image/210.jpg" alt="Image">  
                    <span><a href="#">都市传奇</a></span>

                    </div>

                    <div class="clstext">
                        <img src="image/211.jpg" alt="Image">  
                        <span><a href="#">玄幻</a></span>

                    </div>

                    <div class="clstext">
                        <img src="image/212.jpg" alt="Image">  
                        <span><a href="#">仙侠修真</a></span>

                    </div>
                    
                    <div class="clstext">
                        <img src="image/213.jpg" alt="Image">  
                        <span><a href="#">灵异</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/214.jpg" alt="Image">  
                    <span><a href="#">历史</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/215.jpg" alt="Image">  
                    <span><a href="#">游戏竞技</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/216.jpg" alt="Image">  
                    <span><a href="#">科幻</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/217.jpg" alt="Image">  
                    <span><a href="#">武侠</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/218.jpg" alt="Image">  
                    <span><a href="#">奇幻</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/219.jpg" alt="Image">  
                    <span><a href="#">其他</a></span>

                    </div>
                    <p class="title-n">女生分类</p>

                    <div class="clstext">
                    <img src="image/201.jpg" alt="Image">  
                    <span><a href="#">古代言情</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/202.jpg" alt="Image">  
                    <span><a href="#">现代言情</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/203.jpg" alt="Image">  
                    <span><a href="#">玄幻言情</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/204.jpg" alt="Image">   
                    <span><a href="#" >校园生活</a></span>

                    </div>

                
            </div>
            
            <div class="bigdiv col-sx-12 col-sm-12 col-md-9 col-lg-8">
                <div class="bigimg">
                    
                </div>


                <div class="bookimg">

                     
                        
                         <asp:GridView ID="GridView3" CssClass="col-xs-12 col-sm-12" runat="server" AutoGenerateColumns="False" DataKeyNames="ebookID" DataSourceID="SqlDataSource1" Width="100%" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" AllowPaging="True" PageSize="6" AllowCustomPaging="True">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:TemplateField HeaderText="热搜榜">
                    <ItemTemplate>
                        <div>
                        <a href="#"><asp:Image ID="Image1" runat="server" ImageUrl="~/image/pic1.jpg" CssClass="libpic" Height="135px" Width="203px" /></a>
                        
                        <a href="#"><asp:Label ID="libname" runat="server" CssClass="libnametext" Text='<%# Eval("ebookName") %>'></asp:Label></a>
                            <br />
                        <asp:Label ID="libinth" runat="server" CssClass="libintext" Text='<%# Eval("author") %>'></asp:Label>
                            <br />
                        <asp:Label ID="Label1" runat="server" CssClass="libcttext" Text='<%# Eval("introduce") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                    <HeaderStyle BorderColor="Red" BorderStyle="None" CssClass="ssd" Font-Size="XX-Large" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle CssClass="ps_tem" BorderStyle="None" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>


                   

                </div>

                <div class="bookcs">
                    <h3 style="text-align: center;">男频精选</h3>
                    <div class="csn col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h4>玄幻</h4>
                        <hr class="hrcs"/>
                        <ol>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                        </ol>

                        <a><p>更多</p></a>
                    </div>

                    <div class="csv col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h4>都市传奇</h4>
                        <hr class="hrcs"/>
                        <ol>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                        </ol>
                        <a><p>更多</p></a>
                    </div>

                    <div class="csrank col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h4>仙侠修真</h4>
                        <hr class="hrcs"/>
                        <ol>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                        </ol>
                        <a><p>更多</p></a>
                    </div>

                    <div class="csr col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h4>游戏竞技</h4>
                        <hr class="hrcs"/>
                        <ol>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                        </ol>
                        <a><p>更多</p></a>
                    </div>

                    <h3 style="text-align: center;">女频精选</h3>
                    <div class="csn col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h4>古代言情</h4>
                        <hr class="hrcs"/>
                        <ol>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                        </ol>

                        <a><p>现代言情</p></a>
                    </div>

                    <div class="csv col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h4>都市传奇</h4>
                        <hr class="hrcs"/>
                        <ol>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                        </ol>
                        <a><p>更多</p></a>
                    </div>

                    <div class="csrank col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h4>玄幻言情</h4>
                        <hr class="hrcs"/>
                        <ol>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                        </ol>
                        <a><p>更多</p></a>
                    </div>

                    <div class="csr col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h4>校园生活</h4>
                        <hr class="hrcs"/>
                        <ol>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                            <li><a href="#">书名</a></li>
                        </ol>
                        <a><p>更多</p></a>
                    </div>

                </div>
            </div>


            <div class="bookrank hidden-sm hidden-xs hidden-md col-lg-2">
                <div class="rankz">
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ebookID" DataSourceID="SqlDataSource1" BorderStyle="None" CellPadding="4" ForeColor="#333333" GridLines="None" Height="279px" AllowCustomPaging="True" Width="152px" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="下载排行榜" InsertVisible="false" >
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>.
                        <a href="#"><asp:Label ID="Label1" runat="server" Text='<%# Eval("ebookName") %>'></asp:Label></a>
                    </ItemTemplate>
                    
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" CssClass="ps_item" />
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AqueductConnectionString %>" SelectCommand="SELECT * FROM [T_Ebook] ORDER BY [viewTimes]"></asp:SqlDataSource>

                </div>

                <div class="rankr">
                   
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="bookID" DataSourceID="SqlDataSource2" BorderStyle="None" CellPadding="4" ForeColor="#333333" GridLines="None" Height="279px" AllowCustomPaging="True" Width="152px" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:TemplateField HeaderText="阅读排行榜">
                      <ItemTemplate>
                           <%# Container.DataItemIndex + 1 %>.
                          <a href="#"><asp:Label ID="Label2" runat="server" Text='<%# Eval("bookName") %>'></asp:Label></a>
                      </ItemTemplate>
                      <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" CssClass="ps_item" />
                  </asp:TemplateField>
              </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AqueductConnectionString %>" SelectCommand="SELECT * FROM [T_Book] ORDER BY [borrowTimes]"></asp:SqlDataSource>


                </div>

                

            </div>




        </div>

        
        
        
    </div>

    <div class="bottomdiv">
        <p class="bottext">邱少，云董，孙总合作制作</p>
        <p class="bottext">有问题请联系客服人员，但是我们并没有。</p>
                
    </div>

    </div>
    </form>
</body>
</html>

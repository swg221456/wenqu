<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyLibrary.aspx.cs" Inherits="wenbook.MyLibrary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>我的图书馆</title>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/index.css"/>
    <script src="js/index.js"></script>
    <link rel="stylesheet" href="css/libweb.css"/>
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

            <div class="bookclassdiv col-sx-12 col-sm-12 col-md-3 col-lg-2  hidden-xs" id="navsce">
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
               <div class="lib">
                   <h3>已入驻图书馆</h3>
                    <asp:GridView ID="GridView1" CssClass="lib col-sx-12 col-sm-12 col-md-9 col-lg-8" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="0px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None"  AllowPaging="True" AllowSorting="True" BorderStyle="None" PageSize="5">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <div>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/image/pic1.jpg" CssClass="libpic" Height="135px" Width="203px" />
                        
                        <asp:Label ID="libname" runat="server" CssClass="libnametext" Text='<%# Eval("libName") %>'></asp:Label>
                            <br />
                        <asp:Label ID="libinth" runat="server" CssClass="libintext" Text='<%# Eval("introduce") %>'></asp:Label>
                            <br />
                        <asp:Label ID="libphone" runat="server" CssClass="libphonetext" Text='<%# Eval("phone") %>'></asp:Label>
                        <asp:Label ID="Label1" runat="server" CssClass="libcttext" Text='<%# Eval("province") %>'></asp:Label>
                        <asp:Label ID="Label2" runat="server" CssClass="libcttext" Text='<%# Eval("city") %>'></asp:Label>
                        <asp:Label ID="Label3" runat="server" CssClass="libcttext" Text='<%# Eval("address") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
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

    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AqueductConnectionString %>" SelectCommand="SELECT [libName], [introduce], [phone], [province], [city], [address] FROM [T_Library]"></asp:SqlDataSource>

               </div>

                <div class="sltlib  col-sx-12 col-sm-12 col-md-9 col-lg-8">
                    <h3>图书馆查询</h3>
                    <p>所在省：</p>
                    
                    <asp:TextBox ID="provi" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-large btn-danger btnsumit" Text="查询" OnClick="Button1_Click" />
                    <p>所在市：</p>
                    
                    <asp:TextBox ID="city" runat="server"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-large btn-danger btnsumit" Text="查询" />
                    <p>图书馆名字：</p>
                    <asp:TextBox ID="libname" runat="server"></asp:TextBox>
                
                    <asp:Button ID="Button3" runat="server" CssClass="btn btn-large btn-danger btnsumit" Text="查询" /><br />

                     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                         <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <div>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/image/pic2.jpg" CssClass="libpic" Height="135px" Width="203px" />
                        
                        <asp:Label ID="libname" runat="server" CssClass="libnametext" Text='<%# Eval("libName") %>'></asp:Label>
                            <br />
                        <asp:Label ID="libinth" runat="server" CssClass="libintext" Text='<%# Eval("introduce") %>'></asp:Label>
                            <br />
                        <asp:Label ID="libphone" runat="server" CssClass="libphonetext" Text='<%# Eval("phone") %>'></asp:Label>
                        <asp:Label ID="Label1" runat="server" CssClass="libcttext" Text='<%# Eval("province") %>'></asp:Label>
                        <asp:Label ID="Label2" runat="server" CssClass="libcttext" Text='<%# Eval("city") %>'></asp:Label>
                        <asp:Label ID="Label3" runat="server" CssClass="libcttext" Text='<%# Eval("address") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
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
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                </div>
            </div>


            <div class="bookrank hidden-sm hidden-xs hidden-md col-lg-2">
                <div class="rankz">
                    <h4>下载排行</h4>
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
                </div>

                <div class="rankr">
                    <h4>阅读排行</h4>
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

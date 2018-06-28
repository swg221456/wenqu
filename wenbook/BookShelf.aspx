<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookShelf.aspx.cs" Inherits="wenbook.BookShelf" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
                            <li class="active"><a href="index.aspx">首页</a></li>
                            <li class=" hidden-xs"><a href="BookCity.aspx">书城</a></li>
                            <li><a href="MyLibrary.aspx">图书馆</a></li>
                            <li class=" hidden-xs" ><a href="#">书架</a></li>
                            <li class=" hidden-xs" ><a href="FileUpload.aspx">信息管理</a></li>
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
               
                 <asp:GridView ID="GridView1" CssClass="grid1" runat="server" AutoGenerateColumns="False" BorderStyle="None" DataKeyNames="bookID" DataSourceID="SqlDataSource1" Width="48%" AllowPaging="True" PageSize="7" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="图书">
                    <ItemTemplate>
                        <div class="book">
                        <a href="#" ><asp:Image ID="Image1" CssClass="pic1" ImageUrl='<%#"~/UploadPic/" +Eval("path") %>' runat="server" /></a>
                        <asp:Button ID="Button15"  CssClass="bookna as" runat="server" Text='<%# Eval("bookName") %>' CommandName="getID" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AqueductConnectionString %>" SelectCommand="SELECT [bookName], [author], [type], [introduce], [path] FROM [ViewBook]"></asp:SqlDataSource>

         <asp:GridView ID="GridView2" CssClass="grid1" runat="server" AutoGenerateColumns="False" BorderStyle="None" DataKeyNames="bookID" DataSourceID="SqlDataSource2" Width="48%" AllowPaging="True" PageSize="7" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="图书">
                    <ItemTemplate>
                        <div class="book">
                        <a href="#" ><asp:Image ID="Image1" CssClass="pic1" ImageUrl='<%#"~/UploadPic/" +Eval("path") %>' runat="server" /></a>
                        <asp:Button ID="Button15"  CssClass="bookna as" runat="server" Text='<%# Eval("ebookName") %>' CommandName="getID" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AqueductConnectionString %>" SelectCommand="SELECT [ebookName], [author], [type], [introduce], [path] FROM [ViewEbook]"></asp:SqlDataSource>




            </div>


            <div class="bookrank hidden-sm hidden-xs hidden-md col-lg-2">
                <div class="rankz">
                     <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="ebookID" DataSourceID="SqlDataSource3" BorderStyle="None" CellPadding="4" ForeColor="#333333" GridLines="None" Height="279px" AllowCustomPaging="True" Width="152px" AllowPaging="True">
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AqueductConnectionString %>" SelectCommand="SELECT * FROM [T_Ebook] ORDER BY [viewTimes]"></asp:SqlDataSource>

                </div>

                <div class="rankr">
                     <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="bookID" DataSourceID="SqlDataSource4" BorderStyle="None" CellPadding="4" ForeColor="#333333" GridLines="None" Height="279px" AllowCustomPaging="True" Width="152px" AllowPaging="True">
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
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AqueductConnectionString %>" SelectCommand="SELECT * FROM [T_Book] ORDER BY [borrowTimes]"></asp:SqlDataSource>

                </div>

                

            </div>




        </div>

        
        
        
    </div>

   


    </div>
    </form>
</body>
</html>

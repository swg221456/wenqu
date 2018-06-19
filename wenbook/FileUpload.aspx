<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="wenbook.FileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户上传界面</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/index.js"></script>
    <link rel="stylesheet" href="css/fileup.css">
    <style type="text/css">
	.demo{ background: #ffded7; padding: 2em 0;}
	a:hover,a:focus{
		outline: none;
		text-decoration: none;
	}
	.tab .nav-tabs{
		padding-left: 15px;
		border-bottom: 4px solid #692f6c;
	}
	.tab .nav-tabs li a{
		color: #fff;
		padding: 10px 20px;
		margin-right: 10px;
		background: #692f6c;
		text-shadow: 1px 1px 2px #000;
		border: none;
		border-radius: 0;
		opacity: 0.5;
		position: relative;
		transition: all 0.3s ease 0s;
	}
	.tab .nav-tabs li a:hover{
		background: #692f6c;
		opacity: 0.8;
	}
	.tab .nav-tabs li.active a{
		opacity: 1;
	}
	.tab .nav-tabs li.active a,
	.tab .nav-tabs li.active a:hover,
	.tab .nav-tabs li.active a:focus{
		color: #fff;
		background: #692f6c;
		border: none;
		border-radius: 0;
	}
	.tab .nav-tabs li a:before,
	.tab .nav-tabs li a:after{
		content: "";
		border-top: 42px solid transparent;
		position: absolute;
		top: -2px;
	}
	.tab .nav-tabs li a:before{
		border-right: 15px solid #692f6c;
		left: -15px;
	}
	.tab .nav-tabs li a:after{
		border-left: 15px solid #692f6c;
		right: -15px;
	}
	.tab .nav-tabs li a i,
	.tab .nav-tabs li.active a i{
		display: inline-block;
		padding-right: 5px;
		font-size: 15px;
		text-shadow: none;
	}
	.tab .nav-tabs li a span{
		display: inline-block;
		font-size: 14px;
		letter-spacing: -9px;
		opacity: 0;
		transition: all 0.3s ease 0s;
	}
	.tab .nav-tabs li a:hover span,
	.tab .nav-tabs li.active a span{
		letter-spacing: 1px;
		opacity: 1;
		transition: all 0.3s ease 0s;
	}
	.tab .tab-content{
		padding: 30px;
		background: #fff;
		font-size: 16px;
		color: #6c6c6c;
		line-height: 25px;
	}
	.tab .tab-content h3{
		font-size: 24px;
		margin-top: 0;
	}
	@media only screen and (max-width: 479px){
		.tab .nav-tabs li{
			width: 100%;
			margin-bottom: 5px;
			text-align: center;
		}
		.tab .nav-tabs li a span{
			letter-spacing: 1px;
			opacity: 1;
		}
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
                <div class="topbtn collapse navbar-collapse hidden-xs">
                                        <select class="seltbtn form-control ">
                                            <option>按分类</option>
                                            <option>按作者</option>
                                            <option>按图书馆</option>
                                            <option>按名字</option>
                                        </select>   
                    <asp:TextBox ID="TextBox2" runat="server" Text="搜索" CssClass="seltext form-control"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" CssClass="seltbtn btn btn-large btn-danger btnsumit" Text="提交" />
                       
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
                            <li><a href="#">我的书架</a></li>
                            <li><a href="#">个人信息</a></li>
                          </ul>
            
                
            </div>
            </nav>

          
            
            <div class="bigdiv col-sx-12 col-sm-12 col-md-10 col-lg-10">

                
            <div class="demo">
	            <div class="container">
		            <div class="row">
			            <div class="col-md-offset-3 col-md-6">
				            <div class="tab" role="tabpanel">
					            <!-- Nav tabs -->
					            <ul class="nav nav-tabs" role="tablist">
						            <li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab" data-toggle="tab"><i class="fa fa-home"></i><span>图片上传</span></a></li>
						            <li role="presentation"><a href="#Section2" aria-controls="profile" role="tab" data-toggle="tab"><i class="fa fa-globe"></i><span>电子书上传</span></a></li>
                                    <li role="presentation"><a href="#Section4" aria-controls="book" role="tab" data-toggle="tab"><i class="fa fa-briefcase"></i><span>图书信息上传</span></a></li>
						            <li role="presentation"><a href="#Section3" aria-controls="messages" role="tab" data-toggle="tab"><i class="fa fa-briefcase"></i><span>图书馆信息上传</span></a></li>
					            </ul>
					            <!-- Tab panes -->
					            <div class="tab-content tabs">
						            <div role="tabpanel" class="tab-pane fade in active upphoto" id="Section1">
							            <h3>图片上传</h3>
							            
                                            <asp:FileUpload ID="FileUpload1" CssClass="upload" runat="server" BorderStyle="None" />
 
                                    
                                            <p>原文件路径:</p>
                                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                            <p>文件大小:</p>
                                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                            <p>文件类型:</p>
                                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                            <br />
                                            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                                            <br />
                                            <asp:Image ID="Image1" runat="server" CssClass="fileclass" ImageUrl="~/image/book.jpg"  />

                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-large btn-danger" Text="上传" OnClick="Button3_Click" />
                                    </div>
						            <div role="tabpanel" class="tab-pane fade updbook" id="Section2">
							            <h3>电子书上传</h3>
                                        <asp:FileUpload ID="FileUpload2" CssClass="upload" runat="server" BorderStyle="None" />

                                        <asp:Label ID="Label5" runat="server" Text="书名:"></asp:Label>
                                        <asp:TextBox ID="EbookName" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label6" runat="server" Text="作者:"></asp:Label>
                                        <asp:TextBox ID="Eauthor" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label7" runat="server" Text="简介:"></asp:Label>
                                        <asp:TextBox ID="Eintrduce" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                        <br />
                                        <asp:Image ID="Image2" runat="server" CssClass="fileclass" ImageUrl="~/image/book.jpg"  />
                                        <br />
                                        <asp:Label ID="ebooktishi" runat="server" Text=""></asp:Label>

                                        <asp:Button ID="Esm" runat="server" CssClass="btn btn-large btn-danger" Text="上传" OnClick="Button2_Click1"/>
							         </div>
                                     <div role="tabpanel" class="tab-pane fade in active upphoto" id="Section3">
							            <h3>图书馆信息上传</h3>

                                        <asp:Label ID="Label11" runat="server" Text="图书馆名:"></asp:Label>
                                        <asp:TextBox ID="libname" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label12" runat="server" Text="电话:"></asp:Label>
                                        <asp:TextBox ID="libphone" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label15" runat="server" Text="简介:"></asp:Label>
                                        <asp:TextBox ID="lobintr" CssClass="form-control" runat="server"></asp:TextBox>
                                         <asp:Label ID="Label14" runat="server" Text="所属省:"></asp:Label>
                                        <asp:TextBox ID="lobpro" CssClass="form-control" runat="server"></asp:TextBox>
                                         <asp:Label ID="Label16" runat="server" Text="所属市:"></asp:Label>
                                        <asp:TextBox ID="lobcty" CssClass="form-control" runat="server"></asp:TextBox>
                                         <asp:Label ID="Label13" runat="server" Text="详细地址:"></asp:Label>
                                        <asp:TextBox ID="adree" CssClass="form-control" runat="server"></asp:TextBox>
                                         <br />
                                         <asp:Label ID="libtishi" runat="server" Text=""></asp:Label>
                                         
                                            <asp:Button ID="Button3" runat="server" CssClass="btn btn-large btn-danger" Text="上传" OnClick="Button5_Click" />
                                    </div>

						            <div role="tabpanel" class="tab-pane fade uptbok" id="Section4">
							            <h3>图书上传</h3> 
                                        
                                        <asp:Label ID="Label8" runat="server" Text="书名:"></asp:Label>
                                        <asp:TextBox ID="bookName" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label9" runat="server" Text="作者:"></asp:Label>
                                        <asp:TextBox ID="author" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label10" runat="server" Text="简介:"></asp:Label>
                                        <asp:TextBox ID="intrduce" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label17" runat="server" Text="所属图书馆:"></asp:Label>
                                        <asp:TextBox ID="booklib" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label18" runat="server" Text="馆藏数:"></asp:Label>
                                        <asp:TextBox ID="maxcount" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label19" runat="server" Text="可借数:"></asp:Label>
                                        <asp:TextBox ID="usablecount" CssClass="form-control" runat="server"></asp:TextBox>
                                        
                                        <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                                        <br />
                                        <asp:Image ID="Image3" runat="server" CssClass="fileclass" ImageUrl="~/image/book.jpg"  />
                                        <asp:Label ID="booktishi" runat="server" Text=""></asp:Label>

                                        <asp:Button ID="Button4" runat="server" CssClass="btn btn-large btn-danger" Text="上传" OnClick="Button6_Click" />
							        </div>
					            </div>
				            </div>
			            </div>
		            </div>
	            </div>
            </div>

           


        </div>

        
        </div>
        
    </div>

    </div>
    </form>
</body>
</html>

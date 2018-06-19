<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="wenbook.index" %>

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

                

                <button type="button" class="btnnav navbar-toggle" data-toggle="collapse"
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

                    <div class="booknavba col-xs-12 col-sm-12">  
                        <div class="booknav booknav2 col-sm-12 col-xs-12">      
                        <a href="#"><img src="image/log.jpeg"  alt="Image"></a>
                        
                      
                            <h3><a href="#">书名</a></h3>
                            <p><a href="#">作者</a></p>
                            <p>小小妇科大夫叶诸（野猪）一脚踏进花都， 凭借神奇医术征服清纯俏护士，美艳女教师，暴力警花</p>
                        </div>

                        <div class="booknav booknav2 col-sm-12 col-xs-12">      
                            <a href="#"><img src="image/log.jpeg"  alt="Image"></a>
                        
                      
                            <h3><a href="#">书名</a></h3>
                            <p><a href="#">作者</a></p>
                            <p>小小妇科大夫叶诸（野猪）一脚踏进花都， 凭借神奇医术征服清纯俏护士，美艳女教师，暴力警花</p>
                        </div>

                        <div class="booknav booknav2 col-sm-12 col-xs-12">      
                            <a href="#"><img src="image/log.jpeg"  alt="Image"></a>
                        
                      
                            <h3><a href="#">书名</a></h3>
                            <p><a href="#">作者</a></p>
                            <p>小小妇科大夫叶诸（野猪）一脚踏进花都， 凭借神奇医术征服清纯俏护士，美艳女教师，暴力警花</p>
                        </div>
                    </div>

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

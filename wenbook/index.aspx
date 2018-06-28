<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="wenbook.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>问渠</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/jssor.slider-21.1.6.mini.js"></script>
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
        .ps_tem {
            background-color:#e0dcc1;
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
            height:300px;
            margin-left:0px;

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

        .ddw {    
            margin-top:30px;
        }

        .as {
            background-color:#e0dcc1;
            border:0px;

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
                            <li class="active"><a href="index.aspx">首页</a></li>
                            <li class=" hidden-xs"><a href="BookCity.aspx">书城</a></li>
                            <li><a href="MyLibrary.aspx">图书馆</a></li>
                            <li class=" hidden-xs" ><a href="#">书架</a></li>
                            <li class=" hidden-xs" ><a href="FileUpload.aspx">信息管理</a></li>
                          </ul>
            
                
            </div>
            </nav>

            <div class="bookclassdiv col-sx-12 col-sm-12 col-md-3 col-lg-2 " id="navsce">
                <p class="title-n">男生分类</p>
                    <div class="clstext">
                    <img src="image/210.jpg" alt="Image">  
                    <span><a href="BookCity.aspx">都市传奇</a></span>

                    </div>

                    <div class="clstext">
                        <img src="image/211.jpg" alt="Image">  
                        <span><a href="BookCity.aspx">玄幻</a></span>

                    </div>

                    <div class="clstext">
                        <img src="image/212.jpg" alt="Image">  
                        <span><a href="BookCity.aspx">仙侠修真</a></span>

                    </div>
                    
                    <div class="clstext">
                        <img src="image/213.jpg" alt="Image">  
                        <span><a href="BookCity.aspx">灵异</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/214.jpg" alt="Image">  
                    <span><a href="BookCity.aspx">历史</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/215.jpg" alt="Image">  
                    <span><a href="BookCity.aspx">游戏竞技</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/216.jpg" alt="Image">  
                    <span><a href="BookCity.aspx">科幻</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/217.jpg" alt="Image">  
                    <span><a href="BookCity.aspx">武侠</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/218.jpg" alt="Image">  
                    <span><a href="#">奇幻</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/219.jpg" alt="Image">  
                    <span><a href="BookCity.aspx">其他</a></span>

                    </div>
                    <p class="title-n">女生分类</p>

                    <div class="clstext">
                    <img src="image/201.jpg" alt="Image">  
                    <span><a href="BookCity.aspx">古代言情</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/202.jpg" alt="Image">  
                    <span><a href="BookCity.aspx">现代言情</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/203.jpg" alt="Image">  
                    <span><a href="BookCity.aspx">玄幻言情</a></span>

                    </div>

                    <div class="clstext">
                    <img src="image/204.jpg" alt="Image">   
                    <span><a href="BookCity.aspx" >浪漫青春</a></span>

                    </div>

                
            </div>
            
            <div class="bigdiv col-sx-12 col-sm-12 col-md-9 col-lg-8">
                <div class="bigimg">

                    <!-- 图片轮播 -->
                            <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 960px; height: 550px; overflow: hidden; visibility: hidden; background-color: ;">
                                <!-- Loading Screen -->
                                <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
                                    <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                    <div style="position: absolute; display: block; background: url('image/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                </div>
                                <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 240px; width: 650px; height: 550px; overflow: hidden;">
                                    <div data-p="150.00" style="display: table">
                                        <div style="float: right; margin-top:70px;">
                                            <img data-u="image" src="image/00001.jpg" style="width:250px; height:400px"/>
                                        </div>
                                        <div style="margin-left: 35px; margin-top: 55px; width: 350px; height: 450px;">
                                            <div style="text-align: center">
                                                <h1>斗破苍穹</h1>
                                                <h3>天蚕土豆/玄幻</h3>
                                            </div>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这里是属于斗气的世界，没有花俏艳丽的魔法!</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有的，仅仅是繁衍到巅峰的斗气！</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;讲述了天才少年萧炎在创造了家族空前绝后的修炼纪录后突然成了废人，种种打击接踵而至。就在他即将绝望的时候，一缕灵魂从他手上的戒指里浮现，一扇全新的大门在面前开启，经过艰苦修炼最终成就辉煌的故事</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;心潮澎湃，无限幻想，迎风挥击千层浪，少年不败热血！</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三十年河东，三十年河西，莫欺少年穷!</h4>
                                               
                                        </div>
                                        <img data-u="thumb" src="image/00001.jpg" /><!--小封面-->
                                    </div>
                                    <!--00001-->
                                    <div data-p="150.00" style="display: table;">
                                        <div style="float: right; margin-top:70px" >
                                            <img data-u="image" src="image/00002.jpg" style="width:250px; height:400px"/>
                                        </div>
                                        <div style="margin-left: 35px; margin-top: 55px; width: 350px; height: 450px;">
                                          
                                            <div style="text-align: center">
                                                <h1>大主宰</h1>
                                                <h3>天蚕土豆/玄幻</h3>
                                            </div>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大千世界，位面交汇，万族林立，群雄荟萃，一位位来自下位面的天之至尊，在这无尽世界，演绎着令人向往的传奇，追求着那主宰之路</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;无尽火域，炎帝执掌，万火焚苍穹</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;武境之内，武祖之威，震慑乾坤</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;西天之殿，百战之皇，战威无可敌</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北荒之丘，万墓之地，不死之主镇天地</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;少年自北灵境而出，骑九幽冥雀，闯向了那精彩绝伦的纷纭世界，主宰之路，谁主沉浮？ </h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大千世界，万道争锋，吾为大主宰</h4> 
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4>
                                            
                                        </div>
                                        <img data-u="thumb" src="image/00002.jpg" /><!--小封面-->
                                    </div>
                                    <!--00002-->
                                    <div data-p="150.00" style="display: none;">
                                        <div style="float: right; margin-top:70px" >
                                            <img data-u="image" src="image/00003.jpg" style="width:250px; height:400px"/>
                                        </div>
                                        <div style="margin-left: 35px; margin-top: 55px; width: 350px; height: 450px;">
                                         

                                            <div style="text-align: center">
                                                <h1>雪中悍刀行</h1>
                                                <h3>烽火戏诸侯/仙侠</h3>
                                            </div>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;《雪中悍刀行》是连载于纵横中文网的一部玄侠类小说，并于2013年由江苏文艺出版社出版成实体书，作者是烽火戏诸侯</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该小说讲述一个关于庙堂权争与刀剑交错的时代，一个暗潮涌动粉墨登场的江湖</h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年7月12日,荣获首届网络文学双年奖之银奖作品</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;《2017猫片 胡润原创文学IP价值榜》发布，《雪中悍刀行》排名第17位</h4>

                                        </div>
                                        <img data-u="thumb" src="image/00003.jpg" /><!--小封面-->
                                    </div>
                                    <!--00003-->
                                    <div data-p="150.00" style="display: none;">
                                        <div style="float: right; margin-top:70px" >
                                            <img data-u="image" src="image/00004.jpg" style="width:250px; height:400px"/>
                                        </div>>
                                        <div style="margin-left: 35px; margin-top: 55px; width: 350px; height: 450px;">
                                        
                                            <div style="text-align: center">
                                                <h1>泡沫之夏3</h1>
                                                <h3>明晓溪/言情</h3>
                                            </div>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;《泡沫之夏3》是2007年新世界出版社出版的言情小说，作者是明晓溪</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该小说主要讲述女主人公尹夏沫与两位男主角欧辰、洛熙之间的爱情故事</h4>
                                        </div>
                                        <img data-u="thumb" src="image/00004.jpg" /><!--小封面-->
                                    </div>
                                    <!--00004-->
                                    <div data-p="150.00" style="display: none;">
                                        <div style="float: right; margin-top:70px" >
                                            <img data-u="image" src="image/00005.jpg" style="width:250px; height:400px"/>
                                        </div>
                                        <div style="margin-left: 35px; margin-top: 55px; width: 350px; height: 450px;">
                                        
                                            <div style="text-align: center">
                                                <h1>斗战狂潮</h1>
                                                <h3>骷髅精灵/修真</h3>
                                            </div>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一场灾难中，成为疾病缠身的孤儿</h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有意识以来，陪伴他的只有病痛的折磨和入睡后无边无际的黑暗</h4>
                                                   <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 直到五岁的一天，他的梦境里出现了一个奇怪的嬉命小丑，十年的梦中陪伴和一个王者的梦想，换来重写命运的机会！</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;那天，重新站在天京英魂学院门口的王重，即将开启了属于自己全新的人生……</h4>
                                        </div>
                                        <img data-u="thumb" src="image/00005.jpg" /><!--小封面-->
                                    </div>
                                    <!--00005-->
                                    <div data-p="150.00" style="display: none;">
                                        <div style="float: right; margin-top:70px" >
                                            <img data-u="image" src="image/00006.jpg" style="width:250px; height:400px"/>
                                        </div>
                                        <div style="margin-left: 35px; margin-top: 55px; width: 350px; height: 450px;">
                                        

                                            <div style="text-align: center">
                                                <h1>极品透视</h1>
                                                <h3>赤焰圣歌/都市</h3>
                                            </div>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;《极品透视》是赤焰圣歌倾力著作的一部网络都市异能爽文</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;醒掌天下权，醉卧美人膝，乃是每一个男人的终极目</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一个普通青年，从一个老骗子的手中得一奇异玉佩</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;令人惊奇的是，借助玉佩，他竟然拥有了透视的能力</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;且看他如何玩转都市，笑傲人生</h4>
                                        </div>
                                        <img data-u="thumb" src="image/00006.jpg" /><!--小封面-->
                                    </div>
                                    <!--00006-->
                                    <div data-p="150.00" style="display: none;">
                                        <div style="float: right; margin-top:70px" >
                                            <img data-u="image" src="image/00007.jpg" style="width:250px; height:400px"/>
                                        </div>
                                        <div style="margin-left: 35px; margin-top: 55px; width: 350px; height: 450px;">
                                         
                                            <div style="text-align: center">
                                                <h1>琴帝</h1>
                                                <h3>唐家三少/玄幻</h3>
                                            </div>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;主要讲述了在一个魔法的世界里，一个天性单纯的少年，通过自己的努力，逐渐成为琴中帝王的故事</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本书开创了音乐魔法的先河，颠覆以往的设定</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;彩虹等级——赤橙黄绿青蓝紫——成为所有武技和魔法衡量的标准</h4>
                                        </div>
                                        <img data-u="thumb" src="image/00007.jpg" /><!--小封面-->
                                    </div>
                                    <!--00007-->
                                    <div data-p="150.00" style="display: none;">
                                        <div style="float: right; margin-top:70px" >
                                            <img data-u="image" src="image/00008.jpg" style="width:250px; height:400px"/>
                                        </div>
                                        <div style="margin-left: 35px; margin-top: 55px; width: 350px; height: 450px;">
                                       

                                            <div style="text-align: center">
                                                <h1>三寸人间</h1>
                                                <h3>耳根/修真</h3>
                                            </div>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;星空古剑，万族进化，缥缈道院，谁与争锋天下万物</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;神兵不朽，宇宙苍穹，太虚称尊青木年华</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;悠悠牧之，其意欢快，恰似朝阳少年宝乐</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;心怀梦想，以兵入道，指天摘月仕途多舛</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法器克之，灵宝制之，法兵镇之……</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;若皆无果，神兵斩之！蓦然回首，才知……</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;举头三尺已无神明，掌心三寸方是人间。</h4>
                                        </div>
                                        <img data-u="thumb" src="image/00008.jpg" /><!--小封面-->
                                    </div>
                                    <!--00008-->
                                    <div data-p="150.00" style="display: none;">
                                        <div style="float: right; margin-top:70px" >
                                            <img data-u="image" src="image/00009.jpg" style="width:250px; height:400px"/>
                                        </div>
                                        <div style="margin-left: 35px; margin-top: 55px; width: 350px; height: 450px;">
                                          

                                            <div style="text-align: center">
                                                <h1>圣墟</h1>
                                                <h3>辰东/玄幻</h3>
                                            </div>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在破败中崛起</h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在寂灭中复苏</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;沧海成尘雷电枯竭</h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;那一缕幽雾又一次临近大地</h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;世间的枷锁被打开了一个全新的世界就此揭开神秘的一角……</h4>
                                        </div>
                                        <img data-u="thumb" src="image/00009.jpg" /><!--小封面-->
                                    </div>
                                    <!--00009-->
                                    <div data-p="150.00" style="display: none;">
                                        <div style="float: right; margin-top:70px" >
                                            <img data-u="image" src="image/00010.jpg" style="width:250px; height:400px"/>
                                        </div>
                                        <div style="margin-left: 35px; margin-top: 55px; width: 350px; height: 450px;">
                                     

                                            <div style="text-align: center">
                                                <h1>校花的贴身高手</h1>
                                                <h3>鱼人二代/都市</h3>
                                            </div>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;故事讲述了从大山里走出来的绝世高手 </h4>
                                               <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一块能预知未来的神秘玉佩…身负重任 </h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;追校花 </h4>
                                               <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;还是奉校花老爸之命 </h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;虽然林逸很不想跟这位难伺候的大小姐打交道 </h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;但是长辈之命难违抗 </h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;他不得不千里迢迢的转学到松山市 </h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;给大小姐鞍前马后的当跟班.. </h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;于是史上最牛跟班出现了 </h4>
                                           
                                        </div>
                                        <img data-u="thumb" src="image/00010.jpg" /><!--小封面-->
                                    </div>
                                    <!--00010-->
                                    <div data-p="150.00" style="display: none;">
                                        <div style="float: right; margin-top:70px" >
                                            <img data-u="image" src="image/00011.jpg" style="width:250px; height:400px"/>
                                        </div>
                                        <div style="margin-left: 35px; margin-top: 55px; width: 350px; height: 450px;">
                                          

                                            <div style="text-align: center">
                                                <h1>英雄联盟之谁与争锋</h1>
                                                <h3>乱/游戏竞技</h3>
                                            </div>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本部作品重点描述了主角与队友之间因共同的爱好与目标而结合到一起的牢固友情</h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;深入阐述了电子竞技这个项目在发展的初期，与传统社会价值观的冲突</h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;故事的矛盾主要集中在草根竞技选手与职业俱乐部战队之间的利益纠纷</h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对金钱名声与友情亲情之间的矛盾</h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;以及在其间进行选择的人物进行了深入剖析</h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;正面肯定了主角与队友们的理想，热血，友情与团队精神</h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;情节丝丝入扣</h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;表达出了当今社会很多年轻人对电子竞技这个新兴项目的推崇以及态度</h4>
                                        </div>
                                        <img data-u="thumb" src="image/00011.jpg" /><!--小封面-->
                                    </div>
                                    <!--00011-->
                                    <div data-p="150.00" style="display: none;">
                                        <div style="float: right; margin-top:70px" >
                                            <img data-u="image" src="image/00012.jpg" style="width:250px; height:400px"/>
                                        </div>
                                        <div style="margin-left: 35px; margin-top: 55px; width: 350px; height: 450px;">
                                           
                                            <div style="text-align: center">
                                                <h1>遮天</h1>
                                                <h3>辰东/修仙</h3>
                                            </div>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;冰冷与黑暗并存的宇宙深处，九具庞大的龙尸拉着一口青铜古棺，亘古长存。</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这是太空探测器在枯寂的宇宙中捕捉到的一幅极其震撼的画面。</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;九龙拉棺，究竟是回到了上古，还是来到了星空的彼岸？</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一个浩大的仙侠世界，光怪陆离，神秘无尽。</h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;热血似火山沸腾，激情若瀚海汹涌，欲望如深渊无止境。</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登天路，踏歌行，弹指遮天。</h4>

                                        </div>
                                        <img data-u="thumb" src="image/00012.jpg" /><!--小封面-->
                                    </div>
                                    <!--00012-->
                                    <div data-p="150.00" style="display: none;">
                                        <div style="float: right; margin-top:70px" >
                                            <img data-u="image" src="image/00013.jpg" style="width:250px; height:400px"/>
                                        </div>
                                        <div style="margin-left: 35px; margin-top: 55px; width: 350px; height: 450px;">
                                        
                                             <div style="text-align: center">
                                                <h1>盘龙</h1>
                                                <h3>我吃西红柿/玄幻</h3>
                                            </div>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大小的血睛鬃毛狮，力大无穷的紫睛金毛猿，毁天灭地的九头蛇皇，携带着毁灭雷电的恐怖雷龙……</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这里无奇不有，这是一个广博的魔幻世界。</h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;强者可以站在黑色巨龙的头顶遨游天际，恐怖的魔法可以焚烧江河，可以毁灭城池，可以夷平山岳……</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这本书，讲述了一个拥有‘盘龙戒指’的少年的梦幻旅程。
                                            </h4>
                                        </div>
                                        <img data-u="thumb" src="image/00013.jpg" /><!--小封面-->
                                    </div>
                                    <!--00013-->
                                    <div data-p="150.00" style="display: none;">
                                        <div style="float: right; margin-top:70px" >
                                            <img data-u="image" src="image/00014.jpg" style="width:250px; height:400px"/>
                                        </div>
                                        <div style="margin-left: 35px; margin-top: 55px; width: 350px; height: 450px;">
                                         
                                            <div style="text-align: center">
                                                <h1>触墓惊心</h1>
                                                <h3>湘西鬼王/灵异惊悚</h3>
                                            </div>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;农村修坟匠，说说我替人修坟时亲眼见过的老尸刨坟、奇淫仙棺事件</h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;入行九年我亲手葬过冤死的囚犯、死后一脸狰狞的驼子、因为偷窥女人而至心肌梗死的变态、摸着一手好牌却因为借不到钱翻本而懊糟自杀的赌棍……</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;从某种意义上来说即便死者身负原罪却也是我们的父母兄弟，也是要入土为安的</h4>
                                                <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而种生基、山王葬、生死判、枉死城、磕头坟、打生桩……</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这些真实存在于世间阴暗角落的坟墓你听说过吗？我也曾亲眼见过一只突然破土而出的枯肢、合葬着一男七女八具裸尸的玉棺……</h4>
                                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;接下来我要说的就是农村里那些不为人知的恐怖老坟
                                            </h4>
                                        </div>
                                        <img data-u="thumb" src="image/00014.jpg" /><!--小封面-->
                                    </div>
                                    <!--00014-->
                                    <a data-u="any" href="#" style="display: none">Image Gallery with Vertical Thumbnail</a>
                                </div>
                                <!-- Thumbnail Navigator -->
                                <div data-u="thumbnavigator" class="jssort01-99-66" style="position: absolute; left: 0px; top: 0px; width: 240px; height: 480px;" data-autocenter="2">
                                    <!-- Thumbnail Item Skin Begin -->
                                    <div data-u="slides" style="cursor: default;">
                                        <div data-u="prototype" class="p">
                                            <div class="w">
                                                <div data-u="thumbnailtemplate" class="t"></div>
                                            </div>
                                            <div class="c"></div>
                                        </div>
                                    </div>
                                    <!-- Thumbnail Item Skin End -->
                                </div>
                                <!-- Arrow Navigator -->
                                <span data-u="arrowleft" class="jssora05l" style="top: 0px; left: 248px; width: 40px; height: 40px;" data-autocenter="2"></span>
                                <span data-u="arrowright" class="jssora05r" style="top: 0px; right: 8px; width: 40px; height: 40px;" data-autocenter="2"></span>
                            </div>

                    
                </div>


                <div class="bookimg hidden-xs">

                     
                        
                         <asp:GridView ID="GridView3" CssClass="col-xs-12 col-sm-12" runat="server" AutoGenerateColumns="False" DataKeyNames="ebookID" DataSourceID="SqlDataSource1" Width="100%" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AllowPaging="True" PageSize="6" AllowCustomPaging="True" BorderStyle="None" OnRowCommand="GridView3_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="热搜榜">
                    <ItemTemplate>
                        <div class="ddw">
                        <a href="#"><asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/UploadPic/" +Eval("path") %>' CssClass="libpic" Height="135px" Width="203px" /></a>
                        <asp:Button ID="Button15"  CssClass="bookna as libnametext" runat="server" Text='<%# Eval("ebookName") %>' CommandName="getID" />
                        
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
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                             <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>


                   

                </div>


                <div class="piccs hidden-xs">
            <div class="picsty">
                <asp:Image ID="Image2" CssClass="picsty a1" ImageUrl="~/image/n1.jpg" runat="server" />
                <a href="BookCity.aspx" class="a2"><p>玄幻</p></a>
            </div>
            <div class="picsty">
                <asp:Image ID="Image3" CssClass="picsty a1" ImageUrl="~/image/n2.jpg" runat="server" />
                <a href="BookCity.aspx"  class="a2"><p>都市传奇</p></a>
            </div>
            <div class="picsty">
                <asp:Image ID="Image4" CssClass="picsty a1" ImageUrl="~/image/n3.jpg" runat="server" />
                <a href="BookCity.aspx"  class="a2"><p>历史</p></a>
            </div>
            <div class="picsty">
                <asp:Image ID="Image5" CssClass="picsty a1" ImageUrl="~/image/n4.jpg" runat="server" />
                <a href="BookCity.aspx"  class="a2"><p>悬疑</p></a>
            </div>
            <div class="picsty">
                <asp:Image ID="Image6" CssClass="picsty a1" ImageUrl="~/image/n5.jpg" runat="server" />
                <a href="BookCity.aspx"  class="a2"><p>科幻</p></a>
            </div>
            <div class="picsty">
                <asp:Image ID="Image7" CssClass="picsty a1" ImageUrl="~/image/n6.jpg" runat="server" />
                <a href="BookCity.aspx"  class="a2"><p>玄幻言情</p></a>
            </div>
            
            <div class="picqs">
                <asp:Image ID="Image8" CssClass="picqs" ImageUrl="~/image/n9.jpg" runat="server" />
                <a href="BookCity.aspx"  class="aa1"><p>浪漫青春</p></a>
            </div>

            <div class="picas">
                <asp:Image ID="Image9" CssClass="picas" ImageUrl="~/image/n7.jpg" runat="server" />
                <a href="BookCity.aspx"  class="aa2"><p>古代言情</p></a>
            </div>

            <div class="picsty p10">
                <asp:Image ID="Image10" CssClass="picsty a1" ImageUrl="~/image/n8.jpg" runat="server"/>
                <a href="BookCity.aspx"  class="a2"><p>现代言情</p></a>
            </div>

             <div class="picsty p11">
                <asp:Image ID="Image11" CssClass="picsty a1" ImageUrl="~/image/n10.jpg" runat="server"/>
                <a href="BookCity.aspx"  class="a2"><p>玄幻灵异</p></a>
            </div>

        </div>

                <div class="p"></div>

                <div class="bookcs">
                    <h3 style="text-align: center;">男频精选</h3>
                    <div class="csn col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h4>玄幻</h4>
                        <hr class="hrcs"/>
                        <ol>
                            <li><a href="BookCity.aspx">至尊神阳</a></li>
                            <li><a href="BookCity.aspx">寒帝</a></li>
                            <li><a href="BookCity.aspx">诛神记</a></li>
                            <li><a href="BookCity.aspx">佛系按摩馆</a></li>
                            <li><a href="BookCity.aspx">绝世战尊</a></li>
                            <li><a href="BookCity.aspx">武陵帝尊</a></li>
                            <li><a href="BookCity.aspx">逆天狂魔系统</a></li>
                            <li><a href="BookCity.aspx">绝世神魂</a></li>
                            <li><a href="BookCity.aspx">吞噬诸天</a></li>
                            <li><a href="BookCity.aspx">无上战帝</a></li>
                        </ol>

                        <a><p>更多</p></a>
                    </div>

                    <div class="csv col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h4>都市传奇</h4>
                        <hr class="hrcs"/>
                        <ol>
                            <li><a href="BookCity.aspx">变身国宝熊猫</a></li>
                            <li><a href="BookCity.aspx">极品天医</a></li>
                            <li><a href="BookCity.aspx">妖孽强者席卷都市</a></li>
                            <li><a href="BookCity.aspx">重生之雷霆暴君</a></li>
                            <li><a href="BookCity.aspx">村野小丹神</a></li>
                            <li><a href="BookCity.aspx">都市兵峰</a></li>
                            <li><a href="BookCity.aspx">绝品兵王</a></li>
                            <li><a href="BookCity.aspx">史上最贱保镖</a></li>
                            <li><a href="BookCity.aspx">全职护花高手</a></li>
                            <li><a href="BookCity.aspx">都市极品改造系统</a></li>
                        </ol>
                        <a><p>更多</p></a>
                    </div>

                    <div class="csrank col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h4>仙侠修真</h4>
                        <hr class="hrcs"/>
                        <ol>
                            <li><a href="BookCity.aspx">九婴魔界</a></li>
                            <li><a href="BookCity.aspx">玄祖</a></li>
                            <li><a href="BookCity.aspx">万界星河</a></li>
                            <li><a href="BookCity.aspx">戏命九霄</a></li>
                            <li><a href="BookCity.aspx">九龙诀</a></li>
                            <li><a href="BookCity.aspx">吞天</a></li>
                            <li><a href="BookCity.aspx">荒古逆</a></li>
                            <li><a href="BookCity.aspx">仙凡决</a></li>
                            <li><a href="BookCity.aspx">绝世幽仙</a></li>
                            <li><a href="BookCity.aspx">锁天脉</a></li>
                        </ol>
                        <a><p>更多</p></a>
                    </div>

                    <div class="csr col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h4>游戏竞技</h4>
                        <hr class="hrcs"/>
                        <ol>
                            <li><a href="BookCity.aspx">网游之纵横</a></li>
                            <li><a href="BookCity.aspx">荣耀战迹</a></li>
                            <li><a href="BookCity.aspx">英雄联盟之谁与争锋</a></li>
                            <li><a href="BookCity.aspx">大航海时代</a></li>
                            <li><a href="BookCity.aspx">我是职业选手</a></li>
                            <li><a href="BookCity.aspx">最强系统之瓦罗兰重生</a></li>
                            <li><a href="BookCity.aspx">全职高手</a></li>
                            <li><a href="BookCity.aspx">我的游戏空间</a></li>
                            <li><a href="BookCity.aspx">英魂之刃</a></li>
                            <li><a href="BookCity.aspx">荒梦猎人</a></li>
                        </ol>
                        <a><p>更多</p></a>
                    </div>

                    <h3 style="text-align: center;">女频精选</h3>
                    <div class="csn col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h4>古代言情</h4>
                        <hr class="hrcs"/>
                        <ol>
                            <li><a href="BookCity.aspx">明宫第一媳</a></li>
                            <li><a href="BookCity.aspx">盛世贤妃</a></li>
                            <li><a href="BookCity.aspx">绝色驸马，乖乖就擒</a></li>
                            <li><a href="BookCity.aspx">王爷尽然想休妻</a></li>
                            <li><a href="BookCity.aspx">重生之江山旧人仇</a></li>
                            <li><a href="BookCity.aspx">嫡女在上</a></li>
                            <li><a href="BookCity.aspx">贴身丫鬟要爬床</a></li>
                            <li><a href="BookCity.aspx">凤主沉浮，废后倾城</a></li>
                            <li><a href="BookCity.aspx">重生之卿本惊华</a></li>
                            <li><a href="BookCity.aspx">一品狂妃</a></li>
                        </ol>

                        <a><p>更多</p></a>
                    </div>

                    <div class="csv col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h4>浪漫青春</h4>
                        <hr class="hrcs"/>
                        <ol>
                            <li><a href="BookCity.aspx">论戏精的自我修养</a></li>
                            <li><a href="BookCity.aspx">爷就是痞，怎么着</a></li>
                            <li><a href="BookCity.aspx">我拿时光换回爱</a></li>
                            <li><a href="BookCity.aspx">听说，我是你的可爱多</a></li>
                            <li><a href="BookCity.aspx">她拉下了女装大佬的裙子</a></li>
                            <li><a href="BookCity.aspx">最萌颜值差</a></li>
                            <li><a href="BookCity.aspx">闺蜜在左爱人在右</a></li>
                            <li><a href="BookCity.aspx">这世间最美好的相遇</a></li>
                            <li><a href="BookCity.aspx">重回少年时代</a></li>
                            <li><a href="BookCity.aspx">那年时光悠悠</a></li>
                        </ol>
                        <a><p>更多</p></a>
                    </div>

                    <div class="csrank col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h4>玄幻言情</h4>
                        <hr class="hrcs"/>
                        <ol>
                            <li><a href="BookCity.aspx">偃师传说</a></li>
                            <li><a href="BookCity.aspx">徒弟，你竟然是魔尊</a></li>
                            <li><a href="BookCity.aspx">废材狂妃：极品幻灵师</a></li>
                            <li><a href="BookCity.aspx">国师大人请自重</a></li>
                            <li><a href="BookCity.aspx">帝君，让我咬一口</a></li>
                            <li><a href="BookCity.aspx">救命！我变成了一棵草</a></li>
                            <li><a href="BookCity.aspx">重生小狐仙</a></li>
                            <li><a href="BookCity.aspx">妖物大人，玩物新娘</a></li>
                            <li><a href="BookCity.aspx">反派，我才是主角他娘</a></li>
                            <li><a href="BookCity.aspx">邪凤涅槃</a></li>
                        </ol>
                        <a><p>更多</p></a>
                    </div>

                    <div class="csr col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h4>校园生活</h4>
                        <hr class="hrcs"/>
                        <ol>
                            <li><a href="BookCity.aspx">学长总是想撩我</a></li>
                            <li><a href="BookCity.aspx">富家子们的代班主任</a></li>
                            <li><a href="BookCity.aspx">那群可爱的复读生们</a></li>
                            <li><a href="BookCity.aspx">网恋男神在隔壁</a></li>
                            <li><a href="BookCity.aspx">谁的青春无巧合</a></li>
                            <li><a href="BookCity.aspx">我的逗比男神</a></li>
                            <li><a href="BookCity.aspx">同桌有毒</a></li>
                            <li><a href="BookCity.aspx">拐个男神谈恋爱</a></li>
                            <li><a href="BookCity.aspx">霸道校草追爱记</a></li>
                            <li><a href="BookCity.aspx">老师，你的智商掉了</a></li>
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
                        <a href="BookCity.aspx"><asp:Label ID="Label1" runat="server" Text='<%# Eval("ebookName") %>'></asp:Label></a>
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
                          <a href="BookCity.aspx"><asp:Label ID="Label2" runat="server" Text='<%# Eval("bookName") %>'></asp:Label></a>
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

   

    </div>
    </form>

    <script type="text/javascript">
        jQuery(document).ready(function ($) {

            var jssor_1_SlideshowTransitions = [
              { $Duration: 1200, $Zoom: 1, $Easing: { $Zoom: $Jease$.$InCubic, $Opacity: $Jease$.$OutQuad }, $Opacity: 2 },
              { $Duration: 1000, $Zoom: 11, $SlideOut: true, $Easing: { $Zoom: $Jease$.$InExpo, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, $Zoom: 1, $Rotate: 1, $During: { $Zoom: [0.2, 0.8], $Rotate: [0.2, 0.8] }, $Easing: { $Zoom: $Jease$.$Swing, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$Swing }, $Opacity: 2, $Round: { $Rotate: 0.5 } },
              { $Duration: 1000, $Zoom: 11, $Rotate: 1, $SlideOut: true, $Easing: { $Zoom: $Jease$.$InExpo, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InExpo }, $Opacity: 2, $Round: { $Rotate: 0.8 } },
              { $Duration: 1200, x: 0.5, $Cols: 2, $Zoom: 1, $Assembly: 2049, $ChessMode: { $Column: 15 }, $Easing: { $Left: $Jease$.$InCubic, $Zoom: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, x: 4, $Cols: 2, $Zoom: 11, $SlideOut: true, $Assembly: 2049, $ChessMode: { $Column: 15 }, $Easing: { $Left: $Jease$.$InExpo, $Zoom: $Jease$.$InExpo, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, x: 0.6, $Zoom: 1, $Rotate: 1, $During: { $Left: [0.2, 0.8], $Zoom: [0.2, 0.8], $Rotate: [0.2, 0.8] }, $Easing: { $Left: $Jease$.$Swing, $Zoom: $Jease$.$Swing, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$Swing }, $Opacity: 2, $Round: { $Rotate: 0.5 } },
              { $Duration: 1000, x: -4, $Zoom: 11, $Rotate: 1, $SlideOut: true, $Easing: { $Left: $Jease$.$InExpo, $Zoom: $Jease$.$InExpo, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InExpo }, $Opacity: 2, $Round: { $Rotate: 0.8 } },
              { $Duration: 1200, x: -0.6, $Zoom: 1, $Rotate: 1, $During: { $Left: [0.2, 0.8], $Zoom: [0.2, 0.8], $Rotate: [0.2, 0.8] }, $Easing: { $Left: $Jease$.$Swing, $Zoom: $Jease$.$Swing, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$Swing }, $Opacity: 2, $Round: { $Rotate: 0.5 } },
              { $Duration: 1000, x: 4, $Zoom: 11, $Rotate: 1, $SlideOut: true, $Easing: { $Left: $Jease$.$InExpo, $Zoom: $Jease$.$InExpo, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InExpo }, $Opacity: 2, $Round: { $Rotate: 0.8 } },
              { $Duration: 1200, x: 0.5, y: 0.3, $Cols: 2, $Zoom: 1, $Rotate: 1, $Assembly: 2049, $ChessMode: { $Column: 15 }, $Easing: { $Left: $Jease$.$InCubic, $Top: $Jease$.$InCubic, $Zoom: $Jease$.$InCubic, $Opacity: $Jease$.$OutQuad, $Rotate: $Jease$.$InCubic }, $Opacity: 2, $Round: { $Rotate: 0.7 } },
              { $Duration: 1000, x: 0.5, y: 0.3, $Cols: 2, $Zoom: 1, $Rotate: 1, $SlideOut: true, $Assembly: 2049, $ChessMode: { $Column: 15 }, $Easing: { $Left: $Jease$.$InExpo, $Top: $Jease$.$InExpo, $Zoom: $Jease$.$InExpo, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InExpo }, $Opacity: 2, $Round: { $Rotate: 0.7 } },
              { $Duration: 1200, x: -4, y: 2, $Rows: 2, $Zoom: 11, $Rotate: 1, $Assembly: 2049, $ChessMode: { $Row: 28 }, $Easing: { $Left: $Jease$.$InCubic, $Top: $Jease$.$InCubic, $Zoom: $Jease$.$InCubic, $Opacity: $Jease$.$OutQuad, $Rotate: $Jease$.$InCubic }, $Opacity: 2, $Round: { $Rotate: 0.7 } },
              { $Duration: 1200, x: 1, y: 2, $Cols: 2, $Zoom: 11, $Rotate: 1, $Assembly: 2049, $ChessMode: { $Column: 19 }, $Easing: { $Left: $Jease$.$InCubic, $Top: $Jease$.$InCubic, $Zoom: $Jease$.$InCubic, $Opacity: $Jease$.$OutQuad, $Rotate: $Jease$.$InCubic }, $Opacity: 2, $Round: { $Rotate: 0.8 } }
            ];

            var jssor_1_options = {
                $AutoPlay: true,
                $SlideshowOptions: {
                    $Class: $JssorSlideshowRunner$,
                    $Transitions: jssor_1_SlideshowTransitions,
                    $TransitionsOrder: 1
                },
                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$
                },
                $ThumbnailNavigatorOptions: {
                    $Class: $JssorThumbnailNavigator$,
                    $Rows: 2,
                    $Cols: 6,
                    $SpacingX: 14,
                    $SpacingY: 12,
                    $Orientation: 2,
                    $Align: 156
                }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*responsive code begin*/
            /*you can remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 960);
                    refSize = Math.max(refSize, 300);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            /*responsive code end*/
        });
    </script>
    <style>
        /* jssor slider arrow navigator skin 05 css */
        /*
	.jssora05l                  (normal)
	.jssora05r                  (normal)
	.jssora05l:hover            (normal mouseover)
	.jssora05r:hover            (normal mouseover)
	.jssora05l.jssora05ldn      (mousedown)
	.jssora05r.jssora05rdn      (mousedown)
	.jssora05l.jssora05lds      (disabled)
	.jssora05r.jssora05rds      (disabled)
	*/


        .jssora05l, .jssora05r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 40px;
            height: 40px;
            cursor: pointer;
            background: url('image/a17.png') no-repeat;
            overflow: hidden;
        }

        .jssora05l {
            background-position: -10px -40px;
        }

        .jssora05r {
            background-position: -70px -40px;
        }

        .jssora05l:hover {
            background-position: -130px -40px;
        }

        .jssora05r:hover {
            background-position: -190px -40px;
        }

        .jssora05l.jssora05ldn {
            background-position: -250px -40px;
        }

        .jssora05r.jssora05rdn {
            background-position: -310px -40px;
        }

        .jssora05l.jssora05lds {
            background-position: -10px -40px;
            opacity: .3;
            pointer-events: none;
        }

        .jssora05r.jssora05rds {
            background-position: -70px -40px;
            opacity: .3;
            pointer-events: none;
        }
        /* jssor slider thumbnail navigator skin 01 css */ /*.jssort01-99-66 .p
	    (normal).jssort01-99-66 .p:hover      (normal mouseover).jssort01-99-66 .p.pav        (active).jssort01-99-66 .p.pdn        (mousedown)*/
        .jssort01-99-66 .p {
            position: absolute;
            top: 0;
            left: 0;
            width: 99px;
            height: 130px;
        }

        .jssort01-99-66 .t {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border: none;
        }

        .jssort01-99-66 .w {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        .jssort01-99-66 .c {
            position: absolute;
            top: 0;
            left: 0;
            width: 95px;
            height: 130px;
            border: #000 2px solid;
            box-sizing: content-box;
        }

        .jssort01-99-66 .p:hover .c {
            top: 0px;
            left: 0px;
            width: 97px;
            height: 130px;
            border: #fff 1px solid;
            background-position: 50% 50%;
        }

        .jssort01-99-66 .p.pdn .c {
            background-position: 50% 50%;
            width: 95px;
            height: 130px;
            border: #000 2px solid;
        }

        * html .jssort01-99-66 .c, * html .jssort01-99-66 .pdn .c, * html .jssort01-99-66 .pav .c { /* ie quirks mode adjust */
            width /**/: 99px;
            height /**/: 66px;
        }
    </style>
</body>
</html>

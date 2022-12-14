<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="head.jsp" %>
    <link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="header.css">
</head>
<style>
.hd { width: 100%; height: 50px; position: absolute; top: 0; left: 0; z-index: 999; }

.vs { clear: both; width: 100%; height: 350px; overflow: hidden; }
.vs img { display: block; width: 100%; height: auto; }
.bread { clear: both; width: 100%; height: auto; line-height: 30px; border-bottom:2px solid #eee; }
.bread_fr { width: 1200px; margin: 20px 30px; }
.home { color: #222; }
[name=opt].sel { color: #007fa8; }
.page { clear: both; width: 100%; min-height: 100vh; }
.page:after { content: ""; display: block; clear: both; }
.page_wrap { width: 1200px; margin: auto; }

.content { display: none; }
.content:target { display: block; }
.page_wrap img { display: block; margin: 40px auto; }
.page_tit { padding-top: 1em; font-weight: 600; padding: 50px 0; }
.sub { display: block; width: 100%; height: 80px; text-align: center; }

.map { display: block; margin-bottom: 50px; z-index: 50; }
#map1, #map2, #map3 { width: 100%; max-width: 1120px; padding: 30px; }
.map_tit { display: block; text-decoration: underline; }
.map_con { margin: 20px 0 50px 0; color: #999; }
.map ul { width: 100%; }
.map ul li { display: block; line-height: 3; }
.map_lst { display: block; float: left; width: 120px; font-weight: 600; }
.map_info { display: block; }

.res { display: block; padding-bottom: 85px; }
.res_tit { margin: 60px 0; text-align: center; font-size: 30px; }
.res_con { margin: 0 20px; text-align: right;  font-size: 14px;}
.tab { width: 100%; margin-top: 30px; box-sizing: border-box; font-size: 14px; line-height: 24px; border-collapse: collapse; }
.tab > thead { display: table-header-group; }
.tab > thead > tr { display: table-row; }
.tab > thead > tr > th { height: 20px; padding:10px 1em; border-bottom:1px solid #e4dcd3; background: #002c5f; color: #fff; border-color: #fff; }
.tab > tbody { display: table-row-group; }
.tab > tbody > tr { display: table-row; }
.tab > tbody > tr > th { height: 20px; padding:10px 1em; border: 1px solid #e4dcd3; }

.ft { clear: both; width: 100%; height: 200px; background-color: #1c1b1b; padding-bottom: 50px; }
.ft_wrap { clear: both; width: 1200px; padding: 60px 50px; }
</style>
<script>
$(window).scroll(function(){
    var ht = $(window).height();
    var tp = $(this).scrollTop();
    if(tp>=600){
        $(".hd").css("position","fixed");
    } else {
        $(".hd").css("position","absolute");
    }
});    
</script>
    <link rel="stylesheet" href="footer.css">
    <div class="wrap">
        <header class="hd">
            <%@ include file="nav.jsp" %>
        </header>
        <div class="content" id="page1">
            <figure class="vs">
                <img src="./img/bg5_visual.png" alt=""></img>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">???</a> &gt;
                    <select name="sel1" id="sel1" class="sel">
                        <option>????????????</option>
                        <option value="purchase.html#page1">????????????</option>
                        <option value="network.html#page1">????????????</option>
                        <option value="membership.html#page1">?????????</option>
                        <option value="service.html#page1">????????????</option>
                    </select> &gt;
                    <select name="opt" id="sel1" class="sel">
                        <option>????????????</option>
                        <option value="company.html#page2">?????????</option>
                        <option value="company.html#page3">????????????</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_tit">????????????</h2>
                    <div class="sub">
                        <h3 class="sub_tit">Management Philosophy</h3>
                        <p class="sub_con">????????? ????????? ????????? ????????? ?????? ????????? ????????? ?????????????????? ?????? ????????? ?????? ????????????.</p>
                    </div>
                    <img src="./img/arrowTop.jpg" alt="">
                    <div class="sub">
                        <h3 class="sub_tit">Vision</h3>
                        <p class="sub_con">??????????????? ?????? ????????????</p>
                    </div>
                    <img src="./img/arrowTop.jpg" alt="">
                    <div class="sub">
                        <img src="./img/management.jpg" alt="">
                    </div>
                </div>
            </section>
        </div>
        <div class="content" id="page2">
            <figure class="vs">
                <img src="./img/bg5_visual.png" alt=""></img>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">???</a> &gt;
                    <select name="sel2" id="sel2" class="sel">
                        <option>????????????</option>
                        <option value="purchase.html#page1">????????????</option>
                        <option value="network.html#page1">????????????</option>
                        <option value="membership.html#page1">?????????</option>
                        <option value="service.html#page1">????????????</option>
                    </select> &gt;
                    <select name="opt" id="sel2" class="sel">
                        <option>?????????</option>
                        <option value="company.html#page1">????????????</option>
                        <option value="company.html#page3">????????????</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_tit">?????????</h2>
                    <div class="map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d791.7163275349686!2d127.04203549367101!3d37.46390193836695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca6d4860bd40f%3A0x4471ee6ed8926836!2z7ISc7Jq47Yq567OE7IucIOyEnOy0iOq1rCDtl4zrponroZwgMTI!5e0!3m2!1sko!2skr!4v1666085043689!5m2!1sko!2skr" 
                        width="1200" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        <div id="map1">
                            <h3 class="map_tit">????????? ??????</h3>
                            <p class="map_con">??????????????? ????????? ????????? ????????? ????????? ?????????????????? ????????? ???????????? ?????????, 
                            2000??? 12??? ????????? ?????? ???????????? ??????, ????????? ????????????????????? ???????????? ????????? ????????? ????????????.</p>
                            <ul>
                                <li>
                                    <span class="map_lst">??????</span>
                                    <p class="map_info">??????????????? ????????? ????????? 12</p>
                                </li>
                                <li>
                                    <span class="map_lst">??????</span>
                                    <p class="map_info">02) 3464-1114</p>
                                </li>
                                <li>
                                    <span class="map_lst">FAX</span>
                                    <p class="map_info">02) 3464-3477</p>
                                </li>
                            </ul>
                        </div>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3246.7337040123507!2d129.3808936155907!3d35.53557784555304!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3567cc4a829d46df%3A0x704069914957b6ad!2z7ZiE64yA7J6Q64-Z7LCoIOyauOyCsOqzteyepQ!5e0!3m2!1sko!2skr!4v1666085184934!5m2!1sko!2skr" 
                        width="1200" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        <div id="map2">
                            <h3 class="map_tit">????????????</h3>
                            <p class="map_con">?????? ??????????????? ????????? ???????????? ????????? ?????????????????? ????????? ?????? ?????? ????????? ????????????</p>
                            <ul>
                                <li>
                                    <span class="map_lst">??????</span>
                                    <p class="map_info">??????????????? ?????? ????????? 700 ???????????? ?????? (??????????????? ?????? ????????? 700??????)</p>
                                </li>
                                <li>
                                    <span class="map_lst">??????</span>
                                    <p class="map_info">052) 215-2114</p>
                                </li>
                                <li>
                                    <span class="map_lst">FAX</span>
                                    <p class="map_info">052) 215-2232~3</p>
                                </li>
                            </ul>
                        </div>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3179.719397476953!2d126.81131371562188!3d37.159371155097865!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b1245ed12b5cb%3A0x8b7f1ffd1ad7c8f!2z6rK96riw64-EIO2ZlOyEseyLnCDtmITrjIDsl7DqtazshozroZwgMTUw!5e0!3m2!1sko!2skr!4v1666085257255!5m2!1sko!2skr" 
                        width="1200" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        <div id="map3">
                            <h3 class="map_tit">???????????????</h3>
                            <p class="map_con">??????, ???????????? ???????????? ???????????? ????????? ??????????????? ?????????????????? ?????? ??????????????? ???????????? ????????? ??????, RV, ????????? ????????? ??????????????? ???????????? ????????????. 
                            ????????? ????????? ????????? ????????? ????????? ????????? R&D ?????? ????????? ?????? ????????? ????????? ?????????, ????????? ??????????????? ??????, ?????? ????????? ????????????, ??????????????? ????????? ??????, ?????? ?????? ????????? ??? ?????????????????? ????????? ???????????? ?????????,?????????, ??????????????? ???????????? ???????????? ????????????.</p>
                            <ul>
                                <li>
                                    <span class="map_lst">??????</span>
                                    <p class="map_info">????????? ????????? ?????????????????? 150</p>
                                </li>
                                <li>
                                    <span class="map_lst">??????</span>
                                    <p class="map_info">031) 368-5114</p>
                                </li>
                                <li>
                                    <span class="map_lst">FAX</span>
                                    <p class="map_info">031) 368-5107</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div class="content" id="page3">
            <figure class="vs">
                <img src="./img/bg5_visual.png" alt=""></img>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">???</a> &gt;
                    <select name="sel3" id="sel3" class="sel">
                        <option>????????????</option>
                        <option value="purchase.html#page1">????????????</option>
                        <option value="network.html#page1">????????????</option>
                        <option value="membership.html#page1">?????????</option>
                        <option value="service.html#page1">????????????</option>
                    </select> &gt;
                    <select name="opt" id="sel3" class="sel">
                        <option>????????????</option>
                        <option value="company.html#page1">????????????</option>
                        <option value="company.html#page2">?????????</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_tit">????????????</h2>
                    <div class="res">
                        <h3 class="res_tit">???????????? ??????</h3>
                        <p class="res_con">(?????? : ??????)</p>
                        <table class="tab">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>2021???</th>
                                    <th>2020???</th>
                                    <th>2019???</th>
                                    <th>2018???</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>????????????</th>
                                    <th>727</th>
                                    <th>788</th>
                                    <th>742</th>
                                    <th>721</th>
                                </tr>
                                <tr>
                                    <th>????????????</th>
                                    <th>3,815</th>
                                    <th>2,957</th>
                                    <th>3,684</th>
                                    <th>3,868</th>
                                </tr>
                                <tr>
                                    <th>??????</th>
                                    <th>3,912</th>
                                    <th>3,745</th>
                                    <th>4,426</th>
                                    <th>4,589</th>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="res">
                        <h3 class="res_tit">???????????????</h3>
                        <p class="res_con">(?????? : ?????????)</p>
                        <table class="tab">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>2021???</th>
                                    <th>2020???</th>
                                    <th>2019???</th>
                                    <th>2018???</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>?????????</th>
                                    <th>117,611</th>
                                    <th>103,998</th>
                                    <th>105,746</th>
                                    <th>96,813</th>
                                </tr>
                                <tr>
                                    <th>????????????</th>
                                    <th>6,679</th>
                                    <th>2,395</th>
                                    <th>3,606</th>
                                    <th>2,422</th>
                                </tr>
                                <tr>
                                    <th>????????????</th>
                                    <th>7,960</th>
                                    <th>2,093</th>
                                    <th>4,164</th>
                                    <th>2,530</th>
                                </tr>
                                <tr>
                                    <th>???????????????</th>
                                    <th>5,693</th>
                                    <th>1,925</th>
                                    <th>3,186</th>
                                    <th>1,645</th>
                                </tr>
                                <tr>
                                    <th>???????????????</th>
                                    <th>13.1%</th>
                                    <th>-1.7%</th>
                                    <th>9.2%</th>
                                    <th>0.5%</th>
                                </tr>
                                <tr>
                                    <th>??????????????? ?????????</th>
                                    <th>195.8%</th>
                                    <th>-39.6%</th>
                                    <th>93.7%</th>
                                    <th>-63.8%</th>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>
        </div>
        <script>
        var opt = document.getElementsByClassName("sel");
        for(var i=0;i<opt.length;i++){
            opt[i].addEventListener("change", function(){
                location.href = this.value;
            });
        }
        </script>
        <footer class="ft">
            <%@ include file="foot.jsp" %>
        </footer>
    </div> 
</body>
</html>
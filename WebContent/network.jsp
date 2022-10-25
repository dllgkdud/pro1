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
.page_wrap { display: block; width: 1200px; margin: 0 auto; }

.content { display: none; }
.content:target { display: block; }
.page_tit { padding-top: 1em; }
.place { clear: both; width: 100%; }
.place_lst li { width: 30%; float: left; margin-bottom: 30px; position: relative;}
.place_lst li a { display: block; clear: both; }
.place_lst li a .pic_name { position: absolute; bottom: 50px; left: 35%; z-index: 87; font-size: 18px; background-size: 50%; background-color: #1c1b1b; color: #fff; }

.pic { display: block; width: 100%; height: auto; text-align: center; margin: 30px auto; }

.page_con { display: block; margin: 50px auto; text-align: center; font-weight: 600; }
.acc { clear: both; width: 100%; }
.acc_wrap { display: block; width: 50%; height: auto; float: left; margin-bottom: 50px; position: relative; }
.acc_tit { display: block; clear: both; margin-top: 30px; }
.acc_con { display: block; clear: both; margin-top: 10px; }

.ft { clear: both; width: 100%; height: 200px; background-color: #1c1b1b; padding-bottom: 50px; }
.ft_wrap { clear: both; width: 1200px; padding: 60px 50px; }
</style>
<script>
$(document).ready(function(){
    $(window).scroll(function(){
        var ht = $(window).height();
        var tp = $(this).scrollTop();
        if(tp>=600){
            $(".hd").css("position","fixed");
        } else {
            $(".hd").css("position","absolute");
        }
    });
    $
    $("<ul class='circle_lst lst2'></ul>").insertAfter($(".circle_lst"));
    $lst1_obj = $(".circle_lst li").clone();
    $(".circle_lst.lst2").append($lst1_obj);
});    
</script>
    <link rel="stylesheet" href="footer.css">
<body>
    <div class="wrap">
        <header class="hd">
            <%@ include file="nav.jsp" %>
        </header>
        <div class="content" id="page1">
            <figure class="vs">
                <img src="./img/bg2_visual.png" alt=""></img>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">홈</a> &gt;
                    <select name="sel1" id="sel1" class="sel">
                        <option>네트워크</option>
                        <option value="purchase.html#page1">구매정보</option>
                        <option value="membership.html#page1">멤버십</option>
                        <option value="service.html#page1">고객지원</option>
                        <option value="company.html#page1">회사소개</option>
                    </select> &gt;
                    <select name="opt" id="sel1" class="sel">
                        <option>전시장</option>
                        <option value="network.html#page2">판매/시승</option>
                        <option value="network.html#page3">엑시던트 스페이스</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_tit">전시장</h2>
                    <div class="place">
                        <ul class="place_lst">
                            <li>
                                <a href="">
                                    <div class="pic"><img src="./img/2-1.jpg"></div>
                                    <div class="pic_tit"><span class="pic_name">전주서부지점</span></div>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="pic"><img src="./img/2-2.jpg"></div>
                                    <div class="pic_tit"><span class="pic_name">강남청담지점</span></div>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="pic"><img src="./img/2-3.jpg"></div>
                                    <div class="pic_tit"><span class="pic_name">경주지점</span></div>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="pic"><img src="./img/2-4.jpg"></div>
                                    <div class="pic_tit"><span class="pic_name">상무지점</span></div>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="pic"><img src="./img/2-5.png"></div>
                                    <div class="pic_tit"><span class="pic_name">명지국제지점</span></div>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="pic"><img src="./img/2-6.png"></div>
                                    <div class="pic_tit"><span class="pic_name">올림픽지점</span></div>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="pic"><img src="./img/2-7.png"></div>
                                    <div class="pic_tit"><span class="pic_name">수원시청지점</span></div>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="pic"><img src="./img/2-8.png"></div>
                                    <div class="pic_tit"><span class="pic_name">김포지점</span></div>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="pic"><img src="./img/2-9.png"></div>
                                    <div class="pic_tit"><span class="pic_name">평택지점</span></div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
        </div>
        <div class="content" id="page2">
            <figure class="vs">
                <img src="./img/bg2_visual.png" alt=""></img>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">홈</a> &gt;
                    <select name="sel2" id="sel2" class="sel">
                        <option>네트워크</option>
                        <option value="purchase.html#page1">구매정보</option>
                        <option value="membership.html#page1">멤버십</option>
                        <option value="service.html#page1">고객지원</option>
                        <option value="company.html#page1">회사소개</option>
                    </select> &gt
                    <select name="opt" id="sel2" class="sel">
                        <option>판매/시승</option>
                        <option value="network.html#page1">전시장</option>
                        <option value="network.html#page3">엑시던트 스페이스</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_tit">판매/시승</h2>
                    <div class="pic">
                        <img src="./img/testdriving.png" alt="">
                        <img src="./img/testdriving2.png" alt="">
                    </div>
                </div>
            </section>
        </div>
        <div class="content" id="page3">
            <figure class="vs">
                <img src="./img/bg2_visual.png" alt=""></img>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">홈</a> &gt;
                    <select name="sel3" id="sel3" class="sel">
                        <option>네트워크</option>
                        <option value="purchase.html#page1">구매정보</option>
                        <option value="membership.html#page1">멤버십</option>
                        <option value="service.html#page1">고객지원</option>
                        <option value="company.html#page1">회사소개</option>
                    </select> &gt
                    <select name="opt" id="sel3" class="sel">
                        <option>엑시던트 스페이스</option>
                        <option value="network.html#page1">전시장</option>
                        <option value="network.html#page2">판매/시승</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_tit">엑시던트 스페이스</h2>
                    <p class="page_con">고객들에게 다양한 서비스를 제공하기 위한 상용차 복합 거점 브랜드 ‘엑시언트 스페이스’
                        다양한 상용차와 신기술을 체험할 수 있어 지역 사회의 복합 문화 공간으로 자리 잡고 있습니다.</p>
                    <div class="acc">
                        <div class="acc_wrap" id="acc1">
                            <img src="./img/xcientspace1.jpg" alt="">
                            <h3 class="acc_tit">엑시언트 스페이스 제주 (2020.11)</h3>
                            <p class="acc_con">제주 지역 물류업체 및 지역 발전을 위한 원스톱 거점</p>
                        </div>
                        <div class="acc_wrap" id="acc2">
                            <img src="./img/xcientspace2.jpg" alt="">
                            <h3 class="acc_tit">엑시언트 스페이스 아산 (2019.5)</h3>
                            <p class="acc_con">충청권 상용차 판매/정비/편의 서비스 제공을 위한 공간</p>
                        </div>
                        <div class="acc_wrap" id="acc3">
                            <img src="./img/xcientspace3.jpg" alt="">
                            <h3 class="acc_tit">엑시언트 스페이스 울산 (2017.12)</h3>
                            <p class="acc_con">한국 최대 산업 클러스터인 울산의 상용차 복합 문화 공간</p>
                        </div>
                        <div class="acc_wrap" id="acc4">
                            <img src="./img/xcientspace4.jpg" alt="">
                            <h3 class="acc_tit">엑시언트 스페이스 부산 (2017.11)</h3>
                            <p class="acc_con">동북아 항만 물류 중심 부산의 상용차 특화 거점</p>
                        </div>
                        <div class="acc_wrap" id="acc5">
                            <img src="./img/xcientspace5.jpg" alt="">
                            <h3 class="acc_tit">엑시언트 스페이스 전주 (2017.9)</h3>
                            <p class="acc_con">특장차 맞춤형 콘셉트 기반의 상용차 특화 거점</p>
                        </div>
                        <div class="acc_wrap" id="acc6">
                            <img src="./img/xcientspace6.jpg" alt="">
                            <h3 class="acc_tit">엑시언트 스페이스 제천 (2016.11)</h3>
                            <p class="acc_con">상용차 풀 라인업 전시와 체험을 강조한 복합 거점</p>
                        </div>
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
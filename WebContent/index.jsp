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
    .hd {
        width: 100%;
        height: 50px;
        position: absolute;
        top: 0;
        left: 0;
        z-index: 999;
    }

    .content {
        clear: both;
        width: 100%;
    }

    .vs {
        clear: both;
        width: 100%;
        height: 100vh;
        overflow: hidden;
    }

    .vdo {
        display: block;
        width: 100%;
        height: auto;
    }

    .page {
        clear: both;
        width: 100%;
    }

    .page_wrap {
        width: 1200px;
        margin: 0 auto;
    }

    .page_tit {
        text-align: center;
        font-size: 44px;
        padding-top: 1.4em;
        padding-bottom: 1em;
        letter-spacing: 4px;
    }

    .lst {
        clear: both;
        width: 1200px;
    }

    .lst li {
        margin-bottom: 40px;
    }

    .lst li:after {
        content: "";
        display: block;
        clear: both;
    }

    .lst li.left {
        float: left;
        width: 803px;
        height: 452px;
    }

    .lst li.right {
        float: right;
        width: 350px;
        height: 452px;
        letter-spacing: -.4px;
    }

    .ico_lst {
        clear: both;
        width: 100%;
        overflow: hidden;
    }

    .ico_lst li a {
        display: block;
        background-repeat: no-repeat;
        background-position: 0 center;
        background-size: auto 80%;
        padding-left: 50px;
    }

    .ico_lst li a.ico1 {
        background-image: url("./img/ico_purchase.png");
    }

    .ico_lst li a.ico2 {
        background-image: url("./img/ico_benefit.png");
    }

    .ico_lst li a.ico3 {
        background-image: url("./img/ico3_tiral.png");
    }

    .cate_tit {
        color: #444;
        font-size: 22px;
    }

    .cate_com {
        color: #444;
        font-size: 18px;
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
    }

    #page2 {
        background-color: #f9f9f9;
    }

    .pic_lst {
        clear: both;
        width: 100%;
        padding-bottom: 80px;
    }

    .pic_lst::after {
        content: "";
        display: block;
        clear: both;
    }

    .pic_lst li {
        float: left;
        margin-bottom: 40px;
        position: relative;
    }

    .pic_lst li a {
        display: block;
        width: 360px;
        margin-right: 40px;
        letter-spacing: -.4px;
    }

    .pic_lst li a img {
        display: block;
        width: 400px;
        margin-left: 40px;
        transition-duration: 0.6s;
    }

    .pic_lst li a:hover img {
        margin-left: 0px;
    }

    .pic_lst li a .hv_box {
        width: 360px;
        height: 260px;
        position: absolute;
        top: 10px;
        left: 0;
        z-index: 91;
        transition-duration: 0.6s;
        color: #fff;
        opacity: 0;
        background-color: transparent;
    }

    .pic_lst li a:hover .hv_box {
        opacity: 1;
    }

    .pic_tit {
        font-size: 22px;
        position: absolute;
        top: 0;
        left: 10px;
        color: #444;
    }

    .pic_com {
        font-size: 16px;
        position: absolute;
        top: 30px;
        left: 10px;
        color: #444;
    }

    #page3 {
        background-image: url(./img/hyundai-bts-back.jpg);
        background-repeat: no-repeat;
        background-size: cover;
        background-position: center center;
        height: 100vh;
        overflow: hidden;
    }

    #page3 .page_wrap {
        width: 100%;
    }

    .circle_lst {
        clear: both;
        width: 4000px;
    }

    .circle_lst li {
        float: left;
        width: 180px;
        height: 180px;
        border-radius: 95px;
        background-color: #fff;
        margin: 25px;
        overflow: hidden;
        position: relative;
    }

    .circle_lst.lst2 li {
        float: right;
    }

    .circle_lst li a {
        display: block;
        width: 100%;
        height: 100%;
    }

    .circle_lst li a img {
        display: block;
        width: 110px;
        height: auto;
        position: absolute;
        top: 55%;
        left: 35px;
        z-index: 90;
        margin-top: -30px;
    }

    .ft {
        clear: both;
        width: 100%;
        height: 200px;
        background-color: #1c1b1b;
        padding-bottom: 50px;
    }

    .ft_wrap {
        clear: both;
        width: 1200px;
        padding: 60px 50px;
    }
</style>
<script>
    $(document).ready(function () {
        $(window).scroll(function () {
            var ht = $(window).height();
            var tp = $(this).scrollTop();
            if (tp >= 600) {
                $(".hd").css("position", "fixed");
            } else {
                $(".hd").css("position", "absolute");
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
        <div class="content">
            <figure class="vs">
                <video src="./img/casper.mp4" autoplay muted loop class="vdo"></video>
            </figure>
            <section class="page" id="page1">
                <div class="page_wrap">
                    <h1 class="page_tit">소식</h1>
                    <ul class="lst">
                        <li class="left">
                            <iframe width="803" height="452" src="https://www.youtube.com/embed/iO7UNAYHBZY"
                                title="N | N Universe | 현대자동차" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen></iframe>
                        </li>
                        <li class="right">
                            <ul class="ico_lst">
                                <li>
                                    <a href="" target="vdo2" class="ico1">
                                        <h3 class="cate_tit">신차 구매 혜택</h3>
                                        <p class="cate_com">Hyundai Mobility카드만의 구매 프로그램</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="" target="vdo2" class="ico2">
                                        <h3 class="cate_tit">H데이 이벤트</h3>
                                        <p class="cate_com">가을 맞이 상품 최대 67% 할인, 3일간 진행되는 0원 응모딜까지 만나보세요!</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="" target="vdo2" class="ico3">
                                        <h3 class="cate_tit">캐스퍼 출시 1주년 할인이벤트</h3>
                                        <p class="cate_com">캐스퍼 차량용품 최대 20% 할인!</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </section>
            <section class="page" id="page2">
                <div class="page_wrap">
                    <h1 class="page_tit">BEST</h1>
                    <ul class="pic_lst">
                        <li>
                            <a href="">
                                <img src="./img/avante.png" alt="아반떼" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">아반떼</h3>
                                    <p class="pic_com">Change life</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/grandeur.png" alt="그랜저" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">그랜저</h3>
                                    <p class="pic_com">Redefine success</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/santafe.png" alt="싼타페" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">싼타페</h3>
                                    <p class="pic_com">Family suv</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/palisade.png" alt="팰리세이드" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">팰리세이드</h3>
                                    <p class="pic_com">Spcial place</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/staria-lounge.png" alt="스타리아" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">스타리아</h3>
                                    <p class="pic_com">Safe in your life</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/ioniq6.png" alt="아이오닉6" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">아이오닉6</h3>
                                    <p class="pic_com">Make the world</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/nexo.png" alt="넥쏘" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">넥쏘</h3>
                                    <p class="pic_com">Positive energy</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/casper.png" alt="캐스퍼" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">캐스퍼</h3>
                                    <p class="pic_com">Case by casper</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/universe.png" alt="유니버스" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">유니버스</h3>
                                    <p class="pic_com">Around the world</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </section>
            <section class="page" id="page3">
                <div class="page_wrap">
                    <h1 class="page_tit">COOPERATE</h1>
                    <ul class="circle_lst">
                        <li><a href=""><img src="./img/company-01.png" alt="파트너스01" class="thumb"></a></li>
                        <li><a href=""><img src="./img/company-02.png" alt="파트너스02" class="thumb"></a></li>
                        <li><a href=""><img src="./img/company-03.png" alt="파트너스03" class="thumb"></a></li>
                        <li><a href=""><img src="./img/company-04.png" alt="파트너스04" class="thumb"></a></li>
                        <li><a href=""><img src="./img/company-05.png" alt="파트너스05" class="thumb"></a></li>
                        <li><a href=""><img src="./img/company-06.png" alt="파트너스06" class="thumb"></a></li>
                        <li><a href=""><img src="./img/company-07.png" alt="파트너스07" class="thumb"></a></li>
                        <li><a href=""><img src="./img/company-08.png" alt="파트너스08" class="thumb"></a></li>
                        <li><a href=""><img src="./img/company-09.png" alt="파트너스09" class="thumb"></a></li>
                        <li><a href=""><img src="./img/company-10.png" alt="파트너스10" class="thumb"></a></li>
                        <li><a href=""><img src="./img/company-11.png" alt="파트너스11" class="thumb"></a></li>
                        <li><a href=""><img src="./img/company-12.png" alt="파트너스12" class="thumb"></a></li>
                        <li><a href=""><img src="./img/company-13.png" alt="파트너스13" class="thumb"></a></li>
                        <li><a href=""><img src="./img/company-14.png" alt="파트너스14" class="thumb"></a></li>
                        <li><a href=""><img src="./img/company-15.png" alt="파트너스15" class="thumb"></a></li>
                    </ul>
                </div>
            </section>
        </div>
        <footer class="ft">
			<%@ include file="foot.jsp" %>
        </footer>
    </div>
</body>

</html>
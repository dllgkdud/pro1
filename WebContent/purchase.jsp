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
.page_tit { padding-top: 1em; }
.model { display: block; clear: both; width: 100%; height: auto; }
.model_tit { text-align: center; padding-top: 50px; }
.model_con { margin-bottom: 50px; }
.model_con li.model_lst { display: block; margin: 50px; padding: 10px; height: 220px; border: 3px solid #ddd; }
.model_con li.model_lst a { float: left; width: 400px; height: 214px; background-color: #ddd; }
.model con li.model_lst img{ display: block; width: 100%; height: auto; overflow: hidden; }
.model_sub { float: left; padding-top: 20px; padding-left: 100px; width: 50%; }
.sub_tit { text-overflow: ellipsis; overflow: hidden; white-space: nowrap; font-size: 18px; }
.sub_con { text-overflow: ellipsis; overflow: hidden; white-space: nowrap; padding-top: 10px; color: #666; font-size: 15px; }
.model_info { padding-top: 50px; display: table; width: 100%; }
.model_info li { display: table-cell; width: 20%; text-align: center; border-left: 1px solid #999; }
.model_info li:first-child { border: none; }
.model_data li span { display: block; }
.model_data li strong { display: block; padding-top: 5px; }

.cons { display: block; clear: both; width: 100%; height: auto; }
.cons_wrap { display: block; width: 100%; height: auto; position: relative; }
.cons_wrap #cons1 { float: left; width: 25%; height: auto; text-align: center; }
.cons_wrap #cons2 { float: left; width: 25%; height: auto; text-align: center; }
.cons_wrap #cons3 { float: left; width: 25%; height: auto; text-align: center; }
.cons_wrap #cons4 { float: left; width: 25%; height: auto; text-align: center; }
.cons_step { padding: 80px 0; }
.cons_step img { width: 200px; height: 200px; }
.cons_step span { display: block; padding-top: 10px; line-height: 30px; }
.cons_btn { display: block; }
.cons_btn button { float: right; width: 180px; height: 50px; background-color: #002c5f; font-style: 16px; margin: 80px 500px; }
.cons_btn span { color: #fff; }

.guide { display: block; clear: both; width: 100%; height: auto; }
.guide_wrap { display: block; width: 100%; height: auto; }
.guide_wrap #step1 { float: left; width: 20%; height: auto; text-align: center; }
.guide_wrap #step2 { float: left; width: 20%; height: auto; text-align: center; }
.guide_wrap #step3 { float: left; width: 20%; height: auto; text-align: center; }
.guide_wrap #step4 { float: left; width: 20%; height: auto; text-align: center; }
.guide_wrap #step5 { float: left; width: 20%; height: auto; text-align: center; }
.guide_step { clear: both; padding: 80px 0; position: relative; border-bottom: 1px solid #999; }
.guide_step a { display: block; width: 75px; height: 75px; background-repeat: no-repeat; background-color: #007fa8; }
.guide_step img { width: 70px; height: auto; }
.guide_step .step { display: block; padding: 20px 15px; border-bottom: 1px solid #999; font-size: 18px; }
.guide_step p { width: 100%; margin: 30px auto; text-align: center; font-weight: 800; }
.step_pro { display: block; width: 100%; margin-top: 50px; }
.step_pro ul { text-align: center; }
.step_pro ul li { display: inline-block; margin: 0 80px; font-size: 16px; }
.step_pro ul li .pro_num { display: block; float: left; width: 26px; height: 26px; border-radius: 16px; background-color: #007fa8; color: #fff; margin-right: 10px; }

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
                <img src="./img/bg1_visual.png" alt=""></img>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">홈</a> &gt;
                    <select name="sel1" id="sel1" class="sel">
                        <option>구매정보</option>
                        <option value="network.html#page1">네트워크</option>
                        <option value="membership.html#page1">멤버십</option>
                        <option value="service.html#page1">고객지원</option>
                        <option value="company.html#page1">회사소개</option>
                    </select> &gt;
                    <select name="opt" id="sel1" class="sel">
                        <option>모델</option>
                        <option value="purchase.html#page2">상담신청</option>
                        <option value="purchase.html#page3">가이드</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_tit">모델</h2>
                    <div class="model">
                        <h3 class="model_tit">차종 보기</h3>
                    </div>
                    <div class="model_con">
                        <ul>
                            <li class="model_lst">
                                <a href="">
                                    <div class="model_img"><img src="./img/avante.png" alt=""></div>
                                </a>
                                <div class="model_sub">
                                    <h4 class="sub_tit">AVANTE</h4>
                                    <p class="sub_con">사람들의 생각도 라이프스타일도 빠르게 변화하고 있습니다.<br>
                                    달라진 세상의 모습과 기준만큼 새로운 아반떼도 세상 달라졌습니다.</p>
                                    <div class="model_info">
                                        <ul class="model_data" id="model1">
                                            <li>
                                                <span>가격</span>
                                                <strong>1,866
                                                    <small>만원~</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>연비</span>
                                                <strong>~15.4
                                                    <small>km/l</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>승차정원</span>
                                                <strong>5
                                                    <small>명</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>배기량</span>
                                                <strong>~1,598
                                                    <small>cc</small>
                                                </strong>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="model_lst">
                                <a href="">
                                    <div class="model_img"><img src="./img/sonata.png" alt=""></div>
                                </a>
                                <div class="model_sub">
                                    <h4 class="sub_tit">SONATA</h4>
                                    <p class="sub_con">시간이 지날수록 새로운 가치를 알아가는 당신을 위해,</p>
                                    <div class="model_info">
                                        <ul class="model_data" id="model2">
                                            <li>
                                                <span>가격</span>
                                                <strong>2,592
                                                    <small>만원~</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>연비</span>
                                                <strong>~13.8
                                                    <small>km/l</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>승차정원</span>
                                                <strong>5
                                                    <small>명</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>배기량</span>
                                                <strong>~1,999
                                                    <small>cc</small>
                                                </strong>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="model_lst">
                                <a href="">
                                    <div class="model_img"><img src="./img/grandeur.png" alt=""></div>
                                </a>
                                <div class="model_sub">
                                    <h4 class="sub_tit">GRANDEUR</h4>
                                    <p class="sub_con">기존의 룰을 깨고 새로운 성공의 방정식을 써 내려가는 당신에게,<br>
                                    그랜저는 새로운 성공의 기준을 제시합니다.</p>
                                    <div class="model_info">
                                        <ul class="model_data" id="model3">
                                            <li>
                                                <span>가격</span>
                                                <strong>3,392
                                                    <small>만원~</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>연비</span>
                                                <strong>~11.9
                                                    <small>km/l</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>승차정원</span>
                                                <strong>5
                                                    <small>명</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>배기량</span>
                                                <strong>~3,342
                                                    <small>cc</small>
                                                </strong>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="model_lst">
                                <a href="">
                                    <div class="model_img"><img src="./img/santafe.png" alt=""></div>
                                </a>
                                <div class="model_sub">
                                    <h4 class="sub_tit">SANTA FE</h4>
                                    <p class="sub_con">더욱 안전해진 패밀리 SUV 싼타페와 함께<br>
                                    가족 모두의 라이프스타일도 풍요로워집니다.</p>
                                    <div class="model_info">
                                        <ul class="model_data" id="model4">
                                            <li>
                                                <span>가격</span>
                                                <strong>3,252
                                                    <small>만원~</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>연비</span>
                                                <strong>~14.1
                                                    <small>km/l</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>승차정원</span>
                                                <strong>5/6/7
                                                    <small>명</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>배기량</span>
                                                <strong>~2,497
                                                    <small>cc</small>
                                                </strong>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="model_lst">
                                <a href="">
                                    <div class="model_img"><img src="./img/tucson.png" alt=""></div>
                                </a>
                                <div class="model_sub">
                                    <h4 class="sub_tit">TUCSON</h4>
                                    <p class="sub_con">이동수단을 넘어 일상을 위한 공간으로 더 오래 머물수록<br>
                                    그 가치는 빛이 납니다.</p>
                                    <div class="model_info">
                                        <ul class="model_data" id="model5">
                                            <li>
                                                <span>가격</span>
                                                <strong>2,584
                                                    <small>만원~</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>연비</span>
                                                <strong>~14.8
                                                    <small>km/l</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>승차정원</span>
                                                <strong>5
                                                    <small>명</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>배기량</span>
                                                <strong>~1,998
                                                    <small>cc</small>
                                                </strong>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="model_lst">
                                <a href="">
                                    <div class="model_img"><img src="./img/palisade.png" alt=""></div>
                                </a>
                                <div class="model_sub">
                                    <h4 class="sub_tit">PALISADE</h4>
                                    <p class="sub_con">현대자동차의 플래그십 SUV 팰리세이드와 함께<br>
                                    당신만의 세상을 향한 멋진 여정을 준비하십시오.</p>
                                    <div class="model_info">
                                        <ul class="model_data" id="model6">
                                            <li>
                                                <span>가격</span>
                                                <strong>3,867
                                                    <small>만원~</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>연비</span>
                                                <strong>~12.4
                                                    <small>km/l</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>승차정원</span>
                                                <strong>7/8
                                                    <small>명</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>배기량</span>
                                                <strong>~3,778
                                                    <small>cc</small>
                                                </strong>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="model_lst">
                                <a href="">
                                    <div class="model_img"><img src="./img/staria-lounge.png" alt=""></div>
                                </a>
                                <div class="model_sub">
                                    <h4 class="sub_tit">STARIA Lounge</h4>
                                    <p class="sub_con">Next Mobility Life</p>
                                    <div class="model_info">
                                        <ul class="model_data" id="model7">
                                            <li>
                                                <span>가격</span>
                                                <strong>3,706
                                                    <small>만원~</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>연비</span>
                                                <strong>~10.8
                                                    <small>km/l</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>승차정원</span>
                                                <strong>7~9
                                                    <small>명</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>배기량</span>
                                                <strong>~2,199
                                                    <small>cc</small>
                                                </strong>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="model_lst">
                                <a href="">
                                    <div class="model_img"><img src="./img/ioniq6.png" alt=""></div>
                                </a>
                                <div class="model_sub">
                                    <h4 class="sub_tit">IONIQ 6</h4>
                                    <p class="sub_con">8/22 IONIQ 6 사전계약 개시</p>
                                    <div class="model_info">
                                        <ul class="model_data" id="model8">
                                            <li>
                                                <span>가격</span>
                                                <strong>5,200
                                                    <small>만원~</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>연비</span>
                                                <strong>~6.2
                                                    <small>km/kWh</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>승차정원</span>
                                                <strong>5
                                                    <small>명</small>
                                                </strong>
                                            </li>
                                            <li>
                                                <span>배기량</span>
                                                <strong>-</strong>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>              
            </section>
        </div>
        <div class="content" id="page2">
            <figure class="vs">
                <img src="./img/bg1_visual.png" alt=""></img>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">홈</a> &gt;
                    <select name="sel2" id="sel2" class="sel">
                        <option>구매정보</option>
                        <option value="network.html#page1">네트워크</option>
                        <option value="membership.html#page1">멤버십</option>
                        <option value="service.html#page1">고객지원</option>
                        <option value="company.html#page1">회사소개</option>
                    </select> &gt
                    <select name="opt" id="sel2" class="sel">
                        <option>상담신청</option>
                        <option value="purchase.html#page1">모델</option>
                        <option value="purchase.html#page3">가이드</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_tit">상담신청</h2>
                    <div class="cons">
                        <div class="cons_wrap">
                            <ul class="cons_step">
                                <li id="cons1">
                                    <img src="./img/1-2-1.png" alt="">
                                    <span>01. 차량 선택</span>
                                </li>
                                <li id="cons2">
                                    <img src="./img/1-2-2.png" alt="">
                                    <span>02. 지점/대리점 또는 키마스터 선택</span>
                                </li>
                                <li id="cons3">
                                    <img src="./img/1-2-3.png" alt="">
                                    <span>03. 구매상담 신청완료</span>
                                </li>
                                <li id="cons4">
                                    <img src="./img/1-2-4.png" alt="">
                                    <span>04. 키마스터 안내 전화 및 차량구매 상담진행</span>
                                </li>
                            </ul>
                            <div class="cons_btn">
                                <button type="button">
                                    <a href="./service.html#page2">
                                        <span>구매상담 신청</span>
                                    </a>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div class="content" id="page3">
            <figure class="vs">
                <img src="./img/bg1_visual.png" alt=""></img>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">홈</a> &gt;
                    <select name="sel3" id="sel3" class="sel">
                        <option>구매정보</option>
                        <option value="network.html#page1">네트워크</option>
                        <option value="membership.html#page1">멤버십</option>
                        <option value="service.html#page1">고객지원</option>
                        <option value="company.html#page1">회사소개</option>
                    </select> &gt
                    <select name="opt" id="sel3" class="sel">
                        <option>가이드</option>
                        <option value="purchase.html#page1">모델</option>
                        <option value="purchase.html#page2">상담신청</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_tit">가이드</h2>
                    <div class="guide">
                        <div class="guide_step">
                            <ul class="guide_step" id="step1">
                                <li>
                                    <a><img src="./img/1-3-1.png" alt=""></a>
                                    <span class="step">차량 선택 및 견적</span>
                                    <p class="step_con">현대자동차의 차량은 현대자동차 전시장을 방문하여 구매상담을 받으실 수도 있고, 현대자동차 홈페이지에서 직접 차량을 검색해보신 후 현대자동차 전시장에서 구매상담을 받으실 수도 있습니다.</p>
                                    <div class="step_pro">
                                        <ul>
                                            <li>
                                                <span class="pro_num">1</span>
                                                <span>차량 검색</span>
                                            </li>
                                            <li>
                                                <span class="pro_num">2</span>
                                                <span>견적</span>
                                            </li>
                                            <li>
                                                <span class="pro_num">3</span>
                                                <span>구매상담 신청</span>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                            <ul class="guide_step" id="step2">
                                <li>
                                    <a><img src="./img/1-3-2.png" alt=""></a>
                                    <span class="step">계약</span>
                                    <p class="step_con">계약금과 구비서류를 지참하시고 카마스터와 계약서를 작성합니다.</p>
                                    <div class="step_pro">
                                        <ul>
                                            <li>
                                                <span class="pro_num">1</span>
                                                <span>계약서 작성</span>
                                            </li>
                                            <li>
                                                <span class="pro_num">2</span>
                                                <span>계약금 납부</span>
                                            </li>
                                            <li>
                                                <span class="pro_num">3</span>
                                                <span>구비서류 제출</span>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                            <ul class="guide_step" id="step3">
                                <li>
                                    <a><img src="./img/1-3-3.png" alt=""></a>
                                    <span class="step">결제</span>
                                    <p class="step_con">선택하신 방법에 따라 차량 대금을 납부합니다.</p>
                                    <div class="step_pro">
                                        <ul>
                                            <li>
                                                <span class="pro_num">1</span>
                                                <span>차량 대금 납부 계획</span>
                                            </li>
                                            <li>
                                                <span class="pro_num">2</span>
                                                <span>차량 대금 납부</span>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                            <ul class="guide_step" id="step4">
                                <li>
                                    <a><img src="./img/1-3-4.png" alt=""></a>
                                    <span class="step">차량 배송 및 인수</span>
                                    <p class="step_con">배송 받은 차량을 확인하고 보험에 가입합니다.</p>
                                    <div class="step_pro">
                                        <ul>
                                            <li>
                                                <span class="pro_num">1</span>
                                                <span>차량 출고 방법 선택</span>
                                            </li>
                                            <li>
                                                <span class="pro_num">2</span>
                                                <span>차량 인수 약속</span>
                                            </li>
                                            <li>
                                                <span class="pro_num">3</span>
                                                <span>차량 확인</span>
                                            </li>
                                            <li>
                                                <span class="pro_num">4</span>
                                                <span>보험 가입</span>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                            <ul class="guide_step" id="step5">
                                <li>
                                    <a><img src="./img/1-3-5.png" alt=""></a>
                                    <span class="step">등록</span>
                                    <p class="step_con">임시운행 기간 내에 등록관청에 차량을 등록합니다.</p>
                                    <div class="step_pro">
                                        <ul>
                                            <li>
                                                <span class="pro_num">1</span>
                                                <span>등록 방법 선택</span>
                                            </li>
                                            <li>
                                                <span class="pro_num">2</span>
                                                <span>등록 구비 서류 / 비용준비, 보험가입</span>
                                            </li>
                                            <li>
                                                <span class="pro_num">3</span>
                                                <span>차량 등록</span>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
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
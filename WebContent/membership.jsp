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
.page_con { padding-top: 0.5em; font-weight: 600; }
.mem { display: block; margin: 50px auto; }
.mem_point { display: block; margin: 50px auto; text-align: center; }
.mem_view { display: block; float: left; width: 48%; height: 290px; margin-right: 10px; margin-bottom: 50px; background-color: #f6f3f2; position: relative; background-repeat: no-repeat; white-space: nowrap; }
.mem_view img { display: block; position: absolute; top: 0; right: 0; z-index: 85; }
.mem_view .view_tit { clear: both; position: relative; font-size: 20px; width: 350px; padding: 35px; line-height: 1.5; letter-spacing: -1px; }
.mem_view .view_con { clear: both; position: relative; font-size: 15px; width: 350px; padding-left: 35px; line-height: 1.5; font-weight: 600; }
.point { display: block; clear: both; }
.point button { float: right; margin-right: 400px; margin-bottom: 50px; width: 400px; height: 80px; background-color: #002c5f; }
.point #point_link { color: #fff; font-size: 20px; }

.man { display: block; clear: both; margin: 50px auto; }
.man_wrap { display: block; width: 100%; height: auto; }
.man_sub { display: block; margin: 100px auto; }
.man_con { margin-top: 20px; line-height: 2; color: #666; }
.tab { display: table; width: 100%; border-collapse: collapse; }
.col { display: table-row; color: #fff; }
.col_tit { display: table-cell; text-align: center; background-color: #002c5f; }

.car_wrap { display: block; width: 100%; height: auto; text-align: center; }
.car_tit { display: block; margin: 50px auto; }
.car_con { display: block; font-weight: 600; }
.car_wrap button { display: block; width: 200px; height: 40px; background-color: #002c5f; margin: 50px auto; }
.car_wrap button .car_menu { font-size: 14px; color: #fff; }
#pay1, #pay3 { display: block; width: 100%; height: auto; padding: 100px 0; background-color: #f6f3f2; }
#pay2 { display: block; width: 100%; height: auto; padding: 100px 0; }
.pay { display: block; clear: both; }
.pay .pay_tit { margin-left: 30px; margin-bottom: 30px; }
.pay .pay_sub { margin-left: 30px; margin-bottom: 20px; }
.pay .pay_con { margin-left: 30px; margin-bottom: 20px; color: #666; font-size: 14px; line-height: 2; }
.pay img { margin-left: 30px; }

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
<body>
    <div class="wrap">
        <header class="hd">
            <%@ include file="nav.jsp" %>
        </header>
        <div class="content" id="page1">
            <figure class="vs">
                <img src="./img/bg3_visual.png" alt=""></img>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.jsp" class="home">홈</a> &gt;
                    <select name="sel1" id="sel1" class="sel">
                        <option>멤버십</option>
                        <option value="purchase.jsp#page1">구매정보</option>
                        <option value="network.jsp#page1">네트워크</option>
                        <option value="service.jsp#page1">고객지원</option>
                        <option value="company.jsp#page1">회사소개</option>
                    </select> &gt;
                    <select name="opt" id="sel1" class="sel">
                        <option>블루멤버스</option>
                        <option value="membership.jsp#page2">차량관리</option>
                        <option value="membership.jsp#page3">카페이</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_tit">블루멤버스</h2>
                    <p class="page_con">블루멤버스는 2007년부터 시작된 현대자동차 오너를 위한 고객 서비스 입니다.</p>
                    <div class="mem">
                        <h3 class="mem_point">포인트 해택</h3>
                        <div class="mem_view" id="mem1">
                            <img src="./img/3-1.png" alt="">
                            <h4 class="view_tit">차종과 구매횟수에 따라<br>블루멤버스 포인트 적립받고!</h4>
                            <p class="view_con">구매횟수에 따라 높아지는 포인트 적립!<br>렌트/리스를 이용해도 포인트 적립!<br>현대자동차를 소유 또는 이용하는 모든<br>블루맴버스 고객은 포인트 혜택을 누릴 수 있습니다.</p>
                        </div>
                        <div class="mem_view" id="mem2">
                            <img src="./img/3-2.png" alt="">
                            <h4 class="view_tit">블루멤버스 포인트로 차량 유지 비용 절감하고!</h4>
                            <p class="view_con">차량 운행을 위해 매월 발생하는 주유비용도!<br>안전한 차량운행을 위한 엔진오일 교환과 차량점검도!<br>블루멤버스 포인트로 할인 받고 차량 유지비용을<br>절감할 수 있습니다.</p>
                        </div>
                        <div class="mem_view" id="mem3">
                            <img src="./img/3-3.png" alt="">
                            <h4 class="view_tit">블루멤버스 포인트로 다양한<br>일상 제휴처에서 즐거움을 누리고!</h4>
                            <p class="view_con">지친 일상에서 벗어나 즐거움을 누리고 싶을 때,<br>가족들과 함께 행복한 하루를 보내고 싶을 때<br>언제라도 블루멤버스 생활 제휴처와 함께라면<br>포인트로 즐거움을 누릴 수 있습니다.</p>
                        </div>
                        <div class="mem_view" id="mem4">
                            <img src="./img/3-4.png" alt="">
                            <h4 class="view_tit">자동차 재구매를 생각할 때도<br>블루멤버스 포인트가 힘이 되고!</h4>
                            <p class="view_con">중고차를 매도할 때도 포인트를 적립받고.<br>신차를 구매할 때 최대 400만 포인트까지 할인받기!<br>그리고 구매회차에 따라 다시 적립되는<br>더 높아진 블루멤버스 포인트!</p>
                        </div>
                    </div>
                    <div class="point">
                        <button><a href="https://shop.hyundai.com/?utm_source=hyundaicom" id="point_link">현대 Shop 바로가기</a></button>
                    </div>
                </div>
            </section>
        </div>
        <div class="content" id="page2">
            <figure class="vs">
                <img src="./img/bg3_visual.png" alt=""></img>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.jsp" class="home">홈</a> &gt;
                    <select name="sel2" id="sel2" class="sel">
                        <option>멤버십</option>
                        <option value="purchase.jsp#page1">구매정보</option>
                        <option value="network.jsp#page1">네트워크</option>
                        <option value="service.jsp#page1">고객지원</option>
                        <option value="company.jsp#page1">회사소개</option>
                    </select> &gt
                    <select name="opt" id="sel2" class="sel">
                        <option>차량관리</option>
                        <option value="membership.jsp#page1">블루멤버스</option>
                        <option value="membership.jsp#page3">카페이</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_tit">차량관리</h2>
                    <div class="man">
                        <div class="man_wrap">
                            <div class="man_sub" id="man1">
                                <h3 class="man_tit">1. 서비스 개요</h3>
                                <p class="man_con">고객님의 차량이 최상의 상태를 유지할 수 있도록 무상점검을 제공합니다.<br>
                                (승용 : 8년 8회 제공 / 상용 : 3년간 총 7회차 제공)</p>
                            </div>
                            <div class="man_sub" id="man2">
                                <h3 class="man_tit">2. 서비스 대상</h3>
                                <ul class="tab">
                                    <li class="col">
                                        <span class="col_tit" >승용</span>
                                        <span class="col_tit">상용</span>
                                    </li>
                                    <li>
                                        <span>당사 국내 판매 차량 보유 블루멤버스 회원

                                            · 차종 : 승용, SUV, MPV(스타리아), 소형상용(포터)차량
                                            · 기간 : 신차 출고월 기준 연 1회 8년간 제공 (총8회)
                                        </span>
                                        <span>당사 국내 판매 차량 보유 블루멤버스 회원 ('21.10.05 이후 제작증 발급차량)

                                            · 차종 : 디젤엔진 트럭 4개 차종 (마이티, 파비스, 뉴파워트럭, 엑시언트)
                                            · 기간 : 신차 출고월 기준 3년간 총 7회차 제공
                                            ※ CNG, FCEV 등 제외
                                        </span>
                                    </li>
                                </ul>
                            </div>
                            <div class="man_sub" id="man3">
                                <h3 class="man_tit">3. 서비스 내용</h3>
                                <ul class="tab">
                                    <li class="col">
                                        <span class="col_tit">승용</span>
                                        <span class="col_tit">상용</span>
                                    </li>
                                    <li>
                                        <span>차량 기본 점검 및 에탄올 워셔액

                                            · 1~6회차 엔진룸/하부/일반 점검 15종 및 에탄올 워셔액
                                            · 7~8회차 엔진룸/하부/일반 점검 15종
                                        <span>차량 기본 점검　

                                            · 1~2회차 엔진룸/하부/일반 점검 11종
                                            · 3~7회차 엔진룸/하부/일반 점검 13종
                                        </span>
                                    </li>
                                </ul>
                            </div>
                            <div class="man_sub" id="man4">
                                <h3 class="man_tit">4. 점검 대상 기간 안내</h3>
                                <ul class="tab">
                                    <li class="col">
                                        <span class="col_tit">승용</span>
                                        <span class="col_tit">상용</span>
                                    </li>
                                    <li>
                                        <span>신차(제작증발급일자) 출고 월 기준 연 1회 8년간 제공

                                            [예시 : ‘21년 2월 20일 출고 차량]
                                            · 1회차 : ’21년 2월 20일 ~ ’22년 2월 28일
                                            · 2~8회차 : 각 회차 해당년도 3월 1일 ~ 익년 2월 28일
                                        </span>
                                    </li>
                                    <li>
                                        <span>신차(제작증발급일자) 출고 월 기준 3년간 7회차 제공　

                                            · 1~2회차 : 출고 후 6개월까지
                                            · 3~7회차 : 출고 6개월 이후 3년까지
                                        </span>
                                    </li>
                                </ul>
                            </div>
                            <div class="man_sub" id="man5">
                                <h3 class="man_tit">5. 유의사항</h3>
                                <p class="man_con">최종 블루기본점검 시행일 기준 한달(30일) 간 다음 차수 점검은 불가합니다.<br>
                                차량 점검 후 이상 발견 시 보증수리를 제외한 항목은 고객님이 원하시는 경우 유상수리됩니다.<br>
                                서비스 대상과 내용은 당사 정책에 따라 고지없이 변경될 수 있습니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div class="content" id="page3">
            <figure class="vs">
                <img src="./img/bg3_visual.png" alt=""></img>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.jsp" class="home">홈</a> &gt;
                    <select name="sel3" id="sel3" class="sel">
                        <option>멤버십</option>
                        <option value="purchase.jsp#page1">구매정보</option>
                        <option value="network.jsp#page1">네트워크</option>
                        <option value="service.jsp#page1">고객지원</option>
                        <option value="company.jsp#page1">회사소개</option>
                    </select> &gt
                    <select name="opt" id="sel3" class="sel">
                        <option>카페이</option>
                        <option value="membership.jsp#page1">블루멤버스</option>
                        <option value="membership.jsp#page2">차량관리</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_tit">카페이</h2>
                    <div class="car">
                        <div class="car_wrap">
                            <h3 class="car_tit">Hyundai CarPay</h3>
                            <p class="car_con">현대 카페이는 내비게이션 화면을 통해 주유, 주차 제휴 가맹점에서 실물 카드 없이 편리하게 결제할 수 있는 현대자동차의 간편 결제 서비스입니다.</p>
                            <button><a href="http://webmanual.hyundai.com/STD_GEN5W/AVNT/KOR/Korean/013_Hyundaicarpay_basic.html" class="car_menu">현대 카페이 메뉴얼 확인</a></button>
                        </div>
                    </div>
                    <div class="pay" id="pay1">
                        <h3 class="pay_tit">주유 요금 결제</h3>
                        <h4 class="pay_sub">내비게이션 화면 터치로 주유 요금을 결제하고 포인트 사용/적립까지 한 번에 하세요.</h4>
                        <p class="pay_con">더 이상 주유하실 때마다 번거롭게 결제 카드와 멤버십 카드를 챙기실 필요 없습니다.<br>
                        간단한 내비게이션 화면 터치만으로 포인트를 사용, 적립해서 간편하게 결제하세요.</p>
                        <img src="./img/carpay1.jpg" alt="">
                    </div>
                    <div class="pay" id="pay2">
                        <h3 class="pay_tit">주차 요금 결제</h3>
                        <h4 class="pay_sub">주차 요금을 차량 안에서 쉽고 빠르게 정산하고 바로 출차 하세요.</h4>
                        <p class="pay_con">주차 요금 사전 정산을 위해 긴 줄을 서거나 정산소에 카드를 제출하기 위해 차량을 바짝 대지 않으셔도 됩니다.<br>
                        주차 후 차량에서 시동만 걸어 주차 요금을 결제하세요.</p>
                        <img src="./img/carpay2.jpg" alt="">
                    </div>
                    <div class="pay" id="pay3">
                        <h3 class="pay_tit">결제 카드, 멤버십 등록</h3>
                        <h4 class="pay_sub">현대 카페이 앱에서 카드와 멤버십을 손쉽게 등록하세요.</h4>
                        <p class="pay_con">현대 카페이 앱에서 카드와 멤버십을 등록하면, 차량 내비게이션 화면에서 등록하신 멤버십과 카드를 확인하실 수 있습니다.</p>
                        <img src="./img/carpay3.jpg" alt="">
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="head.jsp"%>
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
.faq { display: block; clear: both; width: 100%; height: auto; }
.faq_wrap { display: block; margin: 50px auto; border-bottom: 1px solid #999; padding-bottom: 230px; }
.faq_tit { display: block; clear: both; margin-left: 20px; }
.top_lst { display: block; width: 100%; height: auto; }
.faq_con { float: left; width: 18%; height: 150px; border: 1px solid #999; margin-left: 20px; margin-top: 50px; }
.faq_con:hover { width: 18%; height: 148px; border: 2px solid #007fa8; }
.faq_con .top_tit { display: block; margin: 20px; font-size: 18px; font-weight: 600; color: #007fa8; }
.faq_con .top_qna { display: block; margin: 20px; font-size: 12px; line-height: 1.5; font-weight: 600; color: #444; }
.btn1_wrap { clear: both; width: 90%; text-align: center; }
.btn1_wrap > a { margin: 50px ; border: 2px solid #002c5f; background-color:#002c5f; color: #fff; 
padding: 10px 30px; line-height: 25px; font-size: 16px; letter-spacing: -1px; font-weight: 600; }
.btn1_wrap > a:hover { background-color:#007fa8; }

.not { display: block; clear: both; position: relative; }
.not_wrap { display: block; margin: 50px auto; position: relative; }
.not_tit { display: block; border: 1px solid #999; padding: 30px; line-height: 2; font-size: 16px; letter-spacing: -1px; } 
.not_warn { display: block; padding: 20px 30px; font-size: 15px; text-decoration: underline; letter-spacing: -1px; }
.not_ask { display: block; padding: 0 30px; letter-spacing: -1px; }
.req { display: block; float: right; margin: 0; }
.req:before { content: "* "; clear: both; white-space: nowrap; color: #c50000; letter-spacing: -1px; }
.not_con { display: block; clear: both; position: relative; }
.not_con table { width: 60%; height: auto; border: 3px solid #007fa8; margin: 100px auto; padding: 50px; }
.not_con table td > textarea { resize: none; }
.not_con table tr th:after { content: "* "; clear: both; white-space: nowrap; color: #c50000; }
.not_btn { position: absolute; bottom: -95px; right: 380px; z-index: 85; }
.btn2_wrap { clear: both; display: block; margin: 20px; }
[type=reset] { width: 180px; height: 55px; margin-right: 20px; font-size: 16px; color: #fff; letter-spacing: -1px; font-weight: 600; background-color: #888; border: 1px solid #888; cursor: pointer; }
[type=submit] { width: 180px; height: 55px; margin-left: 20px; font-size: 16px; color: #fff; letter-spacing: -1px; font-weight: 600; background-color: #002c5f; border: 1px solid #002c5f; cursor: pointer; }

.board { display: block; clear: both; width: 100%; max-width: 1120px; margin: 20px auto; padding: 60px 40px; }
.board_wrap { margin-bottom: 50px; position: relative; }
.board_wrap li { padding: 50px 0; border-bottom: 1px solid #999; }
.board_list { padding: 0; }
.board_th { font-size: 20px; color: #222; padding: 1em 0; font-weight: 600; letter-spacing: -1.5px; }
.board_tb { font-size: 16px; color: #626262; padding-bottom: 10px; letter-spacing: -1px; }
.board_date { font-size: 14px; color: #626262; padding: 1em 0; font-weight: 600; letter-spacing: 0.5px; }

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
                <img src="./img/bg4_visual.png" alt=""></img>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.jsp" class="home">홈</a> &gt;
                    <select name="sel1" id="sel1" class="sel">
                        <option>고객지원</option>
                        <option value="purchase.jsp#page1">구매정보</option>
                        <option value="network.jsp#page1">네트워크</option>
                        <option value="membership.jsp#page1">멤버십</option>
                        <option value="company.jsp#page1">회사소개</option>
                    </select> &gt;
                    <select name="opt" id="sel1" class="sel">
                        <option>FAQ</option>
                        <option value="service.jsp#page2">문의</option>
                        <option value="service.jsp#page3">공지사항</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_tit">FAQ</h2>
                    <section class="faq">
                        <div class="faq_wrap">
                            <h3 class="faq_tit">자주하는 질문 TOP5</h3>
                            <div class="faq_top">
                                <ul class="top_lst">
                                    <li class="faq_con">
                                        <a href="">
                                            <span class="top_tit">Q 01</span>
                                            <p class="top_qna">차량계약 후 해지 시 계약금은 환불 받을수 있습니까?</p>
                                        </a>
                                    </li>
                                    <li class="faq_con">
                                        <a href="">
                                            <span class="top_tit">Q 02</span>
                                            <p class="top_qna">장애인차량 구입조건에 대해 알고 싶습니다.</p>
                                        </a>
                                    </li>
                                    <li class="faq_con">
                                        <a href="">
                                            <span class="top_tit">Q 03</span>
                                            <p class="top_qna">차량구입시 신용카드는 얼마까지 이용할 수 있나요?</p>
                                        </a>
                                    </li>
                                    <li class="faq_con">
                                        <a href="">
                                            <span class="top_tit">Q 04</span>
                                            <p class="top_qna">차량계약 후 예상납기일에 대해 알 수 있나요?</p>
                                        </a>
                                    </li>
                                    <li class="faq_con">
                                        <a href="">
                                            <span class="top_tit">Q 05</span>
                                            <p class="top_qna">세이브오토 이용에 관해 알고 싶습니다.</p>
                                        </a>
                                    </li>
                                </ul>
                            </div>  
                        </div>
                    </section>
                    <div class="btn1_wrap">
	                			<a href="faq.jsp">FAQ 게시판</a>
	                </div>
                </div>
            </section>
        </div>
        <div class="content" id="page2">
            <figure class="vs">
                <img src="./img/bg4_visual.png" alt=""></img>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.jsp" class="home">홈</a> &gt;
                    <select name="sel2" id="sel2" class="sel">
                        <option>고객지원</option>
                        <option value="purchase.jsp#page1">구매정보</option>
                        <option value="network.jsp#page1">네트워크</option>
                        <option value="membership.jsp#page1">멤버십</option>
                        <option value="company.jsp#page1">회사소개</option>
                    </select> &gt;
                    <select name="opt" id="sel1" class="sel">
                        <option>문의</option>
                        <option value="service.jsp#page1">FAQ</option>
                        <option value="service.jsp#page3">공지사항</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_tit">문의</h2>
                    <div class="not">
                        <div class="not_wrap">
                            <p class="not_tit">
                            ※ 고객님의 소중한 정보 보호를 위해 로그인은 30분간 유지되며, 이 후 자동으로 로그아웃 되어 1:1문의를 작성하실 수 없습니다.<br>
                            ※ 고객님의 문의 관련 정보는 접수일 기준 1년간 보관되며, 기간 만료 후 자동 폐기됩니다.<br>
                            ※ 1:1 문의를 통한 전화상담 요청은 불가하오니 이점 양해하여 주시기 바랍니다.<br>
                            </p>
                            <p class="not_warn" id="not_tit">
                            ※ 문의 내용 중 욕설, 폭언, 위협, 허위사실 등이 포함도리 경우 모욕, 협박, 명예훼손 등으로 간주하여 답변이 제외될 수 있으며, 관련 법규에 의거 처벌될 수 있습니다.
                            </p>
                            <p class="not_ask">문의 사항을 상세히 작성해주세요.</p>
                            <small class="req">입력 항목</small>
                        </div>
                        <div class="not_con">
                            <table>
                                <tbody>
                                    <tr>
                                        <th><label for="name">이름</label></th>
                                        <td><input type="text" id="name" pattern="[가-힣a-zA-Z]"></td>
                                    </tr>
                                    <tr>
                                        <th><label for="email">이메일</label></th>
                                        <td><input type="eamil" id="email"></td>
                                    </tr>
                                    <tr>
                                        <th><label for="title">제목</label></th>
                                        <td><input type="text" id="title" required></td>
                                    </tr>
                                    <tr>
                                        <th><label for="text">상담내용</label></th>
                                        <td><textarea name="text" id="text" cols="50" rows="10"></textarea></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <section class="not_btn">
                            <div class="btn2_wrap">
                                <a><input type="reset" value="취소"></a>
                                <a href="qna.jsp"><input type="submit" value="등록"></a>
                            </div>
                        </section>
                    </div>
                </div>
            </section>
        </div>
        <div class="content" id="page3">
            <figure class="vs">
                <img src="./img/bg4_visual.png" alt=""></img>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.jsp" class="home">홈</a> &gt;
                    <select name="sel3" id="sel3" class="sel">
                        <option>고객지원</option>
                        <option value="purchase.jsp#page1">구매정보</option>
                        <option value="network.jsp#page1">네트워크</option>
                        <option value="membership.jsp#page1">멤버십</option>
                        <option value="company.jsp#page1">회사소개</option>
                    </select> &gt;
                    <select name="opt" id="sel3" class="sel">
                        <option>공지사항</option>
                        <option value="service.jsp#page1">FAQ</option>
                        <option value="service.jsp#page2">문의</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_tit">공지사항</h2>
                    <div class="board">
                        <ul class="board_wrap">
                            <li>
                                <div class="borad_list">
                                    <p class="board_th">제휴/위탁 업체 사명 변경 관련 개인정보 처리방침과 이용약관 개정</p>
                                    <p class="board_tb">안녕하세요. 현대자동차입니다.
                                        항상 현대자동차를 아껴주시고 관심을 가져주시는 회원 여러분께 감사드립니다.
                                        현대자동차 개인정보 처리방침(차량구매, 정비고객) 외 4개의 개인정보 처리방침과 이용약관이 아래와 같이 변경됨을 알려드립니다.</p>
                                    <p class="board_date">2022.10.14</p>
                                </div>
                            </li>
                            <li>
                                <div class="borad_list">
                                    <p class="board_th">캐스퍼 온라인 세일즈 지원 대행사 모집 공고</p>
                                    <p class="board_tb">안녕하세요. 현대자동차입니다. 캐스퍼 온라인 세일즈 지원을 대행할 운영사를 모집합니다. 희망 업체에서는 아래 내용을 참조하여 신청해주시기 바랍니다.</p>
                                    <p class="board_date">2022.09.22</p>
                                </div>
                            </li>
                            <li>
                                <div class="borad_list">
                                    <p class="board_th">2022년 현대자동차 국내 프로모션(행사) 부문 협력업체 모집</p>
                                    <p class="board_tb">현대자동차에서는 국내 프로모션 활동 및 각종 대고객 이벤트 행사를 효과적으로 수행(대행)할 역량있는 협력업체를 모집하오니 희망 업체에서는 소정의 절차에 따라 신청/접수하여 주시기 바랍니다.</p>
                                    <p class="board_date">2022.09.21</p>
                                </div>
                            </li>
                            <li>
                                <div class="borad_list">
                                    <p class="board_th">블루멤버스 제휴서비스 종료 안내 (하나투어)</p>
                                    <p class="board_tb">안녕하세요. 블루멤버스입니다. 항상 현대자동차를 사랑해 주시는 회원 여러분께 감사드립니다. 블루멤버스의 서비스가 아래와 같이 변경되어 회원 여러분께 안내드립니다.</p>
                                    <p class="board_date">2022.09.20</p>
                                </div>
                            </li>
                            <li>
                                <div class="borad_list">
                                    <p class="board_th">현대 카페이 위치기반서비스 이용약관 개정 공지</p>
                                    <p class="board_tb">안녕하세요. 현대자동차입니다. 항상 현대자동차를 아껴주시고 관심을 가져주시는 회원 여러분께 감사드립니다. 현대 카페이 위치기반서비스 이용약관이 아래와 같이 개정됨을 알려드립니다.</p>
                                    <p class="board_date">2022.09.15</p>
                                </div>
                            </li>
                            <li>
                                <div class="borad_list">
                                    <p class="board_th">블루링크 위치 공유 서비스 이용불가 안내</p>
                                    <p class="board_tb">안녕하세요 블루링크입니다. 현대자동차를 사랑해주시는 고객 여러분께 감사드립니다. 시스템 개선 작업으로 인하여, 차량 관리 서비스의 이용이 일시적으로 불가합니다.</p>
                                    <p class="board_date">2022.09.15</p>
                                </div>
                            </li>
                            <li>
                                <div class="borad_list">
                                    <p class="board_th">캐스퍼 온라인 개인정보 처리방침 개정</p>
                                    <p class="board_tb">안녕하세요. 현대자동차입니다. 현대자동차를 사랑해주시고 아껴주시는 회원 여러분께 감사드립니다. 캐스퍼 온라인 개인정보 처리방침이 아래와 같이 변경됨을 알려드립니다.</p>
                                    <p class="board_date">2022.09.14</p>
                                </div>
                            </li>
                            <li>
                                <div class="borad_list">
                                    <p class="board_th">블루링크 개인정보 처리방침 개정</p>
                                    <p class="board_tb">안녕하세요. 블루링크입니다. 현대자동차를 사랑해주시고 아껴주시는 회원 여러분께 감사드립니다. 블루링크 개인정보 처리방침이 아래와 같이 변경됨을 알려드립니다.</p>
                                    <p class="board_date">2022.09.08</p>
                                </div>
                            </li>
                            <li>
                                <div class="borad_list">
                                    <p class="board_th">디지털 키 개인정보 처리방침, 위치기반 서비스 이용약관 개정</p>
                                    <p class="board_tb">안녕하세요. 현대자동차입니다. 항상 현대자동차를 아껴주시고 관심을 가져주시는 회원 여러분께 감사드립니다. 디지털 키 개인정보 처리방침 및 위치기반서비스 이용약관이 아래와 같이 변경됨을 알려드립니다.</p>
                                    <p class="board_date">2022.09.07</p>
                                </div>
                            </li>
                            <li>
                                <div class="borad_list">
                                    <p class="board_th">블루멤버스 제휴서비스 종료 안내 (삼성화재 다이렉트 운전자보험)</p>
                                    <p class="board_tb">안녕하세요. 블루멤버스입니다. 항상 현대자동차를 사랑해 주시는 회원 여러분께 감사드립니다. 블루멤버스의 서비스가 아래와 같이 변경되어 회원 여러분께 안내드립니다.</p>
                                    <p class="board_date">2022.08.29</p>
                                </div>
                            </li>
                        </ul>
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
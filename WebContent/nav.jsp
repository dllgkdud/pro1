<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
	String email = (String) session.getAttribute("email");
	String name = (String) session.getAttribute("name");
%>
<div class="hd_wrap">
	<a href="" class="logo"><img src="./img/logo.png" alt="메인 바로가기"></a>
	<nav class="tnb">
	<%
		if(id!=null && id.equals("admin")){
	%>
		<div>
			<a href="memList.jsp">회원관리</a>
	        <a href="boradList.jsp">게시판관리</a>
	        <a href="logout.jsp">로그아웃</a>
	    </div>
	<%
		} else if(id!=null) {
	%>
		<div>
			<span class="ip_print"><%=id %>님</span>
			<a href="logout.jsp">로그아웃</a>
	        <a href="memInfo.jsp">회원정보</a>
	    </div>
	<%
		} else {
	%>
		<div>
			<a href="login.jsp">로그인</a>
	        <a href="term.jsp">회원가입</a>
	    </div>
	<%
		}
	%>
   	</nav>
   	<nav class="gnb">
		<ul>
			<li class="menu1">
				<a href="" class="dp1">구매정보</a>
				<ul class="sub">
					<li><a href="purchase.jsp#page1">모델</a></li>
					<li><a href="purchase.jsp#page2">상담신청</a></li>
					<li><a href="purchase.jsp#page3">가이드</a></li>
               	</ul>
           	</li>
           	<li class="menu2">
       			<a href="" class="dp1">네트워크</a>
               	<ul class="sub">
					<li><a href="network.jsp#page1">전시장</a></li>
					<li><a href="network.jsp#page2">판매/시승</a></li>
					<li><a href="network.jsp#page3">엑시던트 스페이스</a></li>
               	</ul>
         	</li>
            <li class="menu3">
				<a href="" class="dp1">멤버십</a>
				<ul class="sub">
					<li><a href="membership.jsp#page1">블루멤버스</a></li>
                       	<li><a href="membership.jsp#page2">차량관리</a></li>
                       	<li><a href="membership.jsp#page3">카페이</a></li>
               	</ul>
           	</li>
           	<li class="menu4">
               	<a href="" class="dp1">고객지원</a>
               	<ul class="sub">
                   	<li><a href="service.jsp#page1">FAQ</a></li>
                   	<li><a href="service.jsp#page2">문의</a></li>
                   	<li><a href="service.jsp#page3">공지사항</a></li>
               	</ul>
           	</li>
           	<li class="menu5">
               	<a href="" class="dp1">회사소개</a>
               	<ul class="sub">
                   	<li><a href="company.jsp#page1">기업이념</a></li>
                  	<li><a href="company.jsp#page2">사업망</a></li>
                   	<li><a href="company.jsp#page3">판매실적</a></li>
				</ul>
			</li>
		</ul>
	</nav>
</div>
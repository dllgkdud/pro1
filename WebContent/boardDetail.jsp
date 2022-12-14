<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	int no = Integer.parseInt(request.getParameter("no"));
	String bid = (String) session.getAttribute("id");
	String author = "";
%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="head.jsp" %>
	<link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="header.css">
</head>
<style>
.hd { width: 100%; height: 50px; position: absolute; top: 0; left: 0; z-index: 999; }
.content { display: block; }
.vs { clear: both; width: 100%; height: 350px; overflow: hidden; }
.vs img { display: block; width: 100%; height: auto; }
.bread { clear: both; width: 100%; height: auto; }
.bread_fr { width: 1200px; margin: 20px 30px; }
.home { color: #222; }
.sel { color: #007fa8; }
.page { clear: both; width: 100%; min-height: 100vh; }
.page:after { content: ""; display: block; clear: both; }
.page_wrap { width: 1200px; margin: auto; }
.page_tit { margin: 50px; }
.list { display: block; width: 1000px; height: 500px; margin: 50px auto; }
.list_wrap { display: table; width: 800px; margin: 40px auto; margin-bottom: 200px; border-collapse: collapse; }
.list_wrap > tbody { height: 150px; }
.lst_tr { display: table-row; }
.lst_tr th { display: table-cell; width: 150px; height: 40px; border-bottom: 2px solid #002c5f; border-top: 2px solid #002c5f; background-color: #002c5f; color: #fff; }
.lst_tr td { display: table-cell; min-widht: 200px; height: 40px; border: 1px solid #999; padding-left: 1em;  }
.lst_tr td > a { color: #888; }
.btn_wrap { clear: both; width: 100%; margin-left: 10px; text-align: center; }
.btn_wrap > a { width: 400px; height: 40px; margin: 50px ; border: 2px solid #002c5f; background-color:#002c5f; color: #fff; 
padding: 10px 30px; line-height: 25px; font-size: 16px; letter-spacing: -1px; font-weight: 600; }
.btn_wrap > a:nth-child(2), .btn_wrap > a:last-child { width: 400px; height: 40px; margin: 50px ; border: 2px solid #888; background-color:#888; color: #fff; 
padding: 10px 30px; line-height: 25px; font-size: 16px; letter-spacing: -1px; font-weight: 600; }
.btn_wrap > a:hover { background-color:#007fa8; }
.ft { clear: both; width: 100%; height: 200px; background-color: #1c1b1b; padding-bottom: 50px; }
.ft_wrap { clear: both; width: 1200px; padding: 60px 50px; }
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
<%@ include file = "connectionPool.conf" %>
<%		
		//sql에서 처리할 데이터의 조건 기술
		sql="select a.no no, a.title tit, a.content cont, b.name nam, a.author aut, to_char(a.resdate, 'yyyy-MM-dd') res from board1 a inner join member1 b on a.author=b.id where a.no=?";
		
		//db에서 출력할 항목을 선언
		pstmt = con.prepareStatement(sql);
		
		//sql에서 ?표시를 대체할 숫자를 표기
		pstmt.setInt(1, no);
		
		//처리된 데이터의 저장방식을 선언
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			author = rs.getString("aut");
%>
	<div class="wrap">
		<header class="hd">
            <%@ include file="nav.jsp" %>
        </header>
        <div class="content">
            <figure class="vs">
                <img src="./img/bg4_visual.png" alt=""></img>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.jsp" class="home">홈</a> &gt;
                    <span class="sel">상세글</span>
                </div>
            </div>
            <section class="page">
	            <div class="page_wrap">
	                <h2 class="page_tit">상세글</h2>
                	<div class="list">
                		<table class="list_wrap">
               				<tr class="lst_tr">
               					<th>번호</th>
               					<td><%=rs.getInt("no") %></td>
               				</tr>
               				<tr class="lst_tr">
               					<th>제목</th>
               					<td><%=rs.getString("tit") %></td>
               				</tr>
               				<tr class="lst_tr">
               					<th>내용</th>
               					<td><%=rs.getString("cont") %></td>
               				</tr>
            				<tr class="lst_tr">
               					<th>작성자</th>
               					<td><%=rs.getString("nam") %></td>
               				</tr>
               				<tr class="lst_tr">
               					<th>작성일</th>
               					<td><%=rs.getString("res") %></td>
							</tr>
<%
		}
%>
                		</table>
                		<div class = "btn_wrap">
                			<a href="boardList.jsp">게시판목록</a>
                			<%
                				if(bid.equals("admin") || bid.equals(author)) {
                			%>
                				<a href="boardModify.jsp?no=<%=no %>">글 수정</a>
                				<a href="boardDel.jsp?no=<%=no %>">글 삭제</a>
                			<%
                				}
                			%>
                		</div>
                	</div>
                </div>
               </section>
		</div>
	</div>
<%@ include file="connectionClose.conf" %>
</body>
<footer class="ft">
	    	<%@ include file="foot.jsp" %>
</footer>
</html>
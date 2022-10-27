<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String bid = (String) session.getAttribute("id");
	
	int no = Integer.parseInt(request.getParameter("no"));
	String title = "";
	String content = "";
	String bname = "";
	String author = "";
	String resdate = "";
%>	
<%@ include file="connectionPool.conf" %>
<%
		sql = "select a.no no, a.title title, a.content content, b.name name, a.resdate resdate from board1 a inner join member1 b on a.author=b.id order by a.resdate desc ";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			title = rs.getString("title");
			content = rs.getString("content");
			bname = rs.getString("name");
			author = rs.getString("author");
			resdate = rs.getString("resdate");
		}
%>
<%@ include file="connectionClose.conf" %>
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
.brd { display: block; width: 1200px; margin: 50px auto; }
.brd_wrap { display: table; width: 1000px; margin: 40px auto; border-collapse: collapse; text-align: center; }
.brd_tbody { display: table-row; }
.brd_tbody th { display: table-cell; height: 40px; border: 2px solid #002c5f; background-color: #002c5f; color: #fff;}
.brd_tbody td { display: table-cell; height: 40px; border: 1px solid #999; text-align: center; }
.brd_tbody td > input { width: 800px; height: 38px; padding-left: 1em; font-size: 16px; }
.brd_tbody td > textarea { width: 800px; height: 350px; padding-left: 1em; padding-top: 1em;  resize: none; font-size: 14px; }
.btn_wrap { clear: both; width: 90%; text-align: center; }
.btn_wrap > a { width: 400px; height: 40px; margin: 50px ; border: 2px solid #002c5f; background-color:#002c5f; color: #fff; 
padding: 10px 30px; line-height: 25px; font-size: 16px; letter-spacing: -1px; font-weight: 600; }
.btn_wrap > button { width: 120px; height: 46px; margin: 50px ; border: 2px solid #888; background-color:#888; color: #fff; 
padding: 10px 30px; line-height: 25px; font-size: 16px; letter-spacing: -1px; font-weight: 600; }
.btn_wrap > a:hover { background-color:#007fa8; }
.btn_wrap > button:hover { background-color:#666; }
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
                    <a href="index.html" class="home">홈</a> &gt;
                    <span class="sel">글 수정</span>
                </div>
            </div>
            <section class="page">
	            <div class="page_wrap">
	                <h2 class="page_tit">글 수정</h2>
                	<div class="brd">
                		<form name="frm" action="boardModifyPro.jsp" method="post" class="frm">
	                		<table class="brd_wrap">
	                			<tbody class="brd_tbody">
	                				<tr>
	                					<th>글 번호</th>
	                					<td><%=no %><input type="hidden" name="no" value="<%=no %>" required></td>
	                				</tr>
	                				<tr>
	                					<th>제목</th>
	                					<td><input type="text" name="title" value="<%=title %>" required /></td>
	                				</tr>
	                				<tr>
	                					<th>내용</th>
	                					<td>
	                						<textarea cols="150" rows="30" name="content"><%=content %></textarea>
	                					</td>
	                				</tr>
	                				<tr>
	                					<th>작성자</th>
	                					<td><%=bname %></td>
	                				</tr>
	                			</tbody>
	                		</table>
	                		<div class="btn_wrap">
	                			<a href="boardList.jsp">게시판목록</a>
	                			<button type="submit">글 수정</button>
	                		</div>
	                	</form>
                	</div>
                </div>
            </section>
		</div>
		<footer class="ft">
	    	<%@ include file="foot.jsp" %>
	    </footer>
	</div>
</body>
</html>
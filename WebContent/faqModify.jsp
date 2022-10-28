<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String fid = (String) session.getAttribute("id");
	int no = Integer.parseInt(request.getParameter("no"));
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
                    <a href="index.jsp" class="home">홈</a> &gt;
                    <span class="sel">FAQ 수정</span>
                </div>
            </div>
<%@ include file="connectionPool.conf" %>
<%
		sql = "select * from faq1 where no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
%>
            <section class="page">
	            <div class="page_wrap">
	                <h2 class="page_tit">FAQ 수정</h2>
                	<div class="brd">
                		<form name="frm" action="faqModifyPro.jsp" method="post" class="frm">
	                		<table class="brd_wrap">
	                			<tbody class="brd_tbody">
	                				<tr>
	                					<th><label for="no">번호</label></th>
	                					<td><%=no %></td>
	                				</tr>
	                				<tr>
	                					<th><label for="title">제목</label></th>
	                					<td><input type="text" name="title" value="<%=rs.getString("title") %>" required></td>
	                				</tr>
	                				<tr>
	                					<th><label for="content">내용</label></th>
	                					<td>
	                						<textarea cols="150" rows="30" name="content" maxlength="600"><%=rs.getString("content") %></textarea>
	                					</td>
	                				</tr>
	                				<tr>
	                					<th><label for="author">작성자</label></th>
	                					<td><%=rs.getString("author") %></td>
	                				</tr>
	                			</tbody>
	                		</table>
	             <%
					}
				%>
				<%@ include file="connectionClose.conf" %>
	                		<div class="btn_wrap">
	                			<a href="faqList.jsp">게시판목록</a>
	                			<button type="submit">글 수정</button>
	                		</div>
	                	</form>
                	</div>
                </div>
            </section>
		</div>
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
</body>
</html>
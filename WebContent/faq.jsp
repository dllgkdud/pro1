<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String fid = (String) session.getAttribute("id");

%>
<%@ include file="connectionPool.conf" %>
<%
	sql="select * from faq1 order by parno asc, qna asc";
	pstmt = con.prepareStatement(sql);
	rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="head.jsp" %>
	<%@ include file="head.jsp" %>
	<link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="header.css">
    <link rel="stylesheet" href="datatables.min.css">
	<script src="./datatables.min.js"></script>
	<script>
		$(document).ready( function () {
		    $('#myTable').DataTable();
		} );
	</script>
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
	                    <span class="sel">FAQ목록</span>
	                </div>
	            </div>
	            <section class="page">
		            <div class="page_wrap">
		                <h2 class="page_tit">FAQ목록</h2>
	                	<div class="list">
	                		<table class="list_wrap" id="myTable">
	                			<thead class="lst_thead">
	                				<tr class="lst_tr">
	                					<th>구분</th>
	                					<th>제목</th>
	                				</tr>
	                			</thead>
	                			<tbody>
	                		<%
								while(rs.next()) {	
	                		%>
	                				<tr class="lst_tr">
                				<%
                					if(rs.getInt("qna")==0) {
                				%>
	                					<td><input type="hidden" value='<%=rs.getInt("qna") %>'>[ 질문 ]</td>
	                					<td><a href="faqDetail.jsp"><%=rs.getString("title") %></a></td>	                					
	                			<%
                					} else {
	                			%>
	                					<td><input type="hidden" value='<%=rs.getInt("qna") %>'>[ 답변 ]</td>
	                					<td><%=rs.getString("title") %></td>                					
	                			<%
                					}
								}
	                		%>
<%@ include file="connectionClose.conf" %>	                		
	                			</tbody>
	                			<div class="btn_wrap">
								<%
									if(fid.equals("admin")) {
								%>
									<a href="faqWrite.jsp">FAQ 작성</a>
								<%
									} 
								%>
								</div>
	                		</table>
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
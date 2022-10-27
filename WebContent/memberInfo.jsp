<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String mid = request.getParameter("id");
	String mpw = "";
	String mname = "";
	String memail = "";
	String mtel = "";
	String mreg = "";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "select * from member1 where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, mid);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			mpw = rs.getString("pw");
			mname = rs.getString("name");
			memail = rs.getString("email");
			mtel = rs.getString("tel");
			mreg = rs.getString("regdate");
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		rs.close();
		pstmt.close();
		con.close();
	}
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
.list { display: block; width: 800px; margin: 50px auto; }
.list_wrap { display: table; width: 600px; margin: 40px auto; border-collapse: collapse; }
.list_wrap tbody tr { display: table-row; }
.list_wrap tbody tr th { display: table-cell; width: 150px; height: 40px; border-bottom: 2px solid #fff; background-color: #002c5f; color: #fff; }
.list_wrap tbody tr th:first-child { border-top: 2px solid #002c5f; }
.list_wrap tbody tr th:last-child { border-bottom: 2px solid #002c5f; }
.list_wrap tbody tr td { display: table-cell; height: 40px; border: 1px solid #999; padding-left: 20px; }
.btn_wrap { clear: both; margin: 50px 200px; text-align: center; }
.btn_wrap > a { width: 400px; height: 40px; margin: 50px ; border: 2px solid #002c5f; background-color:#002c5f; color: #fff; 
padding: 10px; font-size: 16px; line-height: 25px; }
.btn_wrap > a:hover { background-color:#007fa8; }
</style>
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
                    <span class="sel">회원목록</span>
                </div>
            </div>
            <section class="page">
	            <div class="page_wrap">
	                <h2 class="page_tit">회원목록</h2>
	                <div class="list">
                		<table class="list_wrap">
                			<tbody>
                				<tr>
                					<th>아이디</th>
                					<td><%=mid %></td>
                				</tr>
                				<tr>
                					<th>비밀번호</th>
                					<td><%=mpw %></td>
                				</tr>
                				<tr>
                					<th>이름</th>
                					<td><%=mname %></td>
                				</tr>
                				<tr>
                					<th>이메일</th>
                					<td><%=memail %></td>
                				</tr>
                				<tr>
                					<th>전화번호</th>
                					<td><%=mtel %></td>
                				</tr>
                				<tr>
                					<th>가입일</th>
                					<td><%=mreg %></td>
                				</tr>
               				</tbody>
               				<div class="btn_wrap">
	                			<a href="memList.jsp">목록보기</a>
	                		</div>
           				</table>
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
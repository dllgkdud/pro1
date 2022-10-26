<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>
<%
	Connection con = null;
	PreparedStatement pstmt = null;

	String title = request.getParameter("title");
	String content = request.getParameter("cont");
	String author = request.getParameter("author");
	
	int cnt = 0;

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql="insert into board1 values(bseq.nextval, ?, ?, ?, sysdate)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, author);
	
		cnt = pstmt.executeUpdate();
		if(cnt>0){
			response.sendRedirect("boardList.jsp");
		} else {
%>
			<script>
			alert("다시 작성해주세요.");
			</script>
<%		
			response.sendRedirect("boardWrite.jsp");
		}
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		con.close();
	}
%>
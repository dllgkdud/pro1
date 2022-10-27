<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>
<%
	Connection con = null;
	PreparedStatement pstmt = null;

	String title = request.getParameter("title");
	String content = request.getParameter("cont");
	String author = request.getParameter("author");
	
	int no = Integer.parseInt(request.getParameter("no"));
	int cnt = 0;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "delete from board1 where no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		cnt = pstmt.executeUpdate();
		if(cnt>0){
			response.sendRedirect("boardList.jsp");
		} else {
			response.sendRedirect("boardDetail.jsp?no="+no);
		}
		
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		con.close();
	}
%>
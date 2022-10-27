<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");

	String title = request.getParameter("title");
	String content = request.getParameter("cont");
	String author = request.getParameter("author");
	
	int cnt = 0;
	
%>
<%@ include file="connectionPool2.conf" %>
<%	
		sql="insert into board1 values (bseq.nextval, ?, ?, ?, sysdate)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, author);

		cnt = pstmt.executeUpdate();
		if(cnt>0){
			response.sendRedirect("boardList.jsp");
		} else {
			response.sendRedirect("boardWrite.jsp");
		}
%>
<%@ include file="connectionClose2.conf" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	int no = Integer.parseInt(request.getParameter("no"));
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String author = request.getParameter("author");
	String ps = request.getParameter("ps");
	
	int cnt = 0;
%>
<%@ include file="connectionPool2.conf" %>
<%
	sql = "update qna1 set ps=?, title=?, content=?, author=?, resdate=sysdate where no=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, ps);
	pstmt.setString(2, title);
	pstmt.setString(3, content);
	pstmt.setString(4, author);
	pstmt.setInt(5, no);
	cnt = pstmt.executeUpdate();
	
	if(cnt>0){
		response.sendRedirect("qna.jsp");
	} else {
		response.sendRedirect("qnaModify.jsp?no="+no);
	}
%>
<%@ include file="connectionClose2.conf"%>
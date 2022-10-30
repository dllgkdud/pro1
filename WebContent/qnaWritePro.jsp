<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%

	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");

	int cnt = 0;
	String title = request.getParameter("title");
	String content = request.getParameter("cont");
	String author = request.getParameter("author");
	String ps = request.getParameter("ps");
	int lev = Integer.parseInt(request.getParameter("lev"));
%>
<%@ include file="connectionPool2.conf" %>
<%

	sql = "insert into qna1 values (qseq.nextval, ?, ?, ?, sysdate, 0, qseq.currval, ?)";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, author);
	pstmt.setString(4, ps);
	cnt = pstmt.executeUpdate();

	if(cnt>0){
		response.sendRedirect("qna.jsp");
	} else {
		response.sendRedirect("qnaWrite.jsp");
	}
%>
<!-- DB 닫기 -->
<%@ include file="connectionClose2.conf" %>
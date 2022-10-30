<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	int cnt = 0;
	int no = Integer.parseInt(request.getParameter("no"));
%>
<%@ include file="connectionPool2.conf" %>
<%
	sql = "delete from qna1 where no=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, no);
	cnt = pstmt.executeUpdate();
	
	if(cnt>0){
		response.sendRedirect("qna.jsp");
	} else {
		response.sendRedirect("reply.jsp?no="+no);
	}
%>
<%@ include file="connectionClose2.conf" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	int parno = Integer.parseInt(request.getParameter("no"));
	int cnt = 0;
%>
<%@ include file="connectionPool2.conf" %>
<%
	sql = "delete from faq1 where parno=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, parno);
	cnt = pstmt.executeUpdate();
	
	if(cnt>0){
		response.sendRedirect("faq.jsp");
	} else {
		response.sendRedirect("faqDetail.jsp?no="+parno);
	}
%>
<%@ include file="connectionClose2.conf" %>
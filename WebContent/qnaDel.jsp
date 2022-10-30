<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");

	int cnt = 0;
	String par = request.getParameter("parno");
	if(par==null){
		par = "0";
	}
	int parno = Integer.parseInt(par);
%>
<%@ include file="connectionPool2.conf" %>
<%
	sql = "delete from qna1 where parno=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, parno);
	cnt = pstmt.executeUpdate();
	
	if(cnt>0){
		response.sendRedirect("qna.jsp");
	} else {
		response.sendRedirect("qnaDetail.jsp?no="+parno);
	}
%>
<%@ include file="connectionClose2.conf" %>
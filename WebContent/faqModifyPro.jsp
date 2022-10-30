<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	//번호 데이터가 null값으로 추출될 때 String으로 받아온 뒤 int 형변환을 두 문장으로 나누어 진행한다.(2가지 방식)
	/* String num = request.getParameter("no");
	int no = Integer.parseInt(num); */
	
	String num = request.getParameter("no");
	if(num==null){
		num = "0";
	}
	int no = Integer.parseInt(num);
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	int cnt = 0;
%>
<%@ include file="connectionPool2.conf" %>
<%
	sql = "update faq1 set title=?, content=? where no=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setInt(3, no);
	
	cnt = pstmt.executeUpdate();
	if(cnt>0) {
		response.sendRedirect("faq.jsp");
	} else {
		response.sendRedirect("faqModify.jsp?no="+no);
	}
%>
<%@ include file="connectionClose2.conf" %>
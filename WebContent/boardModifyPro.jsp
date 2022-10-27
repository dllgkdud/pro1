<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>
<%
	//캐릭터셋 설정 - 출력언어
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	//보내온 데이터 받아오기
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	int no = Integer.parseInt(request.getParameter("no"));
	int cnt = 0;
%>
	<!-- DB 생성/연결 (connection, preparedStatement, resultSet 등(1 = 3가지, 2 = 2가지))-->
<%@ include file="connectionPool2.conf" %>
<%
		//sql에서 적용할 구문을 추출하고, 보낸 데이터 지정
		sql="update board1 set title=?, content=? where no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setInt(3, no);
		
		//String으로 적용 시 Query로 지정하고, int로 적용 시 Update로 지정한다.
		cnt = pstmt.executeUpdate();
		
		//반환된 결과에 따라 분기(커서 지정)
		if(cnt>0){
			response.sendRedirect("boardList.jsp");
		} else {		
			response.sendRedirect("boardDetail.jsp?no="+no);
		}
%>
	<!-- connection, preparedStatement, resultSet 등의 사용 여부에 따라 .conf 파일 지정(1 = 3가지, 2 = 2가지)-->
<%@ include file="connectionClose2.conf" %>
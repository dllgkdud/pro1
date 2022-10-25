<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	//추가적으로 작동되지 않을 경우에 사용
	response.setContentType("text/html; charset=UTF-8");
	
	String id= request.getParameter("id");
	String pw= request.getParameter("pw");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String dbid= "system";
	String dbpw= "1234";
	String sql= "";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		System.out.println(con);	//작동되지 않을 시 오류 콘솔창에서 오류 확인(null값으로 출력되는 항목)
		sql = "select * from member1 where id=? and pw=?";
		pstmt = con.prepareStatement(sql);
		System.out.println(pstmt);	//작동되지 않을 시 오류 콘솔창에서 오류 확인(null값으로 출력되는 항목)
		pstmt.setString(1,id);
		pstmt.setString(2,pw);
		//select 데이터가 없으면 rs=null로 출력
		rs = pstmt.executeQuery();
		System.out.println(rs);		//작동되지 않을 시 오류 콘솔창에서 오류 확인(null값으로 출력되는 항목)
		//int cnt= pstmt.excuteUpdate();
		
		if(rs.next()){
			session.setAttribute("id", rs.getString("id"));
			session.setAttribute("pw", rs.getString("pw"));
			session.setAttribute("name", rs.getString("name"));
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
		
		rs.close();
		pstmt.close();
		con.close();
	} catch(Exception e) {
		e.printStackTrace();
	}
%>
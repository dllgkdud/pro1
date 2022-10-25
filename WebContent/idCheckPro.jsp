<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String id= request.getParameter("id");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String dbid= "system";
	String dbpw= "1234";
	String sql= "";
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "select * from member1 where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,id);
		rs = pstmt.executeQuery();
		//int cnt = pstmt.executeUpdate();	- select 구문을 출력하지 않고, 행만 확인할 경우 사용
		
		if(rs.next()){
			out.println("<p>"+id+"</p>");
			out.println("<p>해당 아이디는 이미 존재합니다.</p>");
			response.sendRedirect("idCheck.jsp");
		} else {
			out.println("<p>"+id+"</p>");
			out.println("<p>사용 가능한 아이디입니다.</p>");
			out.println("<a href='javascript:apply(\""+id+"\")'>"+id+"[저장]</a>");
			out.println("<p>입력하신 아이디를 적용합니다.</p>");
		}
%>
		<script>
		function apply(fid){
			opener.document.frm.id.value=fid;
			opener.document.frm.idcheck.value="yes";
			window.close();
		}
		</script>
<%		
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			rs.close();
			pstmt.close();
			con.close();
		}
%>
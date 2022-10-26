<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String bid = (String) session.getAttribute("id");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "select a.no no, a.title title, a.content content, b.name name, a.author author, a.resdate resdate from board1 a inner join member1 b on a.author=b.id order by a.resdate desc";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="head.jsp" %>
	<link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="header.css">
    <link rel="stylesheet" href="datatables.min.css">
	<script src="./datatables.min.js"></script>
	<script>
		$(document).ready( function () {
		    $('#myTable').DataTable();
		} );
	</script>
</head>
<style>
.hd { width: 100%; height: 50px; position: absolute; top: 0; left: 0; z-index: 999; }
.content { display: block; }
.vs { clear: both; width: 100%; height: 350px; overflow: hidden; }
.vs img { display: block; width: 100%; height: auto; }
.bread { clear: both; width: 100%; height: auto; }
.bread_fr { width: 1200px; margin: 20px 30px; }
.home { color: #222; }
.sel { color: #007fa8; }
.page { clear: both; width: 100%; min-height: 100vh; }
.page:after { content: ""; display: block; clear: both; }
.page_wrap { width: 1200px; margin: auto; }
.page_tit { margin: 50px; }
.list { display: block; width: 800px; margin: 50px auto; }
.list_wrap { display: table; width: 600px; margin: 40px auto; border-collapse: collapse; }
.lst_tr { display: table-row; }
.lst_tr th { display: table-cell; height: 40px; border-bottom: 2px solid #002c5f; border-top: 2px solid #002c5f; background-color: #002c5f; color: #fff; }
.lst_tr td { display: table-cell; height: 40px; border-bottom: 1px solid #999; }
.lst_tr td:first-child { width: 50px; text-align: center; }
.lst_tr td:nth-child(2) { width: 250px; padding-left: 20px; }
.lst_tr td:nth-child(3) { width:100px; text-align: center; }
.lst_tr td:last-child { width: 200px; text-align: center; }
.lst_tr td > a { color: #888; }
.btn_wrap { clear: both; width: 400px; height:40px; margin: 50px auto; border-radius: 10px; border: 2px solid #002c5f; background-color:#002c5f; text-align: center; }
.btn_wrap > a { color: #fff; font-size: 16px; line-height: 35px; }
.btn_wrap:hover { background-color:#007fa8; }
.ft { clear: both; width: 100%; height: 200px; background-color: #1c1b1b; padding-bottom: 50px; }
.ft_wrap { clear: both; width: 1200px; padding: 60px 50px; }
</style>
<script>
    $(document).ready(function () {
        $(window).scroll(function () {
            var ht = $(window).height();
            var tp = $(this).scrollTop();
            if (tp >= 600) {
                $(".hd").css("position", "fixed");
            } else {
                $(".hd").css("position", "absolute");
            }
        });
        $
        $("<ul class='circle_lst lst2'></ul>").insertAfter($(".circle_lst"));
        $lst1_obj = $(".circle_lst li").clone();
        $(".circle_lst.lst2").append($lst1_obj);
    });
</script>
<link rel="stylesheet" href="footer.css">
<body>
	<div class="wrap">
		<header class="hd">
            <%@ include file="nav.jsp" %>
        </header>
        <div class="content">
            <figure class="vs">
                <img src="./img/bg4_visual.png" alt=""></img>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">홈</a> &gt;
                    <span class="sel">게시판목록</span>
                </div>
            </div>
            <section class="page">
	            <div class="page_wrap">
	                <h2 class="page_tit">게시판목록</h2>
                	<div class="list">
                		<table class="list_wrap" id="myTable">
                			<thead class="lst_thead">
                				<tr class="lst_tr">
                					<th>번호</th>
                					<th>제목</th>
                					<th>작성자</th>
                					<th>작성일</th>
                				</tr>
                			</thead>
                			<tbody>
<%
								int cnt = 0;
								//작성일의 날짜데이터를 특정 문자열 형식으로 변환
								while(rs.next()){
									cnt += 1;
									SimpleDateFormat sm_date = new SimpleDateFormat("yyyy-MM-dd");
									String date = sm_date.format(rs.getDate("resdate"));
%>
								<tr class="lst_tr">
									<td><%=cnt %></td>
									<%
									if(bid!=null){
									%>
										<td><a href='boardDetail.jsp?no=<%=rs.getInt("no") %>'><%=rs.getString("title") %></a></td>
									<%
									} else {
									%>
										<td><%=rs.getString("title") %></td>
									<%
									}
									%>
									<td><%=rs.getString("name") %></td>
									<td><%=date %></td>
								</tr>
<%
								}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		rs.close();
		pstmt.close();
		con.close();
	}
%>
							</tbody>
						</table>
						<div class="btn_wrap">
						<%
							if(bid!=null) {
						%>
							<a href="boardWrite.jsp">글쓰기</a>
						<%
							} 
						%>
						</div>
					</div>
				</div>
			</section>
		</div>
		<footer class="ft">
	    	<%@ include file="foot.jsp" %>
	    </footer>
    </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String bid = (String) session.getAttribute("id");
%>	
<%@ include file="connectionPool.conf" %>
<%
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
.lst_tr th { display: table-cell; height: 40px; border: 2px solid #002c5f; background-color: #002c5f; color: #fff; letter-spacing: -1px; font-weight: 600; }
.lst_tr td { display: table-cell; height: 40px; border-bottom: 1px solid #999; }
.lst_tr td:first-child { width: 50px; text-align: center; }
.lst_tr td:nth-child(2) { width: 250px; padding-left: 20px; }
.lst_tr td:nth-child(3) { width:100px; text-align: center; }
.lst_tr td:last-child { width: 200px; text-align: center; }
.lst_tr td > a { color: #888; }
.btn_wrap { clear: both; margin-left: 20px; font-size: 16px; letter-spacing: -1px; font-weight: 600; background-color: #002c5f; border: 1px solid #002c5f; width: 400px; height:40px; margin: 50px auto; text-align: center; }
.btn_wrap > a { color: #fff; font-size: 16px; line-height: 35px; }
.btn_wrap:hover { background-color:#007fa8; }
.ft { clear: both; width: 100%; height: 200px; background-color: #1c1b1b; padding-bottom: 50px; }
.ft_wrap { clear: both; width: 1200px; padding: 60px 50px; }
</style>
<script>
$(window).scroll(function () {
    var ht = $(window).height();
    var tp = $(this).scrollTop();
    if (tp >= 600) {
        $(".hd").css("position", "fixed");
    } else {
        $(".hd").css("position", "absolute");
    }
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
                    <a href="index.jsp" class="home">???</a> &gt;
                    <span class="sel">???????????????</span>
                </div>
            </div>
            <section class="page">
	            <div class="page_wrap">
	                <h2 class="page_tit">???????????????</h2>
                	<div class="list">
                		<table class="list_wrap" id="myTable">
                			<thead class="lst_thead">
                				<tr class="lst_tr">
                					<th>??????</th>
                					<th>??????</th>
                					<th>?????????</th>
                					<th>?????????</th>
                				</tr>
                			</thead>
                			<tbody>
<%
								int cnt = 0;
								//???????????? ?????????????????? ?????? ????????? ???????????? ??????
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
%>
<%@ include file="connectionClose.conf" %>
							</tbody>
						</table>
						<div class="btn_wrap">
						<%
							if(bid!=null) {
						%>
							<a href="boardWrite.jsp">?????????</a>
						<%
							} else {
						%>
								<a href="login.jsp">?????????</a>
						<%
							}
						%>
						</div>
					</div>
				</div>
			</section>
		</div>
    </div>
</body>
<footer class="ft">
   	<%@ include file="foot.jsp" %>
</footer>
</html>
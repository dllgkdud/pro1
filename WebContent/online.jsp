<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String oid = (String) session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="head.jsp" %>
	<link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="header.css">
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
.brd { display: block; width: 1200px; margin: 50px auto; }
.brd_wrap { display: table; width: 1000px; margin: 40px auto; border-collapse: collapse; text-align: center; }
#brd_tit { border: 1px solid #999; margin: 0 90px; padding: 30px; line-height: 2; font-size: 16px; letter-spacing: -1px; }
.brd_tbody { display: table-row; }
.brd_tbody th { display: table-cell; height: 40px; border: 2px solid #002c5f; background-color: #002c5f; color: #fff;}
.brd_tbody td { display: table-cell; height: 40px; border: 1px solid #999; text-align: center; }
.brd_tbody td > input { width: 800px; height: 38px; padding-left: 1em; font-size: 16px; }
.brd_tbody td > textarea { width: 800px; height: 350px; padding-left: 1em; padding-top: 1em; resize: none; font-size: 14px;  }
.btn_wrap { clear: both; width: 90%; text-align: center; }
.btn_wrap > a { width: 400px; height: 40px; margin: 50px ; border: 2px solid #002c5f; background-color:#002c5f; color: #fff; 
padding: 10px 30px; line-height: 25px; font-size: 16px; letter-spacing: -1px; font-weight: 600; }
.btn_wrap > button { width: 125px; height: 46px; margin: 50px ; border: 2px solid #888; background-color:#888; color: #fff; 
padding: 10px 30px; line-height: 25px; font-size: 16px; letter-spacing: -1px; font-weight: 600; }
.btn_wrap > a:hover { background-color:#007fa8; }
.btn_wrap > button:hover { background-color:#666; }
.ft { clear: both; width: 100%; height: 200px; background-color: #1c1b1b; padding-bottom: 50px; }
.ft_wrap { clear: both; width: 1200px; padding: 60px 50px; }
</style>
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
                    <a href="index.jsp" class="home">홈</a> &gt;
                    <span class="sel">온라인 상담</span>
                </div>
            </div>
            <section class="page">
	            <div class="page_wrap">
	                <h2 class="page_tit">온라인 상담</h2>
                	<div class="brd">
                		<form name="frm" action="onlinePro.jsp" method="post" class="frm">
                		<p id="brd_tit">
	                            ※ 고객님의 문의 관련 정보는 접수일 기준 1년간 보관되며, 기간 만료 후 자동 폐기됩니다.<br>
	                            ※ 작성하신 1:1 문의는 내용 확인 후 개별적으로 연락드리오니 이점 양해하여 주시기 바랍니다.<br><br>
	                     		※ 문의 내용 중 욕설, 폭언, 위협, 허위사실 등이 포함도리 경우 모욕, 협박, 명예훼손 등으로 간주하여 답변이 제외될 수 있으며, 관련 법규에 의거 처벌될 수 있습니다.
	                     </p>
	                     <%@ include file="connectionPool.conf" %>
	                     <%
	                     	sql = "select * from member1 where id=?";
	                     	pstmt = con.prepareStatement(sql);
	                     	pstmt.setString(1, oid);
	                     	rs = pstmt.executeQuery();
	                     	
	                     	if(rs.next()) {
	                     %>
	                		<table class="brd_wrap">
	                			<tbody class="brd_tbody">
	                				<tr>
	                					<th>제목</th>
	                					<td><input type="text" name="title" id="title" class="brd_con" required /></td>
	                				</tr>
	                				<tr>
	                					<th>내용</th>
	                					<td><textarea name="cont" id="cont" cols="100" rows="10" placeholder="상담 내용" required></textarea></td>
	                				</tr>
	                				<tr>
	                					<th>작성자</th>
	                					<td> 
	                						<%=rs.getString("name") %><input type="hidden" name="author" id="author" value="<%=rs.getString("name") %>">
                						</td>
	                				</tr>
	                				<tr>
	                					<th>연락처</th>
	                					<td> 
	                						<input type="tel"  name="tel" id="tel" value="<%=rs.getString("tel") %>">
                						</td>
	                				</tr>
	                				<tr>
	                					<th>이메일</th>
	                					<td> 
	                						<input type="email" name="email" id="email" value="<%=rs.getString("email") %>">
                						</td>
	                				</tr>
	                			</tbody>
	                		</table>
	                		<div class="btn_wrap">
	                			<a href="qna.jsp">문의사항</a>
	                			<button type="submit"><a href="onlinePro.jsp">상담신청</a></button>
	                		</div>
	                	</form>
	                	<%
		                     	}
	                	%>
	                	<%@ include file="connectionClose.conf" %>
                	</div>
                </div>
            </section>
		</div>
		<script>
        var opt = document.getElementsByClassName("sel");
        for(var i=0;i<opt.length;i++){
            opt[i].addEventListener("change", function(){
                location.href = this.value;
            });
        }
        </script>
        <footer class="ft">
            <%@ include file="foot.jsp" %>
        </footer>
	</div>
</body>
</html>
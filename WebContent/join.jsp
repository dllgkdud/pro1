<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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

.join_wrap { width: 1000px; height: 600px; padding: 50px; margin: 0 auto; }
.join_wrap .join_tit { margin-bottom: 20px; }
.join_wrap #join_form { box-sizing: border-box; }
.join { border: 1px solid #eee; padding: 60px; position: relative; }
.join label { margin-right: 20px; line-height: 3; }
.join input { width: 400px; height: 20px; margin-bottom: 10px; font-size: 14px; }
.join button { width: 48%; height: 45px; font-weight: 600; cursor: pointer; }
.join button[type="reset"] { position: absolute; bottom: -40px; left: 0; z-index: 50; background-color: #f6f3f2; }
.join button[type="submit"] { position: absolute; bottom: -40px; right: 0; z-index: 50; color: #fff; background-color: #3387bd; }
.join button[type="reset"]:hover { background-color: #e4dcd3; }
.join button[type="submit"]:hover { background-color: #002c5f; }

.ft { clear: both; width: 100%; height: 200px; background-color: #1c1b1b; padding-bottom: 50px; }
.ft_wrap { clear: both; width: 1200px; padding: 60px 50px; }
</style>
<script>
$(document).ready(function(){
    $(window).scroll(function(){
        var ht = $(window).height();
        var tp = $(this).scrollTop();
        if(tp>=600){
            $(".hd").css("position","fixed");
        } else {
            $(".hd").css("position","absolute");
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
                    <span class="sel">회원가입</span>
                </div>
            </div>
            <div class="join_wrap">
                <h2 class="join_tit">회원가입</h2>
                <form action="joinPro.jsp" method="post" id="join_form" name="frm" onsubmit="return joinAlert(this)">
                    <table class="join">
                        <tbody>
                            <tr>
                                <th><label for="id">아이디</label></th>
                                <td>
                                	<input type="text" name="id" required>
                                	<button type="button" class="join_btn" onclick="idCheck()">아이디 중복확인</button>
                                	<input type="hidden" name="idcheck" value="no" />
                                </td>
                            </tr>
                            <tr>
                                <th><label for="pw">비밀번호</label></th>
                                <td>
                                	<input type="password" name="pw" required>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="pw2">비밀번호 확인</label></th>
                                <td>
                                	<input type="password" name="pw2" required>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="name">이름</label></th>
                                <td><input type="text" name="name" required></td>
                            </tr>
                            <tr>
                                <th><label for="email">이메일</label></th>
                                <td><input type="email" name="email" required></td>
                            </tr>
                            <tr>
                                <th><label for="tel">연락처</label></th>
                                <td><input type="tel" name="tel" required></td>
                            </tr>
                            <tr>
                                <td>
                                    <button type="reset" class="join_btn">취소</button>
                                    <button type="submit" class="join_btn">회원가입</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div> 
        <footer class="ft">
            <%@ include file="foot.jsp" %>
        </footer>
    </div>
    <script>
    function joinAlert(f){
    	if(f.pw.value!=f.pw2.value){
    		alert("비밀번호가 일치하지 않습니다.");
    		return false;
    	}
    	if(f.idcheck.value!="yes"){
    		alert("아이디 중복체크를 진행해주세요.");
    		return false;
    	}
    }
    function idCheck(){
    	var win = window.open("idCheck.jsp", "idCheckWin", "width=500, height=400");
    }
    </script> 
</body>
</html>
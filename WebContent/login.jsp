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

.login_wrap { width: 550px; height: 600px; padding: 50px; margin: 0 auto; }
.login_wrap .join_tit { margin-bottom: 20px; }
.login_wrap #join_form { box-sizing: border-box; }
.login { border: 1px solid #eee; padding: 60px; position: relative; }
.login label { margin-right: 20px; line-height: 3; }
.login input { width: 100%; height: 20px; margin-bottom: 10px; font-size: 14px; }
.login button { width: 48%; height: 45px; font-weight: 600; cursor: pointer; }
.login button[type="reset"] { position: absolute; bottom: -40px; left: 0; z-index: 50; background-color: #f6f3f2; }
.login button[type="submit"] { position: absolute; bottom: -40px; right: 0; z-index: 50; color: #fff; background-color: #3387bd; }
.login button[type="reset"]:hover { background-color: #e4dcd3; }
.login button[type="submit"]:hover { background-color: #002c5f; }

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
                    <span class="sel">로그인</span>
                </div>
            </div>
            <div class="login_wrap">
                <h2 class="login_tit">로그인</h2>
                <form action="loginPro.jsp" method="post" id="login_form">
                    <table class="login">
                        <tbody>
                            <tr>
                                <th><label for="id">아이디</label></th>
                                <td><input type="text" name="id" required></td>
                            </tr>
                            <tr>
                                <th><label for="pw">비밀번호</label></th>
                                <td><input type="password" name="pw" required></td>
                            </tr>
                            <tr>
                                <td>
                                    <button type="reset" class="login_btn">취소</button>
                                    <button type="submit" class="login_btn">로그인</button>
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
</body>
</html>
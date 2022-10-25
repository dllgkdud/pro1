<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
.ck { width: 1000px; height: 600px; padding: 50px; margin: 0 auto; }
h2 { margin-bottom: 20px; }
.ck .ck_frm { box-sizing: border-box; }
.ck input[type="text"] { width: 300px; height: 30px; margin-bottom: 10px; font-size: 14px; }
.ck input[type="submit"] { width: 80px; height: 30px; margin-bottom: 10px; font-size: 14px; }
</style>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/reset2.css">
<title>아이디 중복 확인</title>
</head>
<body>
<div class="ck">
	<h2>아이디 중복 검사</h2>
	<form action="idCheckPro.jsp" method="post" class="ck_frm" onsubmit="return invalidCheck(this)">
		<input type="text" name="id" id="id" placeholder="8~12자 이내 문자 및 숫자로 작성">
		<input type="submit" value="중복확인">
	</form>
	<script>
	function invalidCheck(f){
		var id = f.id.value;
		id = id.trim();
		if(id.length<8 || id.length>12){
			alert("아이디 생성 조건이 충족되지 않습니다. 다시 입력해주세요.");
			return false;
		}
	}
	</script>
</div>
</body>
</html>
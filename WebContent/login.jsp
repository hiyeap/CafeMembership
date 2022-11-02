<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<script src="./js/jquery-3.6.0.js"></script>
<title>로그인</title>
</head>

<body>
<% String login = (String)session.getAttribute("login");
	session.removeAttribute("login");

%>
	<section class="login-form">
		<form method="post" action="login.do" id="login">
			<h1>Cafe Wiki</h1>
			<ul>
				<div class="int-area">
					<input type="text" name="id" id="id" autocomplete="off" required>
					<label for="id">USER ID</label>
				</div>

				<div class="int-area">
					<input type="password" name="pw" id="pw" autocomplete="off"
						required> <label for="pw">PASSWORD</label>
				</div>

				<div class="check">
					<input type="checkbox" id="chk_id"> <label for="chk_id">아이디
						저장</label>
				</div>

				<div class="btn-area">
					<button type="submit" >LOGIN</button>
				</div>
			</ul>
		</form>
		<div class="caption">
			<a  onclick="location.href='join.jsp'">회원가입</a> 
			<a onclick="location.href='pwSearch.jsp'">비밀번호 찾기</a>
		</div>
	</section>
	<script src="js/jquery-3.6.0.js"></script>
	<script type="text/javascript">
	let login_status = "<%= login%>"
	if(login_status == 'F'){
		alert('아이디/비밀번호를 확인해 주세요')
	}
	
	</script>
</body>
</html>

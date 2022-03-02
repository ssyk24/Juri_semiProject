<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="LoginController" method="post">
		<table id="loginTable" >
			<tr>
				<td id="loginTitle">ID</td>
				<td><input name="id" id="logintTitle2"></td>
			</tr>
			<tr>
				<td id="loginTitle">PW</td>
				<td><input name="pw" id="logintTitle2" type="password"></td>
			</tr>
			<tr>
				<td id="loginTitle3" colspan="2">
				<button class="loginBtn" id="loginPageBtn">로그인</button>
				<button type="button" id="loginPageBtn"onclick="location.href='RegAccountC'">회원가입</button></td>
			</tr>
		</table>
	</form>
</body>
</html>
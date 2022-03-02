<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table id="login_ok_tbl">
<tr><td id="loginOk"><span style="font-weight: bold;">${sessionScope.accountInfo.name }</span>님, 안녕하세요☀</td></tr>
<tr><td id="loginTitle3"><button id="loginPageBtn" onclick="location.href='LoginController'">로그아웃</button></td></tr>
</table>
</body>
</html>
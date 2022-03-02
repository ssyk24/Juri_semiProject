<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table id="regOkTbl">
			<c:if test="${not empty reg }">
			<tr>
				<td class="">${reg }</td>
			</tr>
			<tr>
				<td class=""><button  id="regokBtn" onclick="location.href='HomeC'">홈으로</button></td>
			</tr>
			</c:if>
						<c:if test="${empty reg }">
			<tr>
				<td class="">이미 가입된 아이디입니다!</td>
			</tr>
			<tr>
				<td class=""><button id="regokBtn" onclick="location.href='HomeC'">홈으로</button></td>
			</tr>
			</c:if>
		</table>
</body>
</html>
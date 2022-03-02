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
<body id="wavve_body">
		<table border="1" id="wavve_review_reg_detail">
			<tr>
			<td id="wavve_review_reg_detail_title">장르</td>
			<td>
			${review.genre }
			</td>
			<td>평점</td>
			<td id="wavve_grade">
			${review.grade }
			</td>		
			</tr>
			<tr>
				<td>글 제목</td>
				<td colspan="4" id="wavve_review_reg_detail_title">${review.title }</td>
			</tr>
			<tr>	
				<td>영화 제목</td>
				<td colspan="4" id="wavve_review_reg_detail_title">${review.movie_title }</td>
			</tr>
			<tr>
				<td colspan="5" id="wavve_review_reg_detail_txt">${review.txt }</td>
			</tr>
			<c:if test="${review.writer eq sessionScope.accountInfo.name || sessionScope.accountInfo.name eq 'admin' }">
			<tr>
				<td colspan="4">
				<button id="wavve_review_reg_okBtn" onclick="w_reviewUpdate(${review.no })">수정</button>
				<button id="wavve_review_reg_okBtn2" onclick="w_reviewDel(${review.no })">삭제</button>
				<button id="wavve_review_reg_okBtn2" onclick="window.history.back()">목록</button>
				</td>
			</tr>
			</c:if>
			<c:if test="${review.writer ne sessionScope.accountInfo.name && sessionScope.accountInfo.name ne 'admin' }">
			<tr>
				<td colspan="4">
				<button id="wavve_review_reg_okBtn3" onclick="window.history.back()">목록</button>
				</td>
			</tr>
			</c:if>
			
		</table>
</body>
</html>
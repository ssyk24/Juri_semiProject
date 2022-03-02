<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gothic+A1&display=swap" rel="stylesheet">
</head>
<body id="wavve_body">

<aside id="left_menu">
<a href="WavveC"><img id="wavve_left_logo" alt="" src="img/wavve_mini_logo.png"> </a>
<ul>
<li>
<a href="WavveGoodC">추천작</a>
</li>
<li>
<a href="WavveReviewC" style="color: gray">리뷰 게시판</a>
</li>
<li>
<a href="WavveBestC">명장면 게시판</a>
</li>
<li>
<a href="WavveNextC">상영 예정작</a>
</li>
</ul>
</aside>
<table id="wavee_review_title"> 
<tr><td><h2>리뷰 게시판</h2></tr>
</table>
<table id="wavve_review_backgroudTbl">
<tr><td><form action="WavveGenreSearchC">
<select id="wavee_review_select" name="genre">
<option value="*">전체</option>
<option value="영화">영화</option>
<option value="애니">애니</option>
<option value="드라마">드라마</option>
<option value="예능">예능</option></select>
<button>확인</button>
</form></td></tr>
<tr><td>
<table id="wavee_review_contentTbl">
		<tr class="wavee_review_contentTitle"><td class="wavee_review_contentTitle_td">글번호</td><td class="wavee_review_contentTitle_td">작품명</td><td class="wavee_review_contentTitle_td">제목</td><td class="wavee_review_contentTitle_td">평점</td><td class="wavee_review_contentTitle_td">작성자</td><td class="wavee_review_contentTitle_td">작성일</td></tr>
		<c:if test="${empty noreview}">
		<c:forEach var="wr" items="${reviews }">
		<tr class="wavee_review_contentTd ">
			<td class="wavee_review_contentDate2">${wr.no }</td>
			<td class="wavee_review_contentTitle3">${wr.movie_title }</td>
			<td class="wavee_review_contentTitle2" onclick="location.href='WavveReviewDetailC?no=${wr.no}'">${wr.title }</td>
			<td class="wavee_review_contentGrade">${wr.grade }</td>
			<td class="wavee_review_contentDate2">${wr.writer } 	</td>
			<td class="wavee_review_contentDate"><fmt:formatDate value="${wr.date }" type="both" dateStyle="short" timeStyle="short"/></td>
		</tr>
		</c:forEach>
		</c:if>
		<c:if test="${not empty noreview}">
		<tr class="wavee_review_contentTd">
			<td colspan="6" class="wavee_review_contentTitle3">작성된 게시글이 없습니다.</td>
		</tr>
		</c:if>
	</table>
	
	<table id="wavee_review_writeTbl">
		<tr><td colspan="2"><a id="writeContent" onclick="return wavee_reg('${sessionScope.accountInfo.name }')">글쓰기</a></td></tr>
	</table>
	
	<c:if test="${empty param.genre && empty param.searchTitle && empty noreview &&empty param.title_name}">
	<table id="wavve_review_pageTbl">
	<tr>
	<td>
	<a href="WavveReviewPageController?p=1">맨앞</a>
	<c:forEach var="p" begin="1" end="${pageCount }">
	<a href="WavveReviewPageController?p=${p }">[${p }]</a>
	</c:forEach>
	<a href="WavveReviewPageController?p=${pageCount }">맨뒤</a>
	</td>
	</tr>
	</table>
	</c:if>
	<c:if test="${not empty param.genre && empty noreview}">
	<table id="wavve_review_pageTbl">
	<tr>
	<td>
	<a href="WavveReviewGenrePageController?p=1&genre=${param.genre}">맨앞</a>
	<c:forEach var="p" begin="1" end="${pageCount }">
	<a href="WavveReviewGenrePageController?p=${p }&genre=${param.genre}">[${p }]</a>
	</c:forEach>
	<a href="WavveReviewGenrePageController?p=${pageCount }&genre=${param.genre}">맨뒤</a>
	</td>
	</tr>
	</table>
	</c:if>
	<c:if test="${not empty param.searchTitle && empty noreview }">
	<table id="wavve_review_pageTbl">
	<tr>
	<td>
	<a href="WavveReviewSearchPageController?p=1&serchTitle=${param.searchTitle}">맨앞</a>
	<c:forEach var="p" begin="1" end="${pageCount }">
	<a href="WavveReviewSearchPageController?p=${p }&serchTitle=${param.searchTitle}">[${p }]</a>
	</c:forEach>
	<a href="WavveReviewSearchPageController?p=${pageCount }&serchTitle=${param.searchTitle}">맨뒤</a>
	</td>
	</tr>
	</table>
	</c:if>
	<c:if test="${not empty param.title_name && empty noreview}">

	</c:if>
	<c:if test="${not empty noreview && not empty param.searchTitle }">
	
	</c:if>
	
	<form action="WavveReviewSearchC">
	<table id="wavee_review_contentSearchTbl">
		<tr>
			<td><input style="width: 200px; height:30px" name="searchTitle" ></td>
			<td><button id="wavee_review_search_btn">검색</button></td>	
		</tr>
	</table>
	</form>
	</td></tr>
	</table>
</body>
</html>
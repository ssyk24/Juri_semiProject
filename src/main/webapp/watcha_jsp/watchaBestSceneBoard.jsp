<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
background-color:black;
}
</style>
</head>
<body>
<aside id="watcha_left_menu">
<h2><a href="WatchaHC" style="color: #ff0558">WATCHA</a></h2>
<ul>
<li>
<a href="WatchaRecomC">추천작</a>
</li>
<li>
<a href="WatchaReviewC">리뷰 게시판</a>
</li>
<li>
<a href="WatchaBestSceneC" style="color: gray">명장면 게시판</a>
</li>
<li>
<a href="WatchaNextC">상영 예정작</a>
</li>
</ul>
</aside>
<table style="margin:auto; width:700px; height:700px; margin-left: 500px; color:white;">
	<tr style="border-bottom-style:dotted; text-align: center;">
		<td>
		<h1 style="color:gray;">명장면 게시판</h1>
		</td>
		</tr>
		<tr>
		<td>
		<c:forEach var="bs" items="${bestScenes }">
		<table style="border-bottom-style:dotted; color:white; border-color: white; width:900px; margin:auto; text-align:center;"> 
			<tr style="height:100px;">
				<td style="font-size: 15pt; width:200px;">
					${bs.movieTitle } 
					 <br>
					<img src="image/${bs.img }" id="watcha_bestScene_img"> 
				</td>
				<td style="width:700px; align:center;">
				<table style="margin-left:100px;align:center; width:500px;">
				<tr>
				<td>${bs.bestSceneTitle }</td>
				</tr>
				<tr style="height:200px;">
				<td>${bs.txt }</td>
				<td>작성자 <br>${bs.writer }</td>
				</tr>
			</table>
			<c:if test="${sessionScope.accountInfo.id eq bs.writer || sessionScope.accountInfo.id == 'admin' }">
			<button onclick="updateBestScene(${bs.no})" style="color:red; float:right; font-size: 20pt">수정</button>
			<button onclick="deleteBestScene(${bs.no})" style="color:red; float:right; font-size: 20pt; background-color: pin">삭제</button>
			</c:if>
				</td>
			</tr>
		</table>
		</c:forEach>
		</td>
	</tr>
	<tr style="border-color: blue; text-align: center;">
		<td colspan="2"> 
				<a href="WatchaBestScenePagingC?p=1"> 맨 앞으로 </a>
				<c:forEach var="p" begin="1" end="${pageCount }">
							<a href="WatchaBestScenePagingC?p=${p }">[${p }]</a>
				</c:forEach>
				<a href="WatchaBestScenePagingC?p=${pageCount }">맨 뒤로</a> <br>
			<!-- 카테고리 :
			<select name=''>
			  <option value='' selected>선택하세요</option>
			  <option value=''>영화</option>
			  <option value=''>애니</option>
			  <option value=''>드라마</option>
			</select> -->
			<input placeholder="작품 제목을 입력하세요" id="bestSceneSearch" name="bestSceneSearch">
			<button onclick="bestSceneSearch()">검색</button>
			<c:if test="${empty sessionScope.accountInfo.id }">
			<button onclick="watchaLoginBSWrite()" style="color:red; float:right;">글쓰기</button>
			</c:if>
			<c:if test="${sessionScope.accountInfo.id != null }">
			<button onclick="watchaLoginBSWriteOK()" style="color:red; float:right;">글쓰기</button>
			</c:if>
		</td>
	</tr>
</table>
</body>
</html>
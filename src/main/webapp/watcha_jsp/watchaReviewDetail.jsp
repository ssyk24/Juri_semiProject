<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<aside id="watcha_left_menu">
<h2><a href="WatchaHC"  style="color: #ff0558">WATCHA</a></h2>
<ul>
<li>
<a href="WatchaRecomC">추천작</a>
</li>
<li>
<a href="WatchaReviewC" style="color: gray">리뷰 게시판</a>
</li>
<li>
<a href="WatchaBestSceneC">명장면 게시판</a>
</li>
<li>
<a href="WatchaNextC">상영 예정작</a>
</li>
</ul>
</aside>
<table border="1" style=" margin:auto; width:1000px; height:700px; margin-left: 400px;">
	<tr style="border-color: red; height:50px; color:white;">
		<td style="text-align: center"> 
		<h1>리뷰 게시판</h1>
		</td>
	</tr>
	<tr style="border-color: yellow; height:500px; color:white;">
		<td style="text-align: center;"> 
			<table border="1" style=" color:white; border-color: green; width:900px; margin:auto; "> 
				<c:forEach var="r" items="${reviews }">
				<tr style="height:100px;">
					<td style="font-size: 20pt; width:200px;">
						평점 : ${r.score }<br>
						장르 : ${r.genre }
					</td>
					<td style="width:400px;">
					<h1>제목 :${r.reviewTitle }</h1><br>
					<h2>영화 제목 :${r.movieTitle }</h2> <br>
					내용 : ${r.txt }<br>
					</td>
					<td style="width:">
					작성자 :
					</td>
					<td>
					작성 시각 :<fmt:formatDate value="${r.date }" type="both" dateStyle="short" timeStyle="short"/>
					<button onclick="updateReview(${r.no});" style="color:red; float:right; font-size:5pt">수정</button>
					<button onclick="reviewDel(${r.no});" style="color:red; float:right; font-size: 5pt">삭제</button>
					</td>
				</tr>
				</c:forEach>
			</table>
		</td>
	</tr>
	<tr style="border-color: blue; text-align: center; color:white">
		
		<td> 
		카테고리 :
		<input name="search" placeholder="영화제목을 입력하세요" id="search">
		</td>
	</tr>
</table>
</body>
</html>
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
<table style=" margin:auto; width:1100px; height:500px; padding-right: 350px;">
	<tr bordercolor="white" style="height:10px; color:white;">
		<td style="text-align: center"> 
		<h1 style="font-family: fantasy; font-size: 30pt; color:gray;">리뷰 게시판</h1>
		</td>
	</tr>
	<tr style="height:300px; color:white;">
		<td style="text-align: center;"> 
			<table style=" color:white; width:1000px; margin:auto; "> 
				<tr style="border-color:white;">
				<td style="text-align:center; border-bottom-style: dotted;">
				평점
				</td>
				<td style="text-align:center; border-bottom-style: dotted;"> 
				장르 
				</td>
				<td style="text-align:center; border-bottom-style: dotted;">
				리뷰 제목
				</td>
				<td style="text-align:center; border-bottom-style: dotted;">
				작품 제목
				</td>
				<td style="text-align:center; border-bottom-style: dotted;">  
				리뷰 내용 
				</td>
				<td style="text-align:center; border-bottom-style: dotted;">
				작성자
				</td>
				<td style="text-align:center; border-bottom-style: dotted;">  
				작성시각
				</td>
				</tr>
				<c:forEach var="r" items="${reviews }">
				<tr style="height:50px; border-bottom-style:dotted; border-color:white; text-align: center;">
					<td style=" width:50px;">
						${r.score }</td>
						<td style=" width:50px;">
						${r.genre }
					</td>
					<td style="width:50px; font-size:10pt; text-align: center;">
					${r.reviewTitle }
					</td>
					<td style="width:50px; font-size:10pt; text-align: center;">
					${r.movieTitle }
					</td>
					<td style="text-align:center; font-size:10pt; width:450px;">
					${r.txt }<br>
					</td>
					<td style="width:50px; font-size:10pt; text-align: center;">
					${r.writer }
					</td>
					<td style="width:50px;" >
					<fmt:formatDate value="${r.date }" type="both" dateStyle="short" timeStyle="short"/><br>
					<c:if test="${sessionScope.accountInfo.id != null }">
					<button onclick="updateReview(${r.no});" style="color:red; float:right; font-size:5pt">수정</button>
					</c:if>
					<c:if test="${sessionScope.accountInfo.id != null }">
					<button onclick="reviewDel(${r.no});" style="color:red; float:right; font-size: 5pt">삭제</button>
					</c:if>
					</td>
				</tr>
				</c:forEach>
			</table>
		</td>
	</tr>
	<tr style="border-color: blue; text-align: center; color:white">
				<td style="text-align: center;">
				<a href="WatchaReviewPagingC?p=1"> 맨 앞으로 </a>
				<c:forEach var="p" begin="1" end="${pageCount }">
							<a href="WatchaReviewPagingC?p=${p }">[${p }]</a>
				</c:forEach>
				<a href="WatchaReviewPagingC?p=${pageCount }">맨 뒤로</a>
				</td>
				</tr>
				<tr style="border-color: blue; text-align: center; color:white">
				<td>
		<!-- 카테고리 :
			<select name="category">
			  <option selected>선택하세요</option>
			  <option value="영화">영화</option>
			  <option value="애니">애니</option>
			  <option value="드라마">드라마</option>
			</select> -->
		
		<input name="search" placeholder="작품 제목을 입력하세요" id="search">
		<button onclick="search()">검색</button>
		<c:if test="${empty sessionScope.accountInfo.id }">
			<button onclick="watchaLoginRWrite()" style="color:red; float:right;">글쓰기</button>
			</c:if>
			<c:if test="${sessionScope.accountInfo.id != null }">
			<button onclick="watchaLoginRWriteOK()" style="color:red; float:right;">글쓰기</button>
			</c:if>
		</td>
	</tr>
</table>
</body>
</html>
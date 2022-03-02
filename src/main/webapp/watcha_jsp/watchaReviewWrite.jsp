<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<form action="WatchaReviewRegC" method="post">
		<table style="margin-left: 700px; color:white; border-color: green;"> 
			<tr>
			<td><h2 style="color:gray; text-align: center; border-bottom-style: dotted;">리뷰 쓰기</h2>
			</td>
			</tr>
			<tr>
				<td style="text-align: center;">
					평점:
					<select name="score">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
					</select>
					장르 :
					<select name="genre">
							<option value="영화">영화</option>
							<option value="애니">애니</option>
							<option value="드라마">드라마</option>
					</select>
					작성자: ${sessionScope.accountInfo.id }
					<input type="hidden" name="writer" value="${sessionScope.accountInfo.id }">
				</td>
			</tr>
			<tr>
				<td>
			리뷰 제목 :<input name="reviewTitle" style="height:50px; width:500px; font-size: 20px; "></input></td></tr>
			<tr><td>	작품 제목: <input name="movieTitle"></td></tr>
			<tr><td>내용 :<textarea name="txt" placeholder="글자수 50자 이내로 작성하세요" style="width:500px; 
			height:100px; font-size: 20px;"></textarea></td></tr>
			<tr><td><button style="color:red; float:right; font-size: 15pt">등록</button></td></tr>
		</table>
	</form>
</body>
</html>
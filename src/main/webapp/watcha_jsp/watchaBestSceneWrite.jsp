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
<form action="WatchaBestSceneRegC" method="post" enctype="multipart/form-data">
		<table style="margin-left: 600px; color:white;"> 
			<tr>
			<td style="font-size: 20pt;">
			<h2 style="color:gray; text-align:center;">명장면 등록 하기</h2>
					장르 :
					<select name="genre">
							<option value="영화">영화</option>
							<option value="애니">애니</option>
							<option value="드라마">드라마</option>
					</select>
					작품 제목: <input name="movieTitle">
					작성자 : ${sessionScope.accountInfo.id }
					<input type="hidden" name="writer" value="${sessionScope.accountInfo.id }">
				</td>
			<tr>
				<td style="font-size: 20px;">
			명장면 제목 :<input placeholder="글자수 20자 이내" style="width:500px;  font-size: 20px;" name="bestSceneTitle"> <br>
			명장면 설명 :<input placeholder="글자수 100자 이내" style="width:500px; height:200px; font-size: 20px;" name="txt">
				</td>
			</tr>
			<tr>
				<td>
			<h2>명장면 사진 :<input type="file" name="file"></h2> 
			<button style="color:red; float:right;">확인</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
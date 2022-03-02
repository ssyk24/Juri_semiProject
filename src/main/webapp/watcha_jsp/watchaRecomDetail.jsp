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
<a href="WatchaRecomC" style="color: gray">추천작</a>
</li>
<li>
<a href="WatchaReviewC">리뷰 게시판</a>
</li>
<li>
<a href="WatchaBestSceneC">명장면 게시판</a>
</li>
<li>
<a href="WatchaNextC">상영 예정작</a>
</li>
</ul>
</aside>
<table border="1" style="margin-left:
 700px; height: 600px; color:white; text-align:center;border-color: green; width: 800px"> 
			<tr>
			<td colspan="2">
			<h1 style="font-size: 40pt; color:gray;">상세 페이지</h1>
			</td>
				</tr>
				<tr>
				<td style="font-size: 20pt; text-align: center;">
					작품 제목: ${recom.movieTitle } <br>
				</td>
				<td style="font-size: 20pt;">	
				작품 장르 : ${recom.genre } 
				</td>
			</tr>
			<tr>
				<td style="font-size: 20pt;" >
				작품 장면 <br>
				</td>
				<td colspan="2">
				<img src="img/${recom.img }"> 
				</td>
			</tr>
		</table>
${recom.movieTitle }
</body>
</html>
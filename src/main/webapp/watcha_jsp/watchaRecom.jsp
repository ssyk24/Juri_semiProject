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
	<table id="watchaRecom_Tbl">
	 	<tr>
	 		<td colspan="5" style="color:gray;"><h2>새로 올라온 작품</h2></td>
	 	</tr> 
	 	<tr>
	 		<td> <a href="WatchaRecomDetailC?movieTitle=더블 트러블"> <img src="img/doubletrouble.jpg" style="" id="watcha_recom_img"> </a></td>  
	 		<td> <a href="WatchaRecomDetailC?movieTitle=언 프레임드"> <img src="img/unframed.jpg" style=""id="watcha_recom_img"> </a></td>  
	 		<td> <a href="WatchaRecomDetailC?movieTitle=페어웰"> <img src="img/farewell.jpg" style=""id="watcha_recom_img"> </a></td>  
	 		<td> <a href="WatchaRecomDetailC?movieTitle=샌 안드레아스"> <img src="img/sanandreas.jpg" style=""id="watcha_recom_img"> </a></td>  
	 		<td> <a href="WatchaRecomDetailC?movieTitle=인턴"> <img src="img/intern.jpg" style=""id="watcha_recom_img"> </a></td>  
	 	</tr> 
	 	<tr>
	 		<td><h1>더블 트러블</h1></td>
	 		<td><h1>언 프레임드</h1></td>
	 		<td><h1>페어웰</h1></td>
	 		<td><h1>샌 안드레아스</h1></td>
	 		<td><h1>인턴</h1></td>
	 	</tr> 
	
	 	<tr>
	 		<td colspan="5" style="color:gray;"><h2>올해의 시리즈 TOP5</h2></td>
	 	</tr> 
	 	<tr>
	 		<td> <a href="WatchaRecomDetailC?movieTitle=더듬이TV:우당탕탕 안테나"> <img src="img/anthena.jpg" style=""id="watcha_recom_img"> </a></td>  
	 		<td> <a href="WatchaRecomDetailC?movieTitle=그림자 미녀"> <img src="img/shadowgirl.jpg" style=""id="watcha_recom_img"> </a></td>  
	 		<td> <a href="WatchaRecomDetailC?movieTitle=디 액트"> <img src="img/the act.jpg" style="width:240px; height:270px"> </a></td>  
	 		<td> <a href="WatchaRecomDetailC?movieTitle=와이 우먼 킬"> <img src="img/whywomankill.jpg" style=""id="watcha_recom_img"> </a></td>  
	 		<td> <a href="WatchaRecomDetailC?movieTitle=웨인"> <img src="img/wane.jpg" style=""id="watcha_recom_img"> </a></td>  
	 	</tr> 
	 	<tr>
	 		<td><h1>더듬이TV:우당탕탕 안테나</h1></td>
	 		<td><h1>그림자 미녀</h1></td>
	 		<td><h1>디 액트</h1></td>
	 		<td><h1>와이 우먼 킬</h1></td>
	 		<td><h1>웨인</h1></td>
	 	</tr> 
	 	<tr>
	 		<td colspan="5" style="color:gray;"><h2>올해의 영화 TOP5</h2></td>
	 	</tr> 
	 	<tr>
	 		<td> <a href="WatchaRecomDetailC?movieTitle=나이브스 아웃"> <img src="img/KnivesOut.jpg" style=""id="watcha_recom_img"> </a></td>  
	 		<td> <a href="WatchaRecomDetailC?movieTitle=스파이더맨:홈커밍"> <img src="img/spidermanhomecoming.jpg" style=""id="watcha_recom_img"> </a></td>  
	 		<td> <a href="WatchaRecomDetailC?movieTitle=러브레터"> <img src="img/love letter.jpg" style=""id="watcha_recom_img"> </a></td>  
	 		<td> <a href="WatchaRecomDetailC?movieTitle=스파이더맨:뉴 유니버스"> <img src="img/spidermannewuniverse.jpg" style=""id="watcha_recom_img"> </a></td>  
	 		<td> <a href="WatchaRecomDetailC?movieTitle=그린 나이트"> <img src="img/greenknight.jpg" style=""id="watcha_recom_img"> </a></td>  
	 	</tr> 
	 	<tr>
	 		<td><h1>나이브스 아웃</h1></td>
	 		<td><h1>스파이더맨:홈커밍</h1></td>
	 		<td><h1>러브레터</h1></td>
	 		<td><h1>스파이더맨:뉴 유니버스</h1></td>
	 		<td><h1>그린 나이트</h1></td>
	 	</tr> 
	 	<tr>
	 		<td colspan="5" style="color:gray;"><h2>올해의 애니 TOP5</h2></td>
	 	</tr> 
	 	<tr>
	 		<td> <a href="WatchaRecomDetailC?movieTitle=주술회전"> <img src="img/jujutsukaisen.jpg" style=""id="watcha_recom_img"> </a></td>  
	 		<td> <a href="WatchaRecomDetailC?movieTitle=너의 이름은."> <img src="img/kiminonawa.jpg" style=""id="watcha_recom_img"> </a></td>  
	 		<td> <a href="WatchaRecomDetailC?movieTitle=극장판 귀멸의 칼날: 무한열차편"> <img src="img/mugenrextusha.jpg" style=""id="watcha_recom_img"> </a></td>  
	 		<td> <a href="WatchaRecomDetailC?movieTitle=귀멸의 칼날"> <img src="img/kimetsunoyaiba.jpg" style=""id="watcha_recom_img"> </a></td>  
	 		<td> <a href="WatchaRecomDetailC?movieTitle=너의 췌장을 먹고 싶어"> <img src="img/kiminosuizowotabetai.jpg" style=""id="watcha_recom_img"> </a></td>  
	 	</tr> 
	 	<tr>
	 		<td><h1>주술회전</h1></td>
	 		<td><h1>너의 이름은.</h1></td>
	 		<td><h1>극장판 귀멸의 칼날: 무한열차편</h1></td>
	 		<td><h1>귀멸의 칼날</h1></td>
	 		<td><h1>너의 췌장을 먹고 싶어</h1></td>
	 	</tr> 
	</table>
</body>
</html>
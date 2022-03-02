<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="disney_body">

	<aside id="disney_left_menu">
		<h2>
			<a href="DisneyHomeC">Disney+</a>
		</h2>
		<ul>
			<li><a href="DisneyRecomandC" style="border-bottom-style: inset;">추천작</a></li>
			<li><a href="DisneyReviewC">리뷰 게시판</a></li>
			<li><a href="DisneyBestC">명장면 게시판</a></li>
			<li><a href="DisneyUpcomingC">상영 예정작</a></li>
		</ul>
	</aside>
	
	
	<table id="disney_tbl" style="table-layout: fixed;">
	<tr>
		<td class="disney_recomand_title" style="padding-bottom: 30px; border-bottom-style: ridge;"> 디즈니+ 추천 컨텐츠 </td>
	</tr>
	</table>
	
	
	<table id="disney_tbl"  style="padding: 5px; height: 350px;  border-radius: 10px; border-color: gray; table-layout: fixed;">
	<tr>
		<td class="disney_recomand_title" > 시리즈 </td>
	</tr>
	
	<tr>
	<td>
		<table id="disney_recomand_tbl" style="table-layout: fixed; text-align: center; padding-bottom: 20px;
		background-color:#02153D; padding: 15px; border-style:solid; border-color: white; border-width: thin; border-radius:10px;">
	
		<hr  align="right" style="margin-bottom: 30px;">
	
		<tr>
			<td>추천작 1<td>
			<td>추천작 2<td>
			<td>추천작 3<td>
			<td>추천작 4<td>
			<td>추천작 5<td>
		</tr>

		<tr>
			<td><a href="DisneyRecomandDetailC?val=1_1"><img src="img/loki.png"></a><td>
			<td><a href="DisneyRecomandDetailC?val=1_2"><img src="img/동물세상.png"></a><td>
			<td><a href="DisneyRecomandDetailC?val=1_3"><img src="img/hawk.png"></a><td>
			<td><a href="DisneyRecomandDetailC?val=1_4"><img src="img/hsm.png"></a><td>
			<td><a href="DisneyRecomandDetailC?val=1_5"><img src="img/런닝맨.png"></a><td>
		</tr>

	</table>
	
	</td>
	</tr>
	</table>

	<table id="disney_tbl"  style="table-layout: fixed; margin-top: 50px; padding: 5px; height: 350px; border-radius: 10px; border-color: gray;">
	<tr>
		<td class="disney_recomand_title"> 영화 </td>
	</tr>
	
	<tr>
	<td>
	<table id="disney_recomand_tbl" style="table-layout: fixed; text-align: center; padding-bottom: 20px;
	background-color:#02153D; padding: 15px; border-style:solid; border-color: white; border-width: thin; border-radius:10px;">
	
		<hr  align="right " style="margin-bottom: 30px;">
	
		<tr id="disney_recomand_rank">
			<td>추천작 1<td>
			<td>추천작 2<td>
			<td>추천작 3<td>
			<td>추천작 4<td>
			<td>추천작 5<td>
		</tr>

		<tr>
			<td><a href="DisneyRecomandDetailC?val=2_1"><img src="img/curu.png"></a><td>
			<td><a href="DisneyRecomandDetailC?val=2_2"><img src="img/endgame.png"></a><td>
			<td><a href="DisneyRecomandDetailC?val=2_3"><img src="img/캐리비안5.png"></a><td>
			<td><a href="DisneyRecomandDetailC?val=2_4"><img src="img/civil.png"></a><td>
			<td><a href="DisneyRecomandDetailC?val=2_5"><img src="img/골든서클.png"></a><td>
		</tr>

	</table>
	
	</td>
	</tr>
	</table>

	<table id="disney_tbl"  style="table-layout: fixed; margin-top: 50px; padding: 5px; height: 350px; border-radius: 10px; border-color: gray;">
	<tr>
		<td class="disney_recomand_title"> 애니메이션 </td>
	</tr>
	
	<tr>
	<td>
	<table id="disney_recomand_tbl" style="table-layout: fixed; text-align: center; padding-bottom: 20px;
	background-color:#02153D; padding: 15px; border-style:solid; border-color: white; border-width: thin; border-radius:10px;">
	
		<hr align="right" style="margin-bottom: 30px;">
	
		<tr id="disney_recomand_rank">
			<td>추천작 1<td>
			<td>추천작 2<td>
			<td>추천작 3<td>
			<td>추천작 4<td>
			<td>추천작 5<td>
		</tr>

		<tr>
		<td><a href="DisneyRecomandDetailC?val=3_1"><img  src="img/frozen2.png "></a><td>
		<td><a href="DisneyRecomandDetailC?val=3_2"><img  src="img/soul.png"></a><td>
		<td><a href="DisneyRecomandDetailC?val=3_3"><img  src="img/toy4.png"></a><td>
		<td><a href="DisneyRecomandDetailC?val=3_4"><img  src="img/whatif.png"></a><td>
		<td><a href="DisneyRecomandDetailC?val=3_5"><img src="img/심슨.png"></a><td>
		</tr>

	</table>
	
	
	</table>
	
	
</body>
</html>
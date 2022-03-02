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
			<li><a href="DisneyRecomandC">추천작</a></li>
			<li><a href="DisneyReviewC">리뷰 게시판</a></li>
			<li><a href="DisneyBestC">명장면 게시판</a></li>
			<li><a href="DisneyUpcomingC" style="border-bottom-style: inset;">상영 예정작</a></li>
		</ul>
	</aside>
	

	<table id="disney_tbl" style="table-layout: fixed;">
	<tr>
		<td class="disney_recomand_title" style="padding-bottom: 20px; border-bottom-style: ridge;"> 디즈니+ 오리지널 공개 예정작 </td>
	</tr>
	</table>

	<table id="disney_tbl"  >
	<tr>
	<td>
	<table id="disney_upcoming_original_tbl" style= " table-layout: fixed;   ">
	
		<tr>
			<td><img src="img/그루트.png"></td>
			<td><img src="img/너와 나의 경찰수업1.jpg"></td>
			<td><img src="img/미즈마블.jpg"></td>
			<td><img src="img/쉬헐크.jpg"></td>
			<td><img src="img/문나이트.jpg"></td>
		</tr>
		
		<tr>
			<td> 아이 앰 그루트  </td>
			<td>너와 나의 경찰수업 </td>
			<td>미즈 마블 </td>
			<td>쉬 헐크</td>
			<td>문나이트 </td>
		</tr>

		<tr>
			<td> <button onclick="location.href = 'DisneyUpcomingDetailC?val=1_1'"> 작품정보 </button> </td>
			<td> <button onclick="location.href = 'DisneyUpcomingDetailC?val=1_2'"> 작품정보 </button> </td>
			<td> <button onclick="location.href = 'DisneyUpcomingDetailC?val=1_3'"> 작품정보 </button> </td>
			<td> <button onclick="location.href = 'DisneyUpcomingDetailC?val=1_4'"> 작품정보 </button> </td>
			<td> <button onclick="location.href = 'DisneyUpcomingDetailC?val=1_5'"> 작품정보 </button> </td>
		</tr>

	</table>
	
	</td>
	</tr>
	</table>

	<table id="disney_tbl" >
	<tr>
		<td class="disney_recomand_title" style="padding-bottom: 20px; border-bottom-style: ridge;"> 극장 상영후 디즈니+ 에서만 </td>
	</tr>
	</table>
	
	<table id="disney_tbl"  style="table-layout: fixed;" >
	<tr>
	<td>
	<table id="disney_upcoming_movie_tbl" style="table-layout: fixed;">
	
		<tr>
			<td><a><img src="img/닥스2.png"></a></td>
			<td><a><img src="img/라이트이어.jpg"></a></td>
			<td><a><img src="img/토르4.jpg"></a></td>
			<td><a><img src="img/스트레인지.jpg"></a></td>
			<td><a><img src="img/더 마블스.jpg"></a></td>
		</tr>
	
		<tr id="disney_recomand_rank">
			<td>닥터 스트레인지2<br>대혼돈의 멀티버스</td>
			<td>라이트이어</td>
			<td>토르4<br>러브 앤 썬더</td>
			<td>디즈니 스트레인지 월드</td>
			<td>더 마블스</td>
		</tr>

		<tr>
			<td> <button onclick="location.href = 'DisneyUpcomingDetailC?val=2_1'"> 작품정보 </button> </td>
			<td> <button onclick="location.href = 'DisneyUpcomingDetailC?val=2_2'"> 작품정보 </button> </td>
			<td> <button onclick="location.href = 'DisneyUpcomingDetailC?val=2_3'"> 작품정보 </button> </td>
			<td> <button onclick="location.href = 'DisneyUpcomingDetailC?val=2_4'"> 작품정보 </button> </td>
			<td> <button onclick="location.href = 'DisneyUpcomingDetailC?val=2_5'"> 작품정보 </button> </td>
		</tr>

	</table>
	
	
	</td>
	</tr>
	</table>
	
	
</body>
</html>
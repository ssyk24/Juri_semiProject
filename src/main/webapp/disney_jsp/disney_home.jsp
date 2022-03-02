<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 즐거움을 주리 - Disney + </title>
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
			<li><a href="DisneyUpcomingC">상영 예정작</a></li>
		</ul>
	</aside>
	
	<form action="DisneyHomeC" method="post">
	<table id="disney_tbl" style="height: 1200px; table-layout: fixed; ">

		<tr>
			<td  colspan="2"> <a href="https://www.disneyplus.com/ko-kr/home"> <img class="disney_img" src="img/disneyplus2.png" style="width: 50%;"> </a> </td>
		</tr>

		<tr>
			<td class="disney_index_title"  colspan="2">
				<h2>소개</h2>
			</td>
		</tr>
		<tr>
			<td class="disney_index_content" colspan="2">
				<p></p> 디즈니+는 2019년에 디즈니가 출시한 가입형 온라인 스트리밍 OTT 서비스. <br>
				디즈니, 픽사, 마블, 스타 워즈, 내셔널 지오그래픽 등 디즈니의 IP를 바탕으로 한 <br>
				다양한 오리지널 콘텐츠를 보유하고 있다.
				<p></p>
			</td>
		</tr>

		<tr>
			<td class="disney_index_title" colspan="2"><h2>요금제</h2></td>
		</tr>

		<tr >
		<td colspan="2">
		
		<table id="disney_index_subscribe" border="1"  style="border-width:medium; border-color:white;  table-layout: fixed; background-color: #2A2A66; margin-bottom: 10px; background-color: #02153D">
		<tr style="border-bottom: thick;">
			<td>서비스</td>
			<td>월간 구독</td>
			<td>연간 구독</td>
		</tr>
		<tr>
			<td >가격</td>
			<td>9,900원</td>
			<td>99,000원</td>
		</tr>
		<tr>
			<td>이용 기기</td>
			<td colspan="2">Mobile+PC+TV+Game Console</td>
		</tr>
		<tr>
			<td>동시시청</td>
			<td colspan="2">4</td>
		</tr>
		</table>
		
		</td>
		</tr>
		
		<tr class="disney_index_payCalc" style="margin-bottom: 20px;">
			<td colspan="2">
			요금 계산기  &nbsp; 
			<select name="subscribe" style="height: 25px;">
					<option value="mon">월간 구독</option>
					<option value="year">연간 구독</option>
			</select>
			 &nbsp; &nbsp;
			<select name="person" style="height: 25px; width: 80px;">
					<option value="1">혼자서</option>
					<option value="2">둘이서</option>
					<option value="3">셋이서</option>
					<option value="4">넷이서</option>
			</select>
			&nbsp; &nbsp;
			<button style="width: 60px; height: 35px; font-size: 13pt;"> 계산 </button>
			</td>
			</tr>
			
			<c:if test="${pay != null}">
			<tr>
			<td colspan="2" style="font-size: 18pt;"> 한 사람이 '${term}'에 낼 요금은 '${pay}'원 입니다. </td>
			</tr>
			</c:if>
	</table>
	</form>

</body>
</html>
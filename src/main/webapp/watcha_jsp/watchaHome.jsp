<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<a href="WatchaBestSceneC">명장면 게시판</a>
</li>
<li>
<a href="WatchaNextC">상영 예정작</a>
</li>
</ul>
</aside>
<table style = 
"width : 1000px;
margin-left: 500px;
height : 500px;
">
<tr>
<td style="color: white; ">
<a href="https://watcha.com/" target="_blank" title="왓챠 홈페이지로 이동합니다">
<img  style="display:block; margin:auto; width:100%;" src="img/watcha_introducLogo.png"></a>
</td>
</tr>
<tr>
<td style="border-bottom-style: dotted; color:white;">
<h1 style="text-align:center; color:gray;">소개</h1>  <br>
</td>
<tr>
<td>
<h3>왓챠는 2011년 9월에 설립된 대한민국의 소프트웨어 회사이다. <br>
 개인의 취향을 분석해 영화에 대한 예상 별점을 제공하고 사용자가 좋아할만한 영화를 추천해준다. </h3><br>
</td>
</tr>
</table>
<table style = 
"width : 1000px;
margin-left: 500px;
height : 500px;
color : white;
text-align: center;
">
<tr >
<td colspan="3" style="border-bottom-style: dotted;"><h1 style="color:gray;">요금제</h1></td>
</tr>
<tr>
<td>종류</td>
<td>왓챠 일반</td>
<td>왓챠 프리미엄</td>
</tr>
<tr>
<td>월 요금</td>
<td>월 7,900원</td>
<td>월 12,900원</td>
</tr>
<tr>
<td>최대 화질</td>
<td>2K (1080p)</td>
<td>4K (2160p)</td>
</tr>
<tr>
<td>동시재생</td>
<td>1대</td>
<td>4대</td>
</tr>
<tr>
<td>지원기기</td>
<td>모바일/태블릿/PC</td>
<td>모바일/태블릿/PC/스마트TV/AndroidTV/Chromecast/PS5</td>
</tr>
</table>
<table style = 
"width : 1000px;
margin-left: 500px;
height : 500px;
color : white;
text-align: center;
">
<tr>
<td>
<h1 style="color:gray;">요금제 계산기</h1>  <br>
<form action="WatchaFareCalcC">
종류 :
<select name="fareType">
<option value="일반">일반</option>
<option value="프리미엄">프리미엄</option>
</select>
인원 :
 <select name="popu">
 <option value="1">1명</option>
 <option value="2">2명</option>
 <option value="3">3명</option>
 <option value="4">4명</option>
 </select>
 <button>계산</button>
</form>
</td>
<td style="font-size: 50pt;">→</td>
<td>
<h1 style="color:gray;">요금 계산 결과</h1>
종류 : ${f }<br>
인원: ${p }명 <br>
총 금액 :${r }원
</td>
</tr>
</table>
</body>
</html>
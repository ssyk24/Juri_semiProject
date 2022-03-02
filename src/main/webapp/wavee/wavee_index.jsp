<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="wavve_body">

<aside id="left_menu">
<a href="WavveC"><img id="wavve_left_logo" alt="" src="img/wavve_mini_logo_click.png"> </a>
<ul>
<li>
<a href="WavveGoodC">추천작</a>
</li>
<li>
<a href="WavveReviewC">리뷰 게시판</a>
</li>
<li>
<a href="WavveBestC">명장면 게시판</a>
</li>
<li>
<a href="WavveNextC">상영 예정작</a>
</li>
</ul>
</aside>

<table id="wavve_index_main">
<tr>
<td><a href="https://www.wavve.com/"><img id="wavve_img" src="img/wavve_wavve_logo.png"></a></td>
</tr>
<tr>
<td id="wavve_index_logoTd">로고를 클릭하시면 홈페이지로 이동됩니다.</td>
</tr>
<tr>
<td class="wavve_index_content_title">소개</td>
</tr>
<tr>
<td class="wavve_index_content">지상파 3사와 SK텔레콤의 합작으로 만들어진 대한민국의 OTT 서비스<br>
2019년 9월 18일 오전 9시를 기준으로 서비스가 시작되었다. 
<br>기존의 POOQ과 oksusu가 합쳐져 새로운 이름으로 탄생하게 된다.<br>
브랜드 네이밍은 세계 최대 브랜드 컨설팅 회사인 인터브랜드에서 진행했다고 한다.</td>
</tr>
<tr>
<td class="wavve_index_content_title">요금제</td>
</tr>
<tr>
<td class="wavve_index_content">
<table id="wavve_index_pay_tbl">
  <tr id="wavve_index_pay_title">
  <td></td>
  <td>베이직</td>
  <td>스탠다드</td>
  <td>프리미엄</td>
  </tr>
  <tr>
  <td>가격</td>
  <td>7,900원</td>
  <td>10,900원</td>
  <td>13,900원</td>
  </tr>
  <tr>
  <td>이용 기기</td>
  <td>모바일+PC</td>
  <td>모바일+PC+TV</td>
  <td>모바일+PC+TV</td>
  </tr>
  <tr>
  <td>제공화질</td>
  <td>HD(720p)</td>
  <td>FHD(1080p)</td>
  <td>UHD 포함(~2160p)</td>
  </tr>
  <tr>
  <td>최대인원</td>
  <td>1명</td>
  <td>2명</td>
  <td>4명</td>
  </tr>
</table>
</td>
</tr>
<tr>
<td class="wavve_index_content_title">요금제 계산기</td>
</tr>
<tr>
<td>
<form action="WavvePayC">
<table id="wavve_index_people_pay_tbl" border="1px solid white">
<tr>
<td>종류</td><td><select name="type"><option value="베이직">베이직</option><option value="스탠다드">스탠다드</option><option value="프리미엄">프리미엄</option></select></td>
<td>인원수</td><td><select name="people"><option value="1">1명</option><option value="2">2명</option><option value="3">3명</option><option value="4">4명</option></select></td>
<td>개월수</td><td><input type="number" name="month" value="1" min="1" id="wavve_pay_num"></td>
<td><button onclick="return wavve_pay_ok()">확인</button></td>
</tr>
<tr>
<td>가격</td>
<c:if test="${money eq '0' }"><td colspan="6">최대인원수를 초과하였습니다.위에 표를 참고하여 최대인원수를 설정해주세요</td></c:if>
<c:if test="${money ne '0' }"><td colspan="6">${type }을(를) ${people }명이서 ${month }달간 내실금액은 ${money }원 입니다.</td></c:if>
</tr>
</table>
</form>
</td>
</tr>
</table>
</body>
</html>
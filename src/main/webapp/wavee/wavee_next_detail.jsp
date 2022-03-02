<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="wavve_body">

<aside id="left_menu">
<a href="WavveC"><img id="wavve_left_logo" alt="" src="img/wavve_mini_logo.png"> </a>
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
<a href="WavveNextC" style="color: gray">상영 예정작</a>
</li>
</ul>
</aside>
<c:if test="${param.season == '1' }">
<table id="wavve_next_contentTbl">
<tr><td colspan="5">2022년 1분기</td><td id="wavve_next_detail_td2"><a onclick="window.history.back()">이전으로</a></td></tr>
</table>
<table id="wavve_next_mainTbl"  border="1px solid white">
<tr id="wavve_next_title"><td>작품명</td><td>연출</td><td>방송기간<br>(시작/종영)</td><td>방송횟수</td><td>방송사</td><td>유형</td><td>시청등급</td></tr>
<tr><td>《결혼작사 이혼작곡 3》</td><td>오상원</td><td>2022.2.5</td><td>16</td><td>TV조선</td><td>토일</td><td><img alt="진행중" src="img/age_limit_15.png" title="15세 이상 시청가능"></td></tr>
<tr><td>《고스트 닥터》</td><td>부성철</td><td>2022.1.3</td><td>16</td><td>tvN</td><td>월화</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《군검사 도베르만》</td><td>이희명</td><td>2022.2</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td>tvN</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《기상청 사람들: 사내연애 잔혹사 편》</td><td>차영훈</td><td>2022.1</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td>tvN</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《날아올라라, 나비》</td><td>김다예</td><td>2022.1.24</td><td>16</td><td>MBC</td><td>월화</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《사내맞선》</td><td>신우철</td><td>2022.2</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td>JTBC</td><td>월화</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《스물다섯 스물하나》</td><td>김희원</td><td>2022.2.12</td><td>16</td><td>SBS</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《악의 마음을 읽는 자들》</td><td>박보람</td><td>2022.1.14</td><td>12</td><td>tvN</td><td>금토</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《오늘의 웹툰》품명</td><td>이희명</td><td>2022.2.7</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td>SBS</td><td>월화</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《왜 오수재인가?》</td><td>박수진</td><td>2022.3</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td>SBS</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《지금부터, 쇼타임!》</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td>2022.3</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td>SBS</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《크레이지 러브》</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td>2022.2.14</td><td>16</td><td>MBC</td><td>월화</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《트레이서》</td><td>이희명</td><td>2022.1.7</td><td>16</td><td>KBS2</td><td>금토</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《현재는 아름다워》</td><td>김성근</td><td>2022.3</td><td>50</td><td>KBS2</td><td>주말</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《환혼》</td><td>김희원</td><td>2022.2</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td>tvN</td><td>토일</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《황홀한 연인》</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td>2022.2.14</td><td>120</td><td>MBC</td><td>일일</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
</table>
</c:if>
<c:if test="${param.season == '2' }">
<table id="wavve_next_contentTbl">
<tr><td colspan="5">2022년 2분기</td><td id="wavve_next_detail_td2"><a onclick="window.history.back()">이전으로</a></td></tr>
</table>
<table id="wavve_next_mainTbl"  border="1px solid white">
<tr id="wavve_next_title"><td>작품명</td><td>연출</td><td>방송기간<br>(시작/종영)</td><td>방송횟수</td><td>방송사</td><td>유형</td><td>시청등급</td></tr>
<tr><td>《내일》</td><td>백미경</td><td>2022.5</td><td>16</td><td>MBC</td><td>토일</td><td><img alt="진행중" src="img/age_limit_15.png" title="15세 이상 시청가능"></td></tr>
<tr><td>《너에게 가는 속도 493KM》</td><td>이희명</td><td>2022.7</td><td>16</td><td>SBS</td><td>월화</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《이상한 변호사 우영우》</td><td>허성혜</td><td>2022.4</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td>KBS2</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《붉은 단심》</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td>2022.5</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td>tvN</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《빅마우스》</td><td>김희원</td><td>2022.6</td><td>16</td><td>MBC</td><td>월화</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《소방서 옆 경찰서》</td><td>신경수</td><td>2022.7</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td>SBS</td><td>월화</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《인사이더》</td><td>이희명</td><td>2022.4</td><td>16</td><td>SBS</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《어게인 마이 라이프》</td><td>한철수</td><td>2022.5</td><td>12</td><td>tvN</td><td>금토</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
<tr><td>《황홀한 연인》</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td><td>2022.4</td><td>12</td><td>MBC</td><td>금토</td><td><img alt="진행중" src="img/ready.png" title="진행중"></td></tr>
</table>
</c:if>

</body>
</html>
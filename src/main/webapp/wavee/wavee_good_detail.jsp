<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body  id="wavve_body">

<aside id="left_menu">
<a href="WavveC"><img id="wavve_left_logo" alt="" src="img/wavve_mini_logo.png"> </a>
<ul>
<li>
<a href="WavveGoodC" style="color: gray">추천작</a>
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

<c:if test="${param.title_name eq '런닝맨' }">
<table id="wavve_good_detail_mainTbl">
<tr><td id="wavve_good_detail_aviTd"><iframe src='https://tv.naver.com/embed/24277569?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='800' HEIGHT='500' allow='autoplay' allowfullscreen></iframe></td></tr>
<tr><td><h2>런닝맨</h2></td></tr>
<tr><td id="wavve_good_detail_txtTd">걷지 말고 뛰어라! 런닝~맨!대한민국의 지상파 방송국 SBS에서 방영되는 예능 프로그램이다.대규모의 해외 팬덤을 보유하고 있는 국내 최고의 한류 예능이면서 단일예능 최다 회차 버라이어티 예능이다.</td></tr>
<tr><td id="wavve_good_detail_actorTd">출연</td>
<tr><td class="wavve_good_detail_td_txt">유재석, 지석진, 김종국, 하하, 송지효, 전소민, 양세찬</td></tr>
<tr><td id="wavve_good_detail_actorTd">장르</td>
<tr><td class="wavve_good_detail_td_txt">예능</td></tr>
<tr><td id="wavve_good_detail_actorTd">등급</td>
<tr><td class="wavve_good_detail_td_txt">15세 이상 시청가능</td></tr>
<tr><td id="wavve_good_detail_actorTd">배급사</td>
<tr><td class="wavve_good_detail_td_txt">SBS</td></tr>
<tr><td id="wavve_good_detail_buttonTd"><button onclick="window.history.back()">목록으로</button>
<button onclick="location.href='WavveGoodReviewC?title_name=${param.title_name }'">리뷰보기</button></td></tr>
</table>
</c:if>
<c:if test="${param.title_name eq '미운우리새끼' }">
<table id="wavve_good_detail_mainTbl">
<tr><td id="wavve_good_detail_aviTd"><iframe src='https://tv.naver.com/embed/24280735?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='800' HEIGHT='500' allow='autoplay' allowfullscreen></iframe></td></tr>
<tr><td><h2>미운우리새끼</h2></td></tr>
<tr><td id="wavve_good_detail_txtTd">미운 우리 새끼는 엄마가 화자가 되어 아들의 일상을 관찰하고,육아일기라는 장치를 통해 순간을 기록하는 프로그램이다.</td></tr>
<tr><td id="wavve_good_detail_actorTd">출연</td>
<tr><td class="wavve_good_detail_td_txt">신동엽, 서장훈,이상민, 김종국, 김희철, 이태성 등</td></tr>
<tr><td id="wavve_good_detail_actorTd">장르</td>
<tr><td class="wavve_good_detail_td_txt">예능</td></tr>
<tr><td id="wavve_good_detail_actorTd">등급</td>
<tr><td class="wavve_good_detail_td_txt">15세 이상 시청가능</td></tr>
<tr><td id="wavve_good_detail_actorTd">배급사</td>
<tr><td class="wavve_good_detail_td_txt">얼반웍스</td></tr>
<tr><td id="wavve_good_detail_buttonTd"><button onclick="window.history.back()">목록으로</button>
<button onclick="location.href='WavveGoodReviewC?title_name=${param.title_name }'">리뷰보기</button></td></tr>
</table>
</c:if>
<c:if test="${param.title_name eq '돌싱글즈2' }">
<table id="wavve_good_detail_mainTbl">
<tr><td id="wavve_good_detail_aviTd"><iframe src='https://tv.naver.com/embed/24272628?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='800' HEIGHT='500' allow='autoplay' allowfullscreen></iframe></td></tr>
<tr><td><h2>돌싱글즈2</h2></td></tr>
<tr><td id="wavve_good_detail_txtTd">MBN에서 방영 중인 돌싱을 대상으로 한 러브 버라이어티 프로그램.이혼 경력이 있는 돌싱들이 참여한다는 점이 가장 큰 특징이며,예전에 SBS에서 방영했던 짝과 다르게 시즌제이며,<br> 커플 매칭 이후에 동거 생활이 이어지는 부분이 가장 큰 차이점.</td></tr>
<tr><td id="wavve_good_detail_actorTd">출연</td>
<tr><td class="wavve_good_detail_td_txt">이혜영, 이지혜, 유세윤, 정겨운</td></tr>
<tr><td id="wavve_good_detail_actorTd">장르</td>
<tr><td class="wavve_good_detail_td_txt">예능</td></tr>
<tr><td id="wavve_good_detail_actorTd">등급</td>
<tr><td class="wavve_good_detail_td_txt">15세 이상 시청가능</td></tr>
<tr><td id="wavve_good_detail_actorTd">배급사</td>
<tr><td class="wavve_good_detail_td_txt">MBN</td></tr>
<tr><td id="wavve_good_detail_buttonTd"><button onclick="window.history.back()">목록으로</button>
<button onclick="location.href='WavveGoodReviewC?title_name=${param.title_name }'">리뷰보기</button></td></tr>
</table>
</c:if>
<c:if test="${param.title_name eq '신사와아가씨' }">
<table id="wavve_good_detail_mainTbl">
<tr><td id="wavve_good_detail_aviTd"><iframe src='https://tv.naver.com/embed/24314864?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='800' HEIGHT='500' allow='autoplay' allowfullscreen></iframe></td></tr>
<tr><td><h2>신사와아가씨</h2></td></tr>
<tr><td id="wavve_good_detail_txtTd">자신의 선택에 책임을 다하고 행복을 찾아가는 '아가씨'와 '신사'가<br> 만나면서 벌어지는파란만장한 이야기</td></tr>
<tr><td id="wavve_good_detail_actorTd">출연</td>
<tr><td class="wavve_good_detail_td_txt">지현우, 이세희, 강은탁, 박하나</td></tr>
<tr><td id="wavve_good_detail_actorTd">장르</td>
<tr><td class="wavve_good_detail_td_txt">예능</td></tr>
<tr><td id="wavve_good_detail_actorTd">등급</td>
<tr><td class="wavve_good_detail_td_txt">15세 이상 시청가능</td></tr>
<tr><td id="wavve_good_detail_actorTd">배급사</td>
<tr><td class="wavve_good_detail_td_txt">GnG</td></tr>
<tr><td id="wavve_good_detail_buttonTd"><button onclick="window.history.back()">목록으로</button>
<button onclick="location.href='WavveGoodReviewC?title_name=${param.title_name }'">리뷰보기</button></td></tr>
</table>
</c:if>
<c:if test="${param.title_name eq '놀면뭐하니' }">
<table id="wavve_good_detail_mainTbl">
<tr><td id="wavve_good_detail_aviTd"><iframe src='https://tv.naver.com/embed/24265670?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='800' HEIGHT='500' allow='autoplay' allowfullscreen></iframe></td></tr>
<tr><td><h2>놀면뭐하니</h2></td></tr>
<tr><td id="wavve_good_detail_txtTd">평소 스케줄 없는 날, "놀면 뭐하니?"라고 말하는,<br> 대한민국 개그맨 유재석이 펼치는 무한확장 유니버스 스토리.</td></tr>
<tr><td id="wavve_good_detail_actorTd">출연</td>
<tr><td class="wavve_good_detail_td_txt">유재석</td></tr>
<tr><td id="wavve_good_detail_actorTd">장르</td>
<tr><td class="wavve_good_detail_td_txt">예능</td></tr>
<tr><td id="wavve_good_detail_actorTd">등급</td>
<tr><td class="wavve_good_detail_td_txt">15세 이상 시청가능</td></tr>
<tr><td id="wavve_good_detail_actorTd">배급사</td>
<tr><td class="wavve_good_detail_td_txt">MBC</td></tr>
<tr><td id="wavve_good_detail_buttonTd"><button onclick="window.history.back()">목록으로</button>
<button onclick="location.href='WavveGoodReviewC?title_name=${param.title_name }'">리뷰보기</button></td></tr>
</table>
</c:if>
<c:if test="${param.title_name eq '피의게임' }">
<table id="wavve_good_detail_mainTbl">
<tr><td id="wavve_good_detail_aviTd"><iframe src='https://tv.naver.com/embed/23064937?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='800' HEIGHT='500' allow='autoplay' allowfullscreen></iframe></td></tr>
<tr><td><h2>피의게임</h2></td></tr>
<tr><td id="wavve_good_detail_txtTd">대한민국의 지상파 방송국 MBC에서 방영되는 리얼리티 서바이벌 프로그램.게임에 참가한 플레이어들이 외부와 단절된 공간에서 돈을 두고 치열한 경쟁을 펼치는 리얼리티 서바이벌이며,차별화된 룰 설계를 바탕으로 최후의 1인으로 살아남기 위한 플레이어들의 치열한 지략과 심리전을 펼칠 수 있게 다양한 생존 게임을 선보이는 프로그램이다.</td></tr>
<tr><td id="wavve_good_detail_actorTd">출연</td>
<tr><td class="wavve_good_detail_td_txt">정근우, 최연승, 박재일, 허준영, 송서현, 박지민, 퀸 와사비, 이태균, 덱스, 이나영, 박서휘(집사)</td></tr>
<tr><td id="wavve_good_detail_actorTd">장르</td>
<tr><td class="wavve_good_detail_td_txt">예능</td></tr>
<tr><td id="wavve_good_detail_actorTd">등급</td>
<tr><td class="wavve_good_detail_td_txt">15세 이상 시청가능</td></tr>
<tr><td id="wavve_good_detail_actorTd">배급사</td>
<tr><td class="wavve_good_detail_td_txt">MBC</td></tr>
<tr><td id="wavve_good_detail_buttonTd"><button onclick="window.history.back()">목록으로</button>
<button onclick="location.href='WavveGoodReviewC?title_name=${param.title_name }'">리뷰보기</button></td></tr>
</table>
</c:if>
<c:if test="${param.title_name eq '이렇게된이상청와대로간다' }">
<table id="wavve_good_detail_mainTbl">
<tr><td id="wavve_good_detail_aviTd"><iframe src='https://tv.naver.com/embed/23072046?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='800' HEIGHT='500' allow='autoplay' allowfullscreen></iframe></td></tr>
<tr><td><h2>이렇게된이상청와대로간다</h2></td></tr>
<tr><td id="wavve_good_detail_txtTd">문화체육관광부 장관으로 임명된 올림픽 금메달리스트 출신 셀럽 '정은'.
남편인 정치평론가 '성남'의 납치 사건을 맞닥뜨려 동분서주하는 1주일 사이 엉뚱하게도 대선 잠룡이 되어간다.
덩달아 대한민국의 정세가 격변하는 모습을 그린 웃프고 리얼한 정치 블랙코미디 드라마</td></tr>
<tr><td id="wavve_good_detail_actorTd">출연</td>
<tr><td class="wavve_good_detail_td_txt">김성령, 배해선, 백현진, 이학주</td></tr>
<tr><td id="wavve_good_detail_actorTd">장르</td>
<tr><td class="wavve_good_detail_td_txt">드라마</td></tr>
<tr><td id="wavve_good_detail_actorTd">등급</td>
<tr><td class="wavve_good_detail_td_txt">15세 이상 시청가능</td></tr>
<tr><td id="wavve_good_detail_actorTd">배급사</td>
<tr><td class="wavve_good_detail_td_txt">씨에스 픽처스</td></tr>
<tr><td id="wavve_good_detail_buttonTd"><button onclick="window.history.back()">목록으로</button>
<button onclick="location.href='WavveGoodReviewC?title_name=${param.title_name }'">리뷰보기</button></td></tr>
</table>
</c:if>
<c:if test="${param.title_name eq '쇼윈도' }">
<table id="wavve_good_detail_mainTbl">
<tr><td id="wavve_good_detail_aviTd"><iframe src='https://tv.naver.com/embed/23719906?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='800' HEIGHT='500' allow='autoplay' allowfullscreen></iframe></td></tr>
<tr><td><h2>쇼윈도</h2></td></tr>
<tr><td id="wavve_good_detail_txtTd">남편의 여자인 줄 모르고 불륜을 응원한 한 여자의 이야기를 그리는 미스터리 치정 멜로드라마</td></tr>
<tr><td id="wavve_good_detail_actorTd">출연</td>
<tr><td class="wavve_good_detail_td_txt">송윤아, 이성재, 전소민, 황찬성</td></tr>
<tr><td id="wavve_good_detail_actorTd">장르</td>
<tr><td class="wavve_good_detail_td_txt">드라마</td></tr>
<tr><td id="wavve_good_detail_actorTd">등급</td>
<tr><td class="wavve_good_detail_td_txt">15세 이상 시청가,19세 이상 시청가(1,3회)</td></tr>
<tr><td id="wavve_good_detail_actorTd">배급사</td>
<tr><td class="wavve_good_detail_td_txt">MBC</td></tr>
<tr><td id="wavve_good_detail_buttonTd"><button onclick="window.history.back()">목록으로</button>
<button onclick="location.href='WavveGoodReviewC?title_name=${param.title_name }'">리뷰보기</button></td></tr>
</table>
</c:if>
<c:if test="${param.title_name eq '엉클' }">
<table id="wavve_good_detail_mainTbl">
<tr><td id="wavve_good_detail_aviTd"><iframe src='https://tv.naver.com/embed/24023418?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='800' HEIGHT='500' allow='autoplay' allowfullscreen></iframe></td></tr>
<tr><td><h2>엉클</h2></td></tr>
<tr><td id="wavve_good_detail_txtTd">누나의 청천벽력 이혼으로 얼결에 초딩조카를 떠맡은 쓰레기루저 뮤지션 삼촌의 코믹 유쾌 성장 생존기</td></tr>
<tr><td id="wavve_good_detail_actorTd">출연</td>
<tr><td class="wavve_good_detail_td_txt">오정세, 전혜진, 이경훈, 박선영, 이상우, 이시원, 황우슬혜</td></tr>
<tr><td id="wavve_good_detail_actorTd">장르</td>
<tr><td class="wavve_good_detail_td_txt">드라마</td></tr>
<tr><td id="wavve_good_detail_actorTd">등급</td>
<tr><td class="wavve_good_detail_td_txt">15세 이상 시청가능</td></tr>
<tr><td id="wavve_good_detail_actorTd">배급사</td>
<tr><td class="wavve_good_detail_td_txt">TV조선</td></tr>
<tr><td id="wavve_good_detail_buttonTd"><button onclick="window.history.back()">목록으로</button>
<button onclick="location.href='WavveGoodReviewC?title_name=${param.title_name }'">리뷰보기</button></td></tr>
</table>
</c:if>
<c:if test="${param.title_name eq '문명' }">
<table id="wavve_good_detail_mainTbl">
<tr><td id="wavve_good_detail_aviTd"><iframe src='https://tv.naver.com/embed/24135786?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='800' HEIGHT='500' allow='autoplay' allowfullscreen></iframe></td></tr>
<tr><td><h2>문명</h2></td></tr>
<tr><td id="wavve_good_detail_txtTd">평소 스케줄 없는 날, "놀면 뭐하니?"라고 말하는,<br> 대한민국 개그맨 유재석이 펼치는 무한확장 유니버스 스토리.</td></tr>
<tr><td id="wavve_good_detail_actorTd">출연</td>
<tr><td class="wavve_good_detail_td_txt">유재석</td></tr>
<tr><td id="wavve_good_detail_actorTd">장르</td>
<tr><td class="wavve_good_detail_td_txt">예능</td></tr>
<tr><td id="wavve_good_detail_actorTd">등급</td>
<tr><td class="wavve_good_detail_td_txt">15세 이상 시청가능</td></tr>
<tr><td id="wavve_good_detail_actorTd">배급사</td>
<tr><td class="wavve_good_detail_td_txt">MBC</td></tr>
<tr><td id="wavve_good_detail_buttonTd"><button onclick="window.history.back()">목록으로</button>
<button onclick="location.href='WavveGoodReviewC?title_name=${param.title_name }'">리뷰보기</button></td></tr>
</table>
</c:if>
<c:if test="${param.title_name eq '페리메이슨' }">
<table id="wavve_good_detail_mainTbl">
<tr><td id="wavve_good_detail_aviTd"><iframe src='https://tv.naver.com/embed/24104524?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='800' HEIGHT='500' allow='autoplay' allowfullscreen></iframe></td></tr>
<tr><td><h2>페리메이슨</h2></td></tr>
<tr><td id="wavve_good_detail_txtTd">1932년 로스앤젤레스를 배경으로 변호사 페리 메이슨의 이야기를 그린 법정 미스터리 드라마</td></tr>
<tr><td id="wavve_good_detail_actorTd">출연</td>
<tr><td class="wavve_good_detail_td_txt">매튜 리즈, 타티아나 마슬라니, 존 리스고, 크리스 초크,줄리엣 라이선스</td></tr>
<tr><td id="wavve_good_detail_actorTd">장르</td>
<tr><td class="wavve_good_detail_td_txt">드라마</td></tr>
<tr><td id="wavve_good_detail_actorTd">등급</td>
<tr><td class="wavve_good_detail_td_txt">15세 이상 시청가능</td></tr>
<tr><td id="wavve_good_detail_actorTd">배급사</td>
<tr><td class="wavve_good_detail_td_txt">미국 HBO</td></tr>
<tr><td id="wavve_good_detail_buttonTd"><button onclick="window.history.back()">목록으로</button>
<button onclick="location.href='WavveGoodReviewC?title_name=${param.title_name }'">리뷰보기</button></td></tr>
</table>
</c:if>
<c:if test="${param.title_name eq '베리' }">
<table id="wavve_good_detail_mainTbl">
<tr><td id="wavve_good_detail_aviTd"><iframe src='https://tv.naver.com/embed/24118435?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='800' HEIGHT='500' allow='autoplay' allowfullscreen></iframe></td></tr>
<tr><td><h2>베리</h2></td></tr>
<tr><td id="wavve_good_detail_txtTd">청부살인업자 배리가 마지못해 LA로 누군가를 죽이러 가게 되면서 벌어지는 코미디 이야기</td></tr>
<tr><td id="wavve_good_detail_actorTd">출연</td>
<tr><td class="wavve_good_detail_td_txt">빌 헤이더, 헨리 윙클러, 스티븐 루트, 사라 골드버그, 글렌 플레쉬러, 폴라 뉴섬</td></tr>
<tr><td id="wavve_good_detail_actorTd">장르</td>
<tr><td class="wavve_good_detail_td_txt">드라마</td></tr>
<tr><td id="wavve_good_detail_actorTd">등급</td>
<tr><td class="wavve_good_detail_td_txt">15세 이상 시청가능</td></tr>
<tr><td id="wavve_good_detail_actorTd">배급사</td>
<tr><td class="wavve_good_detail_td_txt">미국 HBO</td></tr>
<tr><td id="wavve_good_detail_buttonTd"><button onclick="window.history.back()">목록으로</button>
<button onclick="location.href='WavveGoodReviewC?title_name=${param.title_name }'">리뷰보기</button></td></tr>
</table>
</c:if>
<c:if test="${param.title_name eq '블랙레이디' }">
<table id="wavve_good_detail_mainTbl">
<tr><td id="wavve_good_detail_aviTd"><iframe src='https://tv.naver.com/embed/24104811?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='800' HEIGHT='500' allow='autoplay' allowfullscreen></iframe></td></tr>
<tr><td><h2>블랙레이디 스케치 쇼</h2></td></tr>
<tr><td id="wavve_good_detail_txtTd">흑인 여성들의, 흑인 여성들에 의한, 흑인 여성들을 위한 코미디 드라마. 흑인 여성 4명이 주연을 맡은 최초의 드라마로 ‘로빈’, ‘애슐리’, ‘퀸타’, ‘개브리엘’ 네 친구의 환장하는 일상을 담았다.</td></tr>
<tr><td id="wavve_good_detail_actorTd">출연</td>
<tr><td class="wavve_good_detail_td_txt">로빈 테데, 애슐리 니콜블랙 가브리엘 데닛, 퀸타 브런슨, 스카이  타운센드</td></tr>
<tr><td id="wavve_good_detail_actorTd">장르</td>
<tr><td class="wavve_good_detail_td_txt">드라마</td></tr>
<tr><td id="wavve_good_detail_actorTd">등급</td>
<tr><td class="wavve_good_detail_td_txt">15세 이상 시청가능</td></tr>
<tr><td id="wavve_good_detail_actorTd">배급사</td>
<tr><td class="wavve_good_detail_td_txt">미국 HBO</td></tr>
<tr><td id="wavve_good_detail_buttonTd"><button onclick="window.history.back()">목록으로</button>
<button onclick="location.href='WavveGoodReviewC?title_name=${param.title_name }'">리뷰보기</button></td></tr>
</table>
</c:if>
<c:if test="${param.title_name eq '아웃사이더' }">
<table id="wavve_good_detail_mainTbl">
<tr><td id="wavve_good_detail_aviTd"><iframe WIDTH='800' HEIGHT='500' src="https://www.youtube.com/embed/I03MAkQ_OyM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td></tr>
<tr><td><h2>아웃사이더</h2></td></tr>
<tr><td id="wavve_good_detail_txtTd">애팔래치아를 배경으로 삶의 터전을 지키기 위해 투쟁을 하는 파렐의 이야기</td></tr>
<tr><td id="wavve_good_detail_actorTd">출연</td>
<tr><td class="wavve_good_detail_td_txt">조 앤더슨, 데이빗 모스, 라이언 허스트, 질리언 알렉시,카일 갈너</td></tr>
<tr><td id="wavve_good_detail_actorTd">장르</td>
<tr><td class="wavve_good_detail_td_txt">드라마</td></tr>
<tr><td id="wavve_good_detail_actorTd">등급</td>
<tr><td class="wavve_good_detail_td_txt">15세 이상 시청가능</td></tr>
<tr><td id="wavve_good_detail_actorTd">배급사</td>
<tr><td class="wavve_good_detail_td_txt">미국 HBO</td></tr>
<tr><td id="wavve_good_detail_buttonTd"><button onclick="window.history.back()">목록으로</button>
<button onclick="location.href='WavveGoodReviewC?title_name=${param.title_name }'">리뷰보기</button></td></tr>
</table>
</c:if>
<c:if test="${param.title_name eq '네버스' }">
<table id="wavve_good_detail_mainTbl">
<tr><td id="wavve_good_detail_aviTd"><iframe src='https://tv.naver.com/embed/23857373?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='800' HEIGHT='500' allow='autoplay' allowfullscreen></iframe></td></tr>
<tr><td><h2>더 네버스</h2></td></tr>
<tr><td id="wavve_good_detail_txtTd">1896년 8월, 영국 상공에 정체를 알 수 없는 물체가 나타난 이후, 특별한 능력을 가진 사람들인 '터치드'가 나타난다. 미스터리한 과부 아멜리와 트루와 그녀의 절친인 발명가 페넌스 어데어가 터치드를 위한 보금자리를 만들며 그들을 위협하는 적과 맞서 싸운다.</td></tr>
<tr><td id="wavve_good_detail_actorTd">출연</td>
<tr><td class="wavve_good_detail_td_txt">라우라 도넬리, 안 스켈리, 올리비아 윌러엄즈, 제임스 노튼, 톰 릴리, 핍 토렌즈</td></tr>
<tr><td id="wavve_good_detail_actorTd">장르</td>
<tr><td class="wavve_good_detail_td_txt">드라마</td></tr>
<tr><td id="wavve_good_detail_actorTd">등급</td>
<tr><td class="wavve_good_detail_td_txt">15세 이상 시청가능</td></tr>
<tr><td id="wavve_good_detail_actorTd">배급사</td>
<tr><td class="wavve_good_detail_td_txt">미국 HBO</td></tr>
<tr><td id="wavve_good_detail_buttonTd"><button onclick="window.history.back()">목록으로</button>
<button onclick="location.href='WavveGoodReviewC?title_name=${param.title_name }'">리뷰보기</button></td></tr>
</table>
</c:if>

</body>
</html>
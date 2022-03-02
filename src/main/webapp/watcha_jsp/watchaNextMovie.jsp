<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <% pageContext.setAttribute("replaceChar", "\n"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
background-color: black;
}
</style>
</head>
<body>
<aside style="outline-color:white;" id="watcha_left_menu">
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
<a href="WatchaNextC" style="color:gray;">상영 예정작</a>
</li>
</ul>
</aside>
<!-- <table style="width:100%; ">
        <tr>
            <td id="slideTd">
            <div class="bxslider">
                <div><a href="WavveGoodDetailC?title_name=쇼윈도"><img src="img/nisiajokyongyo.jfif"></a></div>
                <div><a href="WavveGoodDetailC?title_name=이렇게된이상청와대로간다"><img src="img/minari.jfif"></a></div>
                <div><a href="WavveGoodDetailC?title_name=돌싱글즈2"><img src="img/money.jfif"></a></div>
                <div><a href="WavveGoodDetailC?title_name=놀면뭐하니"><img src="img/ten months.jfif"></a></div>
                <div><a href="WavveGoodDetailC?title_name=피의게임"><img src="img/bossComedian.jfif"></a></div>

              </div>
            </td>   
        </tr>
    </table>
 --><table style="" class="watchaNextMovieTbl">
<tr>

<td colspan="3" style="color:gray;font-size: 50pt; font-family: fantasy;">1월 1주 상영 예정작</td>
</tr>
<tr>
<td>
  <img src="img/nisiajokyongyo.jfif" style=""id="watcha_next_img">
</td>
<td>
  <img src="img/minari.jfif" style=""id="watcha_next_img">
</td>
<td>
  <img src="img/money.jfif" style=""id="watcha_next_img">
</td>
</tr>
<tr>
<td>
          <h1 style="color: #ff0558">W-Exclusive</h1>

</td>
<td>
          <h1 style="color: #ff0558">#!헐 왓챠에!</h1>

</td>
<td>
          <h2 style="color: #ff0558">2022<br> 왓챠 포춘쿠키</h2>

</td>
</tr>
<tr>
<td>
          <h2>「니시아적영요<br> ・너는 나의 영광・」</h2>

</td>
<td>
          <h2>「미나리」</h2>
</td>
<td>
     <h2>「돈」</h2>
</td>
</tr>
<tr>
<td>
          <h3>디리러바 & 양양,<br>비주얼로 서사 하나 뚝딱!</h3>

</td>
<td>
          <h3>원더풀 미나리 원더풀 윤여정! <br>새해를 여는 따뜻한 작품</h3>

</td>
<td>
          <h3>제목으로 보는 올해 운세!<br> 어떤 작품이 가장 먼저 보이나요?</h3>

</td>
</tr>
<tr>
<td>
  <img style=""src="img/ten months.jfif" id="watcha_next_img">
</td>
<td>
  <img src="img/bossComedian.jfif"id="watcha_next_img">
</td>
<td></td>
</tr>
<tr>
<td>
          <h2 style="color: #ff0558">1월1주 <br>NEW</h2>
</td>
<td>
          <h1 style="color: #ff0558">W-Exclusive</h1>
</td>
</tr>
<tr>
<td><h2>「십개월의 미래」<br> 「러덜리스」<br> 「브로드처치 시즌 2」 등</h2></td>
<td>
          <h2>「나의 직장상사는<br> 코미디언」</h2>
</td>
</tr>
<tr>
<td>
          

</td>
<td>
          <h3>제73회 에미상 3관왕 달성!</h3>

</td>
</tr>
  </table>









</body>
</html>
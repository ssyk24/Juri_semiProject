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
<body>

<table id="contentTbl">
        <tr>
            <td id="slideTd">
            <div class="bxslider">
                <div><a href="WavveGoodDetailC?title_name=쇼윈도"><img src="img/slider/slider1.jpg"></a></div>
                <div><a href="WavveGoodDetailC?title_name=이렇게된이상청와대로간다"><img src="img/slider/slider2.jpg"></a></div>
                <div><a href="WavveGoodDetailC?title_name=돌싱글즈2"><img src="img/slider/slider3.jpg"></a></div>
                <div><a href="WavveGoodDetailC?title_name=놀면뭐하니"><img src="img/slider/slider4.jpg"></a></div>
                <div><a href="WavveGoodDetailC?title_name=피의게임"><img src="img/slider/slider5.png"></a></div>
                <div><a href="WavveGoodDetailC?title_name=런닝맨"><img src="img/slider/slider6.jpg"></a></div>
                <div><a href="WavveGoodDetailC?title_name=미운우리새끼"><img src="img/slider/slider7.jpg"></a></div>
              </div>
            </td>   
        </tr>
    </table>
	<table id="index_bottom_tbl">
		<tr>
			<td colspan="5" id="index_bottom_title"><a href="netflixC"><img alt=""src="img/netflix/netflix_logo.png" id="index_bottom_logo"></a>
		<a href="n_recommendC"><img alt="" src="img/index_icon/reco_wh.png" id="index_icon_img" title="추천작"></a>
		<a href="n_reviewC"><img alt="" src="img/index_icon/review_wh.png" id="index_icon_img" title="리뷰게시판"></a>
		<a href="n_bestC"><img alt="" src="img/index_icon/best_wh.png" id="index_icon_img" title="명장면게시판"></a>
		<a href="n_soonC"><img alt="" src="img/index_icon/calendar_wh.png" id="index_icon_img" title="상영예정작"></a></td>
		</tr>
		<tr>
			<td><img alt="" src="img/netflix/n_indexImg/n_h_bkr1.jpg" id="index_bottom_contentImg" onclick="location.href='n_recommDetailC?n_b_no=1'"> </td>
			<td><img alt="" src="img/netflix/n_indexImg/n_h_bkr2.jpg" id="index_bottom_contentImg" onclick="location.href='n_recommDetailC?n_b_no=2'"> </td>
			<td><img alt="" src="img/netflix/n_indexImg/n_h_bkr3.jpg" id="index_bottom_contentImg" onclick="location.href='n_recommDetailC?n_b_no=3'"> </td>
			<td><img alt="" src="img/netflix/n_indexImg/n_h_bkr4.jpg" id="index_bottom_contentImg" onclick="location.href='n_recommDetailC?n_b_no=4'"> </td>
			<td><img alt="" src="img/netflix/n_indexImg/n_h_bkr5.jpg" id="index_bottom_contentImg" onclick="location.href='n_recommDetailC?n_b_no=5'"> </td>
		</tr>
	</table>
	<table id="index_bottom_tbl">
		<tr>
			<td colspan="5" id="index_bottom_title"><a href="WatchaHC"><img alt=""src="img/watcha_logo.png" id="index_bottom_logo"></a>
			<a href="WatchaRecomC"><img alt="" src="img/index_icon/reco_wh.png" id="index_icon_img" title="추천작"></a>
		<a href="WatchaReviewC"><img alt="" src="img/index_icon/review_wh.png" id="index_icon_img" title="리뷰게시판"></a>
		<a href="WatchaBestSceneC"><img alt="" src="img/index_icon/best_wh.png" id="index_icon_img" title="명장면게시판"></a>
		<a href="WatchaNextC"><img alt="" src="img/index_icon/calendar_wh.png" id="index_icon_img" title="상영예정작"></a>
			</td>
		</tr>
		
		<tr>
			<td><a href="WatchaRecomDetailC?movieTitle=더듬이TV:우당탕탕 안테나"> <img alt="" src="img/anthena.jpg" id="index_bottom_contentImg"></a> </td>
			<td><a href="WatchaRecomDetailC?movieTitle=그림자 미녀"><img alt="" src="img/shadowgirl.jpg" id="index_bottom_contentImg"></a> </td>
			<td><a href="WatchaRecomDetailC?movieTitle=디 액트"><img alt="" src="img/the act.jpg" id="index_bottom_contentImg"> </a></td>
			<td><a href="WatchaRecomDetailC?movieTitle=와이 우먼 킬"><img alt="" src="img/whywomankill.jpg" id="index_bottom_contentImg"></a> </td>
			<td><a href="WatchaRecomDetailC?movieTitle=웨인"><img alt="" src="img/wane.jpg" id="index_bottom_contentImg"></a> </td>
		</tr>
	</table>
	<table id="index_bottom_tbl">
		<tr>
			<td colspan="5" id="index_bottom_title"><a href="DisneyHomeC"><img alt=""src="img/disney_logo.png" id="index_bottom_logo"></a>
			<a href="DisneyRecomandC"><img alt="" src="img/index_icon/reco_wh.png" id="index_icon_img" title="추천작"></a>
		<a href="DisneyReviewC"><img alt="" src="img/index_icon/review_wh.png" id="index_icon_img" title="리뷰게시판"></a>
		<a href="DisneyBestC"><img alt="" src="img/index_icon/best_wh.png" id="index_icon_img" title="명장면게시판"></a>
		<a href="DisneyUpcomingC"><img alt="" src="img/index_icon/calendar_wh.png" id="index_icon_img" title="상영예정작"></a>
			</td>
		</tr>

		<tr>
			<td><a href="DisneyRecomandDetailC?val=1_1"><img alt="" src="img/disney_index1.jpg" id="index_bottom_contentImg"></a> </td>
			<td><a href="DisneyRecomandDetailC?val=1_2"><img alt="" src="img/disney_index2.jpg" id="index_bottom_contentImg"></a> </td>
			<td><a href="DisneyRecomandDetailC?val=1_3"><img alt="" src="img/disney_index3.jpg" id="index_bottom_contentImg"></a> </td>
			<td><a href="DisneyRecomandDetailC?val=1_4"><img alt="" src="img/disney_index4.jpg" id="index_bottom_contentImg"></a> </td>
			<td><a href="DisneyRecomandDetailC?val=1_5"><img alt="" src="img/disney_index5.jpg" id="index_bottom_contentImg"></a> </td>
		</tr>
	</table>
	<table id="index_bottom_tbl">
		<tr>
			<td colspan="5" id="index_bottom_title"><a href="WavveC"><img alt=""src="img/wavve1.png" id="index_bottom_logo"></a>
			<a href="WavveGoodC"><img alt="" src="img/index_icon/reco_wh.png" id="index_icon_img" title="추천작"></a>
		<a href="WavveReviewC"><img alt="" src="img/index_icon/review_wh.png" id="index_icon_img" title="리뷰게시판"></a>
		<a href="WavveBestC"><img alt="" src="img/index_icon/best_wh.png" id="index_icon_img" title="명장면게시판"></a>
		<a href="WavveNextC"><img alt="" src="img/index_icon/calendar_wh.png" id="index_icon_img" title="상영예정작"></a>
			</td>
		</tr>

		<tr>
			<td><a href="WavveGoodDetailC?title_name=피의게임"><img alt="" src="img/wavee_good/blood.jpg" id="index_bottom_contentImg"></a></td>
			<td><a href="WavveGoodDetailC?title_name=이렇게된이상청와대로간다"><img alt="" src="img/wavee_good/bluehouse.jpg" id="index_bottom_contentImg"> </a></td>
			<td><a href="WavveGoodDetailC?title_name=쇼윈도"><img alt="" src="img/wavee_good/showwindow.jpg" id="index_bottom_contentImg"></a> </td>
			<td><a href="WavveGoodDetailC?title_name=엉클"><img alt="" src="img/wavee_good/uncle.jpg" id="index_bottom_contentImg"> </a></td>
			<td><a href="WavveGoodDetailC?title_name=문명"><img alt="" src="img/wavee_good/island.jpg" id="index_bottom_contentImg"> </a></td>
		</tr>
	</table>
</body>
</html>
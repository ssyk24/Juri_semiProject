<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐거움을 주리</title>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/wavee.css">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/index_slider.css">
<link rel="stylesheet" href="css/wavve_best.css">
<link rel="stylesheet" href="css/disney.css">
<link rel="stylesheet" href="css/netflix.css">
<link rel="stylesheet" href="css/watcha.css">
<link rel="stylesheet" href="css/watchaSlideNext.css">

<script type="text/javascript" src="js/reg_authority.js"></script>
<script type="text/javascript" src="js/disney_js.js"></script>
<script type="text/javascript" src="js/go.js"></script>
<script type="text/javascript" src="js/validCheck.js"></script>
<script type="text/javascript" src="js/check.js"></script>
<script type="text/javascript" src="js/netflix.js"></script>
<script type="text/javascript" src="js/netflix.js"></script>
<script type="text/javascript" src="js/watchaBestScene.js"></script>
<script type="text/javascript" src="js/watchaReview.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  <script>
    $(document).ready(function(){
        $('.bxslider').bxSlider({
        mode:'fade',
        auto: true,
        autoControls: false,
        stopAutoOnClick: false,
        pager: false,
        slideWidth: 1700,
        pause: 3000,
        touchEnabled : (navigator.maxTouchPoints > 0)
      });
    });
  </script>
</head>
<body>
<table id="indexTitleTbl">
	<tr>

		<td id="indexTitle"><a href="HomeC"><img id="title_logo" src="img/title_logo.png"></a></td>
		
		<td id="index_login"><jsp:include page="${loginPage }"></jsp:include> </td>
	</tr>
</table>
<table id="indexMenuTbl">
	<tr>
		<td class="index_menu_td"><a href="netflixC"><img class="menu_logo" src="img/netflix/netflix_logo3.png"></a></td>
		<td class="index_menu_td"><a href="WatchaHC"><img class="menu_logo" src="img/watcha_logo.png"></a></td>
		<td class="index_menu_td"><a href="DisneyHomeC"><img class="menu_logo" src="img/disney_logo.png"></a></td>
		<td class="index_menu_td"><a href="WavveC"><img class="menu_logo" src="img/wavve1.png"></a></td>
	</tr>
</table>
<jsp:include page="${contentPage }"></jsp:include>







</body>
</html>
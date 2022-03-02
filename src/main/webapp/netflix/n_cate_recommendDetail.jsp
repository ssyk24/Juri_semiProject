<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="netflix_body">


	<div class='n_contentPageAllBox'>

		<table id="n_categoryLeft">
			<tr>
				<td align="center"><a href="n_categoryC"> <img
						src="img/netflix/netflix_logo.png" id="n_logo" /></a></td>
			</tr>
			<tr>
				<td align="center" id="n_cate"><a href="n_recommendC">추천</a></td>
			</tr>
			<tr>
				<td align="center" id="n_cate"><a href="n_reviewC">리뷰</a></td>
			</tr>
			<tr>
				<td align="center" id="n_cate"><a href="n_bestC">명장면</a></td>
			</tr>
			<tr>
				<td align="center" id="n_cate"><a href="n_soonC">상영 예정작</a></td>
			</tr>
		</table>




		<div id="n_categoryRight">
			<div id="n_recomDetailAllTable">
				<table id="n_recomDetailMain">

					<tr>
						<td align="center">${n_movie.n_b_preview }</td>
					</tr>

					<tr>
						<td id="n_recomDetailTitle"> <input type="hidden" id="test" value="${n_movie.n_b_title }"> ${n_movie.n_b_title }</td>
					</tr>
				</table>

				<table id="n_recomDetailMain">
					<tr>
						<td colspan="3" rowspan="4" id="n_recomDetailStory">${n_movie.n_b_story }</td>
					<tr>
						<td id="n_recomDetailetc"><h3>출연</h3>${n_movie.n_b_actor }</td>
					</tr>

					<tr>
						<td id="n_recomDetailetc"><h3>장르</h3>${n_movie.n_b_genre }</td>
					</tr>
					<tr>
						<td id="n_recomDetailetc"><h3>등급</h3>${n_movie.n_b_rank }</td>
					</tr>
				</table>

				<table id="n_recomDetailMain">
					<tr>
						<td align="center" id="n_recomDetailBtn">
							<button onclick="n_checkReview()">리뷰 보기</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button onclick="history.go(-1)">돌아가기</button>
						</td>
					</tr>
				</table>
			</div>
		</div>


	</div>

</body>
</html>
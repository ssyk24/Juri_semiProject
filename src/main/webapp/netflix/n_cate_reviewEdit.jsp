<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 엔터 치환하기 위해서 설정 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<!-- <tr> <td id="n_categoryLeftLast"></td> </tr> -->
		</table>

		<div id="n_categoryRight1">
			<form action="n_reviewEditC" method="post">
				<table id="n_reviewDetailTable">
					<tr>
						<td colspan="4" id="n_reviewWriteTitle" align="center"><h2>리뷰글
								수정</h2></td>
					</tr>

					<tr>
						<td style="height: 10px;"></td>
					</tr>

					<tr>
						<td id="n_reviewWrite1">장르</td>
						<td id="n_reviewWrite2">&nbsp;&nbsp;<select id="n_genreSelect"
							name="n_genreSelect">
								<option value="${n_review.n_genre}" selected>
									${n_review.n_genre}</option>
								<option value="영화">영화</option>
								<option value="애니메이션">애니메이션</option>
								<option value="드라마">드라마</option>
						</select><input value="${sessionScope.accountInfo.id }"
							style="width: 50px;" type="hidden" name="n_id"></td>

						<td id="n_reviewWrite1">별점</td>
						<td id="n_reviewWrite2">&nbsp;&nbsp;<select
							id="n_reviewWStar" name="n_reviewWStar">
								<option value="${n_review.n_grade}" selected>${n_review.n_grade}</option>
								<option value="⭐⭐⭐⭐⭐">⭐⭐⭐⭐⭐</option>
								<option value="⭐⭐⭐⭐">⭐⭐⭐⭐</option>
								<option value="⭐⭐⭐">⭐⭐⭐</option>
								<option value="⭐⭐">⭐⭐</option>
								<option value="⭐">⭐</option>
						</select></td>
					</tr>

					<tr>
						<td id="n_reviewWrite1">제목</td>
						<td id="n_reviewWrite2">&nbsp;&nbsp;<input
							id="n_reviewEditTxt" name="n_reviewWFreeTitle"
							value="${n_review.n_freetitle}"></td>

						<td id="n_reviewWrite1">영화제목</td>
						<td id="n_reviewWrite2">&nbsp;&nbsp;<input
							id="n_reviewEditTxt" name="n_reviewWMovieTitle"
							value="${n_review.n_movietitle}"></td>
					</tr>
					<%
					pageContext.setAttribute("rn", "\r\n");
					%>
					<tr>
						<td id="n_reviewWrite3">내용</td>
						<td id="n_reviewWrite3_1" colspan="3">&nbsp;&nbsp;<textarea
								id="n_reviewWTxt1" name="n_reviewWTxt"> <c:out
									value="${fn:replace(n_review.n_txt, '<br>', rn)}" /></textarea></td>
					</tr>
					<tr>
						<td colspan="4" align="center">
							<button name="n_no" value=${param.n_no }>수정완료</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>


</body>
</html>
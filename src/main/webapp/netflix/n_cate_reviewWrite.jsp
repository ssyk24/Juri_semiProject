<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<form action="n_reviewWriteC" method="post">
				<table id="n_reviewDetailTable">
					<tr>
						<td colspan="4" id="n_reviewWriteTitle" align="center"><h2>리뷰글
								등록</h2></td>
					</tr>
					
					<tr>
						<td style="height: 10px;"></td>
					</tr>

					<tr>
						<td id="n_reviewWrite1">장르</td>
						<td id="n_reviewWrite2"><select id="n_genreSelect"
							name="n_genreSelect">
								<option value="카테고리" selected disabled hidden>카테고리</option>
								<option value="영화">영화</option>
								<option value="애니메이션">애니메이션</option>
								<option value="드라마">드라마</option>
						</select> <input value="${sessionScope.accountInfo.id }"
							style="width: 50px;" type="hidden" name="n_id"></td>

						<td id="n_reviewWrite1">별점</td>
						<td id="n_reviewWrite2"><select id="n_reviewWStar"
							name="n_reviewWStar">
								<!-- <option value="" selected disabled hidden>별점선택</option> -->
								<option value="⭐⭐⭐⭐⭐">⭐⭐⭐⭐⭐</option>
								<option value="⭐⭐⭐⭐">⭐⭐⭐⭐</option>
								<option value="⭐⭐⭐">⭐⭐⭐</option>
								<option value="⭐⭐">⭐⭐</option>
								<option value="⭐">⭐</option>
						</select></td>
					</tr>

					<tr>
						<td id="n_reviewWrite1">제목</td>
						<td id="n_reviewWrite2"><input id="n_reviewWTitle1"
							name="n_reviewWFreeTitle" placeholder="자유롭게 작성해주세요"></td>

						<td id="n_reviewWrite1">영화제목</td>
						<td id="n_reviewWrite2"><input id="n_reviewWTitle2"
							name="n_reviewWMovieTitle" placeholder="영화제목만 풀네임으로 입력해주세요"></td>
					</tr>

					<tr>
						<td id="n_reviewWrite3">내용</td>
						<td id="n_reviewWrite3_1" colspan="3"><textarea
								id="n_reviewWTxt1" name="n_reviewWTxt"></textarea></td>
					</tr>
					<tr>
						<td colspan="4" align="center" id="n_reviewWrite4">
							<button onclick="return n_reviewWritePost()">등록하기</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
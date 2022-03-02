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
		</table>




		<div id="n_categoryRight">

			<table id="n_recom_kr">
				<tr>
					<td colspan="3" id="n_recom_title1">오늘 한국의 TOP 5 콘텐츠</td>
				</tr>
				
				<tr>
					<td id="n_bestContent1">TOP 1</td>
					<td id="n_bestContent2">TOP 2</td>
					<td id="n_bestContent2">TOP 3</td>
				</tr>
				<tr>
					<td align="center"><img src="img/netflix/n_recomm/n_Bkr1.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=1'"></td>
					<td align="center"><img src="img/netflix/n_recomm/n_Bkr2.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=2'"></td>
					<td align="center"><img src="img/netflix/n_recomm/n_Bkr3.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=3'"></td>
				</tr>
				<tr>
					<td id="n_bestContent3">고요의 바다</td>
					<td id="n_bestContent3">돈 룩 업</td>
					<td id="n_bestContent3">모가디슈</td>
				</tr>
			</table>

			<table id="n_recom_kr">
				<tr>
					<td id="n_bestContent2">TOP 4</td>
					<td id="n_bestContent2">TOP 5</td>
				</tr>
				<tr>
					<td align="center"><img src="img/netflix/n_recomm/n_Bkr4.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=4'"></td>
					<td align="center"><img src="img/netflix/n_recomm/n_Bkr5.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=5'"></td>
				</tr>
				<tr>
					<td id="n_bestContent3">위쳐</td>
					<td id="n_bestContent3">브리저튼</td>
				</tr>
			</table>

			<table id="n_recom_drama">

				<tr>
					<td colspan="3" id="n_recom_title1">드라마 TOP 5</td>
				</tr>
				
				<tr>
					<td id="n_bestContent1">TOP 1</td>
					<td id="n_bestContent2">TOP 2</td>
					<td id="n_bestContent2">TOP 3</td>
				</tr>
				<tr>
					<td align="center"><img src="img/netflix/n_recomm/n_Bdrama1.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=1'"></td>
					<td align="center"><img src="img/netflix/n_recomm/n_Bdrama2.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=6'"></td>
					<td align="center"><img src="img/netflix/n_recomm/n_Bdrama3.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=7'"></td>
				</tr>
				<tr>
					<td id="n_bestContent3">고요의 바다</td>
					<td id="n_bestContent3">그 해 우리는</td>
					<td id="n_bestContent3">에밀리, 파리에 가다</td>
				</tr>
			</table>

			<table id="n_recom_drama">
				<tr>
					<td id="n_bestContent2">TOP 4</td>
					<td id="n_bestContent2">TOP 5</td>
				</tr>
				<tr>
					<td align="center"><img src="img/netflix/n_recomm/n_Bdrama4.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=8'"></td>
					<td align="center"><img src="img/netflix/n_recomm/n_Bdrama5.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=4'"></td>
				</tr>
				<tr>
					<td id="n_bestContent3">원헌드레드</td>
					<td id="n_bestContent3">위쳐</td>
				</tr>
			</table>


			<table id="n_recom_movie">
				<tr>
					<td colspan="3" id="n_recom_title1">영화 TOP 5</td>
				</tr>
				<tr>
					<td id="n_bestContent1">TOP 1</td>
					<td id="n_bestContent2">TOP 2</td>
					<td id="n_bestContent2">TOP 3</td>
				</tr>
				<tr>
					<td align="center"><img src="img/netflix/n_recomm/n_Bmovie1.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=2'"></td>
					<td align="center"><img src="img/netflix/n_recomm/n_Bmovie2.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=3'"></td>
					<td align="center"><img src="img/netflix/n_recomm/n_Bmovie3.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=9'"></td>
				</tr>
				<tr>
					<td id="n_bestContent3">돈 룩 업</td>
					<td id="n_bestContent3">모가디슈</td>
					<td id="n_bestContent3">스파이더맨: 홈커밍</td>
				</tr>
			</table>

			<table id="n_recom_movie">
				<tr>
					<td id="n_bestContent2">TOP 4</td>
					<td id="n_bestContent2">TOP 5</td>
				</tr>
				<tr>
					<td align="center"><img src="img/netflix/n_recomm/n_Bmovie4.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=10'"></td>
					<td align="center"><img src="img/netflix/n_recomm/n_Bmovie5.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=11'"></td>
				</tr>
				<tr>
					<td id="n_bestContent3">킹덤: 아신전</td>
					<td id="n_bestContent3">싱크홀</td>
				</tr>
			</table>


			<table id="n_recom_ani">
				<tr>
					<td colspan="3" id="n_recom_title1">애니 TOP 5</td>
				</tr>
				<tr>
					<td id="n_bestContent1">TOP 1</td>
					<td id="n_bestContent2">TOP 2</td>
					<td id="n_bestContent2">TOP 3</td>
				</tr>
				<tr>
					<td align="center"><img src="img/netflix/n_recomm/n_Bani1.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=12'"></td>
					<td align="center"><img src="img/netflix/n_recomm/n_Bani2.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=13'"></td>
					<td align="center"><img src="img/netflix/n_recomm/n_Bani3.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=14'"></td>
				</tr>
				<tr>
					<td id="n_bestContent3">너의 이름은</td>
					<td id="n_bestContent3">크리스마스 연대기</td>
					<td id="n_bestContent3">하울의 움직이는 성</td>
				</tr>
			</table>

			<table id="n_recom_ani">
				<tr>
					<td id="n_bestContent2">TOP 4</td>
					<td id="n_bestContent2">TOP 5</td>
				</tr>
				<tr>
					<td align="center"><img src="img/netflix/n_recomm/n_Bani4.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=15'"></td>
					<td align="center"><img src="img/netflix/n_recomm/n_Bani5.jpg"
						id="n_recommImg2"
						onclick="location.href='n_recommDetailC?n_b_no=16'"></td>
				</tr>
				<tr>
					<td id="n_bestContent3">가디언즈</td>
					<td id="n_bestContent3">드래곤 길들이기 2</td>
				</tr>
			</table>
		</div>
	</div>



</body>
</html>
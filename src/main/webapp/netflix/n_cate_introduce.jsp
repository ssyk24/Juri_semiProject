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
			<table style="margin: auto;">
				<tr>
					<td align="center" colspan="8"><a
						href="https://www.netflix.com/browse"> <img
							src="img/netflix/netflix_logo2.png" id="n_logo2" />
					</a>
						<p>(로고를 클릭시 넷플릭스 공식홈페이지로 이동)</td>
				</tr>
				
				<tr>
					<td colspan="4"
						style="height: 30px; background-color: transparent;"></td>
				</tr>

				<tr>
					<td colspan="4" align="center"><div id="n_intro_title">소개</div></td>
				</tr>

				<tr>
					<td colspan="4" align="center" id="n_intro_w">
						<p>넷플릭스는 TV 프로그램과 영화를 인터넷 연결 지원 디바이스에서 광고 없이 시청할 수 있는 멤버십 기반
							스트리밍 서비스
						<p>국내 가입자수는 2021년 11월 기준 710만명으로 2위 웨이브의 319만명의 두 배가 넘는 숫자로
							플랫폼서비스의 1위를 차지하고 있다.
					</td>
				</tr>
				
				<tr>
					<td colspan="4"
						style="height: 30px; background-color: transparent;"></td>
				</tr>


				<tr>
					<td colspan="4" align="center"><div id="n_intro_title">멤버십
							요금</div></td>
				</tr>

				<tr>
					<td colspan="4"
						style="height: 15px; background-color: transparent;"></td>
				</tr>
			</table>
			
			<form action="n_introduceCalcC" id="n_introducdCalcForm">
				<table>
					<tr>
						<td id="n_introducdCalcForm1"></td>
						<td id="n_introducdCalcForm1">베이직</td>
						<td id="n_introducdCalcForm1">스탠다드</td>
						<td id="n_introducdCalcForm1">프리미엄</td>
						<td rowspan="4" id="n_introducdCalcForm3_1">요금계산</td>

						<td rowspan="4" align="center">&nbsp;&nbsp;멤버십 <select id="n_introCalcMembership"
							name="n_introCalcMembership">
								<option value="Basic">베이직</option>
								<option value="Standard">스탠다드</option>
								<option value="Premium">프리미엄</option>
						</select> &nbsp;&nbsp;
						<input type="number" min="1" id="n_introCalcMonth" name="n_introCalcMonth"> 개월 
						<input type="number" min="1" id="n_introCalcPeople" name="n_introCalcPeople"> 명
							&nbsp;&nbsp;&nbsp;
							<button id="n_introCalcBtn" onclick="return n_intro_Calc()">✔계산하기</button>&nbsp;&nbsp;
							<p>${n_calcResult }</td>

					</tr>

					<tr id="n_introducdCalcForm2">
						<td id="n_introducdCalcForm1">가격</td>
						<td>9,500</td>
						<td>13,500</td>
						<td>17,000</td>
					</tr>


					<tr id="n_introducdCalcForm2">
						<td id="n_introducdCalcForm1">화질</td>
						<td>SD(480p)</td>
						<td>풀 HD(1080p)</td>
						<td>UHD(4K) & HDR</td>
					</tr>

					<tr>
						<td id="n_introducdCalcForm3_1">동시접속</td>
						<td id="n_introducdCalcForm3">1명</td>
						<td id="n_introducdCalcForm3">2명</td>
						<td id="n_introducdCalcForm3">4명</td>
					</tr>

				</table>
			</form>
			<table>
				<tr>
					<td style="height: 100px; background-color: transparent;"></td>
				</tr>
			</table>
		</div>
	</div>

</body>
</html>
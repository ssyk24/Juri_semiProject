<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="disney_body">

<form action="DisneyReviewRegC" method="post" onsubmit="return disney_reg_check();">

		<table border="1" id="disney_review_reg_tbl" style="table-layout: fixed; background-color: #02153D; border-radius: 10px;">

		<tr>
			<td style="width: 100px;">평점 등록</td>
			<td  class="disney_review_reg_selectTd">
			<select id="i1" name="score">
			<option value=null>평점 등록</option>
			<option value="5">★★★★★</option>
			<option value="4">★★★★</option>
			<option value="3">★★★</option>
			<option value="2">★★</option>
			<option value="1">★</option>
			</select> 
			</td>
	
			<td style="width: 100px;">분류 설정</td>
			<td  class="disney_review_reg_selectTd">
			<select id="i2" name="genre">
			<option value="">장르 선택</option>
			<option value="시리즈">시리즈</option>
			<option value="영화">영화</option>
			<option value="애니메이션">애니메이션</option>
			</select> 
			</td>
		</tr>

			<tr>
				<td style="width: 100px;" class="disney_review_reg_title"> 제목 </td>
				<td style="text-align: left"> <input id="i3" name="title" placeholder="제목을 입력해주세요"> </td>
				<td style="width: 100px;" class="disney_review_reg_title"> 작품 제목 </td>
				<td style="text-align: left"> <input id="i4" name="m_title" placeholder="작품 제목을 입력해주세요"> </td>
			</tr>

			<tr>
				<td>내용</td>
				<td colspan="3"> <textarea style="resize:none;" id="txt" name="text" placeholder="500자까지 작성 가능합니다."></textarea></td>
			</tr>

			<tr>
				<td style="text-align: right;" colspan="4" id="r_td3">
					<button >등록</button>
				</td>
			</tr>

		</table>

	</form>


</body>
</html>
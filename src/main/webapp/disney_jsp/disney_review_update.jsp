<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="disney_body">

<form action="DisneyReviewUpdateC" method="post" >

<table border="1" id="disney_review_reg_tbl" style="table-layout: fixed; background-color: #02153D; height: 600px; margin-bottom:30px; margin-top:30px; border-radius: 10px; border-color: gray;">

		<tr>
			<td colspan="3" align="center" class="">
				<h3> <input id="i1" name="title" value="${review.title}"> </h3>
			</td>
		</tr>
		<tr>
		
		<td style="width: 20%;">분류 설정
			<select id="i2" name="genre">
			<option value="">장르 선택</option>
			<option value="시리즈">시리즈</option>
			<option value="영화">영화</option>
			<option value="애니메이션">애니메이션</option>
			</select> 
			</td>
		
			<td class="">
			<input id="i3" name="m_title" value="${review.movie_title }" style="width: 300px;"> 
			</td>
			
			<td class="disney_review_detail_title"> 점수 ${review.score }
			 <select id="i4" name="score" >
			<option value="5">★★★★★</option>
			<option value="4">★★★★</option>
			<option value="3">★★★</option>
			<option value="2">★★</option>
			<option value="1">★</option>
			 </select>
			</td>
			
		</tr>

		<tr>
			<td colspan="3">내용</td>
		</tr>

		<tr>
			<td colspan="3" class=""> <textarea id="i5" name="text" style="resize:none; height: 300px;">${review.text}</textarea> </td>
		</tr>

		<tr>
			<td colspan="3" class="">
			<button onclick="return disney_reg_check2();" name="no" value="${review.no}">수정</button>
		</tr>

	</table>
	
	</form>

</body>
</html>
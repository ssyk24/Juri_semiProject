<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="wavve_body">

	<form action="WaveeReviewRegC?writer=${sessionScope.accountInfo.name }" method="post">
		<table border="1" id="wavve_review_reg_detail">
			<tr>
			<td>장르</td>
			<td>
			<select id="genre" name="genre">
			<option value="장르" selected hidden>장르</option> 
			<option value="영화">영화</option> 
			<option value="드라마">드라마</option> 
			<option value="예능">예능</option> 
			<option value="애니">애니</option> 
			</select>
			</td>
			<td>평점</td>
			<td>
			<select id="grade" name="grade">
			<option value="평점" selected hidden>평점</option> 
			<option value="★">★</option> 
			<option value="★★">★★</option> 
			<option value="★★★">★★★</option> 
			<option value="★★★★">★★★★</option> 
			<option value="★★★★★">★★★★★</option> 
			</select>
			</td>	
			</tr>
			<tr>
				<td>글 제목</td>
				<td colspan="4"  id="wavve_review_reg_title" ><input id="title2" name="title" placeholder="제목을 입력해주세요."></td>
			</tr>
			<tr>	
				<td>영화 제목</td>
				<td colspan="4"  id="wavve_review_reg_title"><input id="movie_title" name="movie_title" placeholder="리뷰하실 영화를 정확하게 입력해주세요."></td>
			</tr>
			<tr>
				<td>내용</td>
				<td colspan="4"><textarea id="txt2" name="txt" placeholder="내용을 입력해주세요."></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><button onclick="return wavve_review_reg()" id="wavve_review_reg_okBtn4">등록</button></td>
			</tr>
		</table>

	</form>
</body>
</html>
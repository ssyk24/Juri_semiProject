<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="wavve_body">

<form action="WavveReviewUpdateC?no=${param.no }" method="post">
<table border="1" id="wavve_review_reg_detail">
<tr>
			<td>장르</td>
			<td>
			<select name="genre">
			<option value="영화">영화</option> 
			<option value="드라마">드라마</option> 
			<option value="예능">예능</option> 
			<option value="애니">애니</option> 
			</select>
			</td>
			<td>평점</td>
			<td>
			<select name="grade">
			<option value="★">★</option> 
			<option value="★★">★★</option> 
			<option value="★★★">★★★</option> 
			<option value="★★★★">★★★★</option> 
			<option value="★★★★★">★★★★★</option> 
			</select>
			</td>	
			</tr>
			<tr>
			<tr>
				<td>글 제목</td>
				<td colspan="4"><input id="wavve_review_reg_title" name="title" value="${review.title }"></td>
			</tr>
			<tr>	
				<td>영화 제목</td>
				<td colspan="4"><input id="wavve_review_reg_title" name="movie_title" value="${review.movie_title }"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td colspan="4"><textarea id="wavve_review_reg_txt" name="txt">${review.txt }</textarea></td>
			</tr>
			<tr>
				<td colspan="4"><button id="wavve_review_reg_okBtn" >수정</button></td>
			</tr>
		</table>
		</form>
</body>
</html>
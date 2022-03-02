<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="netflix_body">

<form action="n_bestEditC" method="post" enctype="multipart/form-data">
	<table id="n_bestWrite">
		<tr>
			<td colspan="4" id="n_bestTitle2">명장면 수정하기</td>
		</tr>
		<tr>
			<td id="n_bestWriteTitle">사진</td>
			<td id="n_bestWritefile"><input type="file" name="n_bestWFile" id="n_bestWFile1"></td>

			<td id="n_bestWriteTitle">영화제목</td>
			<td id="n_bestWriteMovie"><input type="text" name="n_bestWTitle"
				id="n_bestWTitle1" value="${n_bestScene.n_movietitle }" ></td>
		</tr>
		<tr>
			<td id="n_bestWriteTitle1">내용</td>
			<td colspan="3" id="n_bestWriteTxt"><textarea maxlength="52" name="n_bestWTxt" id="n_bestWTxt1">${n_bestScene.n_txt }</textarea>
				0 /52자</td>
		</tr>
		<tr>
			<td colspan="4" align="center" style="height: 40px;"><input
				type="hidden" value="${sessionScope.accountInfo.id }"
				name="n_bestWWriter">
				<button name="n_no" value=${param.n_no } onclick="return n_bestEditOk();">수정하기</button></td>
		</tr>

	</table>
	</form>

</body>
</html>
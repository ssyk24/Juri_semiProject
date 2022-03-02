<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="disney_body">

	<form action="DisneyBestUpdateC" method="post"
		enctype="multipart/form-data" >

		<table id="disney_review_reg_tbl" style="height: 500px; table-layout: fixed; background-color:#02153D; border-style: ridge; border-radius: 10px;">
			<tr>
				<td class="disney_best_scene" rowspan="5">
				<input name="no" value="${b.no}" type="hidden">
				<input type="hidden" name="scene1" value="${b.scene}">
				<img class="disney_best_img" src="image/${b.scene}" style="border-radius: 10px;"> 
				<input id="i1" type="file" name="scene2" value="${b.scene}">
				</td>
			</tr>
			<tr>
				<td class=""><img width="80px" align="left"
					src="img/큰 따옴표 open.png"></td>
			</tr>
			<tr>
				<td colspan="2" class="" style="text-align: center;"><input id="i3" name="text"
					value="${b.text}" style="width: 500px; height: 30px;">
					<h1>${b.text}</h1></td>
			</tr>
			<tr>
				<td class="" colspan="2"><img width="80px" align="right"
					src="img/큰 따옴표 close.png"></td>
			</tr>
			<tr>
				<td colspan="2" class="" style="text-align: right;"><input id="i2" name="title"
					value="${b.title}" style="width: 200px; height: 30px;">
					<h2>- ${b.title} -</h2></td>
			</tr>
			<tr>
				<td colspan="3" style="text-align: right;">
				<input name="date" value="${b.date}" type="hidden">
				<button onclick="return formPath2(this.form)"> 목록으로 </button>
					<button onclick="return disney_reg_check3();">수정</button>
				</td>
			</tr>
		</table>

	</form>

</body>
</html>
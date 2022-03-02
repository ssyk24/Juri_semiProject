<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body  id="wavve_body">

<aside id="left_menu">
<a href="WavveC"><img id="wavve_left_logo" alt="" src="img/wavve_mini_logo.png"> </a>
<ul>
<li>
<a href="WavveGoodC">추천작</a>
</li>
<li>
<a href="WavveReviewC">리뷰 게시판</a>
</li>
<li>
<a href="WavveBestC" style="color: gray">명장면 게시판</a>
</li>
<li>
<a href="WavveNextC">상영 예정작</a>
</li>
</ul>
</aside>
<table id="wavee_review_title"> 
<tr><td><h2>명장면 게시판</h2></tr>
</table>
<c:if test="${sessionScope.accountInfo != null}">
<table id="wavve_best_backgroundTbl">
<tr><td>
<form action="WavveBestRegC" method="post" enctype="multipart/form-data">
	<table id="wavve_best_regTbl" border="solid 4px white">
		<tr>
			<td id="wavve_best_regTbl_td">작품제목</td>
			<td id="wavve_best_regTbl_td"><input id="title2" name="title"></td>
		</tr>
		<tr>
			<td id="wavve_best_regTbl_td">명장면사진</td>
			<td id="wavve_best_regTbl_td"><input id="file" type="file" name="img"></td>
		</tr>
		<tr>
			<td id="wavve_best_regTbl_td">명장면설명</td>
			<td id="wavve_best_regTbl_td">
			<textarea id="story" name="story"></textarea>
			<input type="hidden" name="writer" value="${sessionScope.accountInfo.name }"> </td>
		</tr>
		<tr>
			<td colspan="2"><button onclick="return wavve_best_reg()" id="wavve_best_regTbl_button">등록</button></td>
		</tr>
	</table>
	</form>
	</td></tr>
</table>
	</c:if>

		<c:forEach items="${bests }" var="b">
		<table id="wavve_best_tbl" style="border-style:ridge;">
			<tr>
				<td class="disney_best_scene" rowspan="6">
				<img style="border-radius: 30px;" class="disney_best_img" src="bestimg/${b.b_img}"></td>
			</tr>
			<tr>
				<td class=""><img width="80px" align="left"
					src="img/open.png"></td>
			</tr>
			<tr>
				<td class="" style="text-align: center;"> <h1 style="padding-left: 20px;"> ${b.b_txt } </h1> </td>
			</tr>
			<tr>
				<td class="" colspan="2"><img width="80px" align="right"
					src="img/close.png"></td>
			</tr>
			<tr>
				<td class="" style="text-align: right;"> <h2> - ${b.b_name } - </h2> </td>
			</tr>
			<c:if test="${b.b_writer eq sessionScope.accountInfo.name || sessionScope.accountInfo.name eq 'admin'}">
			<tr>
				<td colspan="2">
				<button class="disney_best_button" onclick="w_deleteBest(${b.b_no })">삭제</button>
				</td>
			</tr>
			</c:if>
		</table>	
		</c:forEach>
		

			<table id="wavve_best_pageTbl">
	<tr>
	<td>
	<a href="WavveBestPageController?p=1">맨앞</a>
	<c:forEach var="p" begin="1" end="${pageCount }">
	<a href="WavveBestPageController?p=${p }">[${p }]</a>
	</c:forEach>
	<a href="WavveBestPageController?p=${pageCount }">맨뒤</a>
	</td>
	</tr>
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="disney_body">

	<aside id="disney_left_menu">
		<h2>
			<a href="DisneyHomeC">Disney+</a>
		</h2>
		<ul>
			<li><a href="DisneyRecomandC">추천작</a></li>
			<li><a href="DisneyReviewC">리뷰 게시판</a></li>
			<li><a href="DisneyBestC" style="border-bottom-style: inset;">명장면
					게시판</a></li>
			<li><a href="DisneyUpcomingC">상영 예정작</a></li>
		</ul>
	</aside>


	
				<c:if test="${sessionScope.accountInfo != null}">

	<form action="DisneyBestC" method="post" enctype="multipart/form-data" onsubmit="return disney_reg_check3();">
		<table id="disney_tbl"  style="table-layout: fixed; padding:10px; background-color: #02153D;  border-style: solid; border-width:1px; border-color: white; border-radius: 20px;">
			<tr>
				<td class="disney_best_td">작품 제목</td>
				<td class="disney_best_input"><input id="i1"  name="title" placeholder="작품 제목을 입력하세요."></td>
			</tr>

			<tr>
				<td class="disney_best_td">명장면 사진</td>
				<td><input id="i2" type="file" name="scene" height="30px;"></td>
			</tr>

			<tr>
				<td class="disney_best_td">명장면 설명 또는 대사</td>
				<td class="disney_best_input"> <textarea style="resize:none;" id="i3" name="text" placeholder="50자 이내로 입력하세요."></textarea> </td>
			</tr>
			<tr>
				<td style="text-align: right;" colspan="2">
					<button style="width: 80px;height: 28px;font-size: 13pt; margin-right: 20px;">등록</button>
				</td>
			</tr>
		</table>
	</form>
	
</c:if>

		<table style="table-layout: fixed; font-size: 15pt; margin: auto; padding-top: 40px; ">

			<tr>
				<td>
				
				 <a style="text-decoration: none;" href="DisneyBestPageC?p=1"> 맨 앞 </a>
				 
				 
				 	<c:if test="${curPageNo != 1}">
	
				<a href="DisneyBestPageC?p=${curPageNo - 1}"> &lt; </a>
	
				</c:if>
				 
				  ${curPageNo} / ${pageCount} 
				  
				  	<c:if test="${curPageNo != pageCount}">
	
					<a href="DisneyBestPageC?p=${curPageNo + 1}"> &gt; </a>
	
					</c:if>

				 <a style="text-decoration: none;" href="DisneyBestPageC?p=${pageCount}"> 맨 뒤 </a>
				 
				 </td>
			</tr>
			
		</table>
		
		
	<c:forEach var="s" items="${scenes }">

		<table id="disney_tbl" style="table-layout: fixed; padding: 10px; background-color: #02153D; border-width:2px; border-style: solid; border-color: white; border-radius: 10px;">
			<tr>
				<td class="disney_best_scene" rowspan="6">
				<img style="table-layout: fixed; border-radius: 30px;" class="disney_best_img" src="image/${s.scene}"></td>
			</tr>
			<tr>
				<td class="" colspan="2"><img width="80px" align="left"
					src="img/큰 따옴표 open1.png"></td>
			</tr>
			<tr>
				<td class="" colspan="2" style="text-align: center;"> <h2 style="padding-left: 20px;"> ${s.text} </h2> </td>
			</tr>
			<tr>
				<td class="" colspan="2"><img width="80px" align="right"
					src="img/큰 따옴표 close1.png"></td>
			</tr>
			<tr>
				<td class="" colspan="2" style="text-align: right;"> <h3> - ${s.title} - </h3> </td>
			</tr>
			
				<c:if test="${sessionScope.accountInfo.id == s.writer or sessionScope.accountInfo.id == 'admin'}">
				
			<tr>
				<td colspan="2" style="text-align: right;  ">
				<button style="width: 80px;height: 28px;font-size: 13pt;" onclick="location.href='DisneyBestUpdateC?no=${s.no}'">수정 </button>
 				<button style="width: 80px;height: 28px;font-size: 13pt;" onclick="disney_best_delete(${s.no})">삭제</button> 
				</td>	
			</tr>
			
			</c:if>
			
			</table>
		<!--  -->

	</c:forEach>
	
	

		<table style="table-layout: fixed; font-size: 15pt; margin: auto; padding-left: 300px; padding-top: 30px; padding-bottom: 15px;">

			<tr>
				<td>
				
				 <a style="text-decoration: none;" href="DisneyBestPageC?p=1"> 맨 앞 </a>
				
				 
				 	<c:if test="${curPageNo != 1}">
	
				<a href="DisneyBestPageC?p=${curPageNo - 1}"> &lt; </a>
	
				</c:if>
				 
				  ${curPageNo} / ${pageCount} 
				  
				  	<c:if test="${curPageNo != pageCount}">
	
					<a href="DisneyBestPageC?p=${curPageNo + 1}"> &gt; </a>
	
					</c:if>

				
				 <a style="text-decoration: none;" href="DisneyBestPageC?p=${pageCount}"> 맨 뒤 </a>
				 
				 </td>
			</tr>
			
		</table>

</body>
</html>
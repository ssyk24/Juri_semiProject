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

	<table border="1" id="disney_review_reg_tbl"
		style="table-layout: fixed; height: 700px;  background-color: #02153D; border-radius: 10px; border-style:solid; border-color: gray;">

		<tr>
			<td colspan="4" align="center" class="" style="height: 100px;">
				<h1>${review.title }</h1>
			</td>
		</tr>
		<tr style="height: 50px;">
			<td class="disney_review_detail_no">작품명 : ${review.movie_title }
			</td>
			<td class="disney_review_detail_title">별점 ${review.score }</td>
			<td class="disney_review_detail_writer">작성자 : ${review.writer }</td>
			<td class="disney_review_detail_date">작성 및 수정일 : ${review.date }</td>
		</tr>


		<tr>
		<td colspan="4"
				style="color: black; background-color: white; padding-top: 10px;
				text-align: justify; vertical-align: top; font-size:13pt;
				 border-width: 20px;">
				<pre>${review.text }</pre> 
		</td>
		</tr>
		
		<tr style="height: 50px;">

			<c:choose>
				<c:when
					test="${sessionScope.accountInfo.id == review.writer or sessionScope.accountInfo.id == 'admin'}">

					<td colspan="4" class="">
						<button onclick="return history.back();">목록으로</button>
						<button
							onclick="location.href = 'DisneyReviewUpdateC?no=${review.no}'">수정</button>
						<button onclick="disney_review_delete(${review.no})">삭제</button>
					</td>

				</c:when>

				<c:otherwise>

					<td colspan="4" class="">
						<button onclick="return history.back();">목록으로</button>
				</c:otherwise>
			</c:choose>
		</tr>

	</table>

</body>
</html>
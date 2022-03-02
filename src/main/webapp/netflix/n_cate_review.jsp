<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
			<!-- <tr> <td id="n_categoryLeftLast"></td> </tr> -->
		</table>

		<div id="n_categoryRight">
			<table id="n_reviewTitle">
				<tr>
					<td id="n_reviewTitle1" colspan="2">&nbsp;&nbsp;리뷰 게시판</td>
					<td><c:if test="${empty sessionScope.accountInfo.id}">
							<button id="n_reviewWriteBtn" onclick="n_reviewLoginWrite()">글쓰기</button>
						</c:if> <c:if test="${sessionScope.accountInfo.id != null}">
							<button id="n_reviewWriteBtn" onclick="n_reviewLoginWriteOk()">글쓰기</button>
						</c:if></td>
				</tr>
				<tr>
					<td style="height: 25px; background-color: transparent;"></td>
				</tr>
			</table>
		</div>



		<div id="n_categoryRight">
			<table id="n_reviewTable">
				<tr>
					<td id="n_reviewTitle2">작품</td>
					<td id="n_reviewTitle3">제목</td>
					<td id="n_reviewTitle4">별점</td>
					<td id="n_reviewTitle6">작성자</td>
					<td id="n_reviewTitle5">날짜</td>
				</tr>

				<c:if test="${n_reviews != 'empty' }">
					<c:forEach var="n" items="${n_reviews }">
						<tr id="trtr">
							<td id="n_reviewTitle2_1">《${n.n_movietitle }》</td>
							<td id="n_reviewTitle3_1"
								onclick="location.href='n_reviewDetailC?n_no=${n.n_no }&n_freetitle=${n.n_freetitle}&n_movietitle=${n.n_movietitle}&n_txt=${n.n_txt}&n_genre=${n.n_genre}&n_grade=${n.n_grade}&n_date=${n.n_date}&n_writer=${n.n_writer }'">&nbsp;&nbsp;${n.n_freetitle }</td>
							<td id="n_reviewTitle4_1">${n.n_grade }</td>
							<td id="n_reviewTitle6_1">${n.n_writer }</td>
							<td id="n_reviewTitle5_1"><fmt:formatDate
									value="${n.n_date}" pattern="yyyy. MM. dd hh:mm" /></td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${n_reviews.size()==0 }">
					<tr>
						<td colspan="5" id="n_reviewNone">${resultNone }</td>
					</tr>
				</c:if>
			</table>
		</div>

		<div id="n_categoryRight">
			<table style="margin: auto; border-spacing: 20px">
				<tr>
					<td id="n_reviewPagSear1">
					<c:choose><c:when test="${curPageNo != 1 }" >
								<a href="n_reviewPageC?n_p=1"> 첫장</a>
						    	</c:when>
							<c:otherwise>
								<span style="font-weight: bold; font-size: 15pt;">첫장</span></c:otherwise>
						</c:choose> <c:forEach var="n_p" begin="1" end="${pageCount }">
							<a href="n_reviewPageC?n_p=${n_p }"> ${n_p }</a>
						</c:forEach>
						
						 <c:choose>
							<c:when test="${n_reviews.size()==0 }">마지막장</c:when>
							<c:when test="${curPageNo != pageCount }"><a href="n_reviewPageC?n_p=${pageCount }"> 마지막장</a></c:when>
							<c:otherwise> <span style="font-weight: bold; font-size: 15pt;">마지막장</span> </c:otherwise>
						</c:choose></td>
						
						<td id="n_reviewPagSear" align="center" colspan="3"><select
						id="testtwo">
							<option value="n_SAll">전체</option>
							<option value="n_SMovieTitle">작품</option>
							<option value="n_SSearchFreeTitle">제목</option>
					</select> <input id="n_search">
						<button onclick="n_searchReview()">검색</button></td>

				</tr>
			</table>
		</div>




	</div>


</body>
</html>
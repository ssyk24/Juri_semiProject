<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<table style="width: 100%">
				<tr>
					<td id="n_bestTitle">&nbsp;&nbsp;명장면 게시판</td>
				</tr>
				<tr>
					<td style="height: 25px; background-color: transparent;"></td>
				</tr>
			</table>
		</div>

		<div id="n_categoryRight">
			<form action="n_bestWriteC" method="post" enctype="multipart/form-data">
				<table id="n_bestWrite">
					<tr>
						<td colspan="4" id="n_bestTitle2">명장면 기록하기</td>
					</tr>
					<tr>
						<td id="n_bestWriteTitle">사진</td>
						<td id="n_bestWritefile"><input type="file" 
							name="n_bestWFile" id="n_bestWFile1"></td>
					
						<td id="n_bestWriteTitle">영화제목</td>
						<td id="n_bestWriteMovie"><input type="text" 
							name="n_bestWTitle" id="n_bestWTitle1"></td>
					</tr>
					<tr>
						<td id="n_bestWriteTitle1">내용</td>
						<td colspan="3" id="n_bestWriteTxt">
						<textarea maxlength="52" placeholder="최대 52자 & 3줄 이내로 입력해주세요."
							name="n_bestWTxt" id="n_bestWTxt1"></textarea></td>
					</tr>
					<tr>
						<td colspan="4" align="center" style="height: 40px;">
						<input type="hidden" value="${sessionScope.accountInfo.id }" name="n_bestWWriter">
						
						<c:if test="${empty sessionScope.accountInfo.id }">
						<button type="button" onclick="n_bestLoginWrite()">등록하기</button></c:if>
									
						<c:if test="${sessionScope.accountInfo.id != null }">
						<button onclick="return n_bestLoginWriteOk();">등록하기</button>
						</c:if>
						</td></tr></table></form></div>

		<div id="n_categoryRight">
			<table id="n_bestSearchTable" >
				<tr>
					<td style="height: 25px; background-color: transparent;"></td>
				</tr>
				
				<tr>
				<td align="center" colspan="3"><select id="n_bSearchSelect">
							<option value="n_bSearchAll">전체</option>
							<option value="n_bSearchMovieTitle">영화제목</option>
							<option value="n_bSearchStory">내용</option>
					</select> <input id="n_bestSearch">
						<button onclick="return n_bestSearch();">검색</button></td>
				</tr>
			</table>
		</div>

		<div id="n_categoryRight">
			
				<table id="n_bestShowForm">
					<tr>
					
					<td id="n_pagingMark">
					
					<c:choose>
					<c:when test="${curPageNo == 1 }"></c:when>
					
					<c:otherwise><div id="n_pagingMark1"><a href="n_bestPagingC?n_p=${curPageNo - 1}">◀</a></div></c:otherwise>
						</c:choose></td>
						
						<td>
							<table id="n_bestShowTable">
							<c:forEach var="n" items="${n_bestScenes }">
								<tr>
									<td id="n_bestShowImg"><img src="img/${n.n_img }"></td>
									
									<td id="n_bestShowTxt">
									<img src="img/netflix/quotationMarks.png" id="n_quotationMarksL" align="top">
									
									<c:if test="${sessionScope.accountInfo.id eq n.n_writer || sessionScope.accountInfo.id == 'admin' }">
									<button type="button" onclick="n_bestEdit(${n.n_no})">수정</button>
									<button type="button" onclick="n_bestDelete(${n.n_no});">삭제</button></c:if>
									
									
									<% pageContext.setAttribute("rn", "\r\n"); %>
									<textarea id="n_bestShowTxtInput" disabled="disabled">
									<c:out value="${fn:replace(n.n_txt , '<br>', rn)}" /></textarea><p>
									<div id="n_bestShowTxtInput2">- ${n.n_movietitle }</div>
									<img src="img/netflix/quotationMarks1.png" id="n_quotationMarksR" align="right"></td>
								</tr>
								</c:forEach>
								
								<c:if test="${n_bestScenes.size() == 0 }"><td id="n_bestNoScense"><h1>${resultNone }</h1></td></c:if>
							
							</table>
						</td>


					<td id="n_pagingMark">
					
					<c:choose><c:when test="${curPageNo == pageCount }"></c:when>
					<c:when test="${n_bestScenes.size() == 0 }"></c:when>
					<c:otherwise><div id="n_pagingMark1"><a href="n_bestPagingC?n_p=${curPageNo + 1}">▶</a></div></c:otherwise>
						</c:choose> 
						</td>
						
					</tr></table>
		</div>
	</div>

</body>
</html>
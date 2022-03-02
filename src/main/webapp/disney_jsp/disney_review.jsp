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
<body id="disney_body">

	<aside id="disney_left_menu">
		<h2>
			<a href="DisneyHomeC">Disney+</a>
		</h2>
		<ul>
			<li><a href="DisneyRecomandC">추천작</a></li>
			<li><a href="DisneyReviewC" style="border-bottom-style: inset;">리뷰 게시판</a></li>
			<li><a href="DisneyBestC">명장면 게시판</a></li>
			<li><a href="DisneyUpcomingC">상영 예정작</a></li>
		</ul>
	</aside>
	
	
		<table id="disney_tbl" border="1" style="background-color: #02153D; border-radius: 10px; border-color: gray; table-layout: fixed;">

		<tr>
		<td>
		

<hr>

	<table id="disney_review_board" style="width:100%; table-layout: fixed;">

			<tr style="border-bottom: double;">
			<td style="border-bottom: double; width: 15%"> <a href="DisneyReviewC"> 분류(전체보기) </a> </td>
			<td style="border-bottom: double; width: 43%">게시글 제목</td>
			<td style="border-bottom: double; width: 10%"> 평점 </td>
			<td style="border-bottom: double; width: 15%"> 작성자 </td>
			<td style="border-bottom: double; width: 25%"> 수정 & 게시일 </td>
			</tr>
			 
			 <c:if test="${reviews.size() == 0}">
			 
				 <td style="text-align: center; width: 500px;" colspan="4"> <h2 style="margin-left: 150px;"> 검색 결과가 없습니다. </h2> </td>
			 
			 </c:if>
			 
			 
			 
			 <c:if test="${reviews.size() != 0}">
			 
		<c:forEach var="r" items="${reviews}">
		
			<tr class="disney_review_tr">
				<td> <a href="DisneyReviewSearchC?genre=${r.genre}"> ${r.genre } </a> </td>
				<td onclick="location.href = 'DisneyReviewDetailC?no=${r.no }'"> <a href="DisneyReviewDetailC?no=${r.no }"> ${r.title } </a> </td>
				<td>${r.score } / 5점</td>
				<td>${r.writer }</td> 
				<td><fmt:formatDate value="${r.date }"
						type="both" dateStyle="short" timeStyle="short" /></td>
			</tr>
			
		</c:forEach>

			 </c:if>
			 
	</table>
	
<hr>

		<table style="font-size: 14pt; margin: auto; table-layout: fixed;">

			<tr>
				<td>
				
				
				
			<c:set var = "page" value = "${(param.p==null)? 1: param.p}"/>
            <c:set var ="startNum" value = "${page-(page-1)%10}"/>    
            <c:set var ="lastNum" value = "${pageCount}"/>  

            <c:if test="${curPageNo > 10}">
                <a href="DisneyReviewPageC?p=${startBlcok-10}" >이전</a>                
            </c:if>
            <c:if test="${startNum <= 1}">
                <span onclick="alert('첫 페이지입니다');">이전</span>            
            </c:if> 
            
            
				
				<c:forEach var="p"  begin="${(curBlock == 1) ? 1 : startBlcok}" end="${(endBlcok < lastNum) ? endBlcok : lastNum}">
				
				<c:choose>
                <c:when test="${ p > endBlcok }">
                    ${ p }
                </c:when>
                <c:when test="${ p == curPageNo }">
                  <b style="color: gold;"> ${ p } </b>
                </c:when>
                <c:when test="${ p == 0 }">
                  1
                </c:when>
                <c:otherwise>
                    <a href="DisneyReviewPageC?p=${p}">${ p }</a>
                </c:otherwise>
            </c:choose>
				
			<%-- <a style="text-decoration: none;" href="DisneyReviewPageC?p=${p}"> ${p}  </a> --%>

				</c:forEach>
				
				
				
				<c:if test="${endBlcok < lastNum}">
                <a href="DisneyReviewPageC?p=${endBlcok+1}" >다음</a>
            </c:if>
            <c:if test="${endBlcok >= lastNum}">
                <span onclick="alert('마지막 페이지입니다.');">다음</span>            
            </c:if>
				 
				 </td>
			</tr>
			
		</table>
		
		<form action="DisneyReviewSearchC">

		<table id="disney_review_bottom" style="width: 100%; height: 60px; table-layout: fixed;"  >

			<tr>
				<td style="text-align: right; width: 40%; padding-right: 2px;">
				<select name="genre">
				<option value="all">전체보기</option>
				<option value="시리즈">시리즈</option>
				<option value="영화">영화</option>
				<option value="애니메이션">애니메이션</option>
				</select> 
				</td>
				
				<td width="30%" ><input placeholder="분류별 검색" id="i" name="search">  <button onclick="return disney_check()" style="width: 60px; height: 35px; margin-left: 10px;" >검색</button> </td>
				
				<c:choose>
				<c:when test="${sessionScope.accountInfo == null}">
				<td style="text-align: ">
				<button onclick="return d_pleaseLogin()" style="width: 80px; height: 35px; "> 리뷰 작성 </button>
				 </td>
				</c:when>
				
				<c:otherwise>
				<td style="text-align: right;">
				<button onclick="return formPath1(this.form)" style="width: 80px; height: 35px;"> 리뷰 작성 </button>
				 </td>
				
				</c:otherwise>
				</c:choose>
				
				
				
			</tr>

		</table>
		
		</form>

		</td>
		</tr>
	</table>

</body>
</html>
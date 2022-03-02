<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
		<table id="n_reviewDetailTable">
			<tr>
				<td colspan="4" align="center" id="n_reviewWriteTitle"><h2> 리뷰글 상세페이지</h2></td>
			</tr>
			
			<tr>
			<td style="height: 10px;"></td>
			</tr>

			<tr>
				<td id="n_reviewWriteD1">장르</td>
				<td id="n_reviewWriteD2">&nbsp;&nbsp;${n_review.n_genre }</td>
					
					
				<td id="n_reviewWriteD1">별점</td>
				<td id="n_reviewWriteD2">&nbsp;&nbsp;${n_review.n_grade } </td> 
			</tr>
	
			<tr>
				<td id="n_reviewWriteD1">제목</td>
				<td id="n_reviewWriteD2">&nbsp;&nbsp;${n_review.n_freetitle}  </td>
				
				<td id="n_reviewWriteD1">영화제목</td>
				<td id="n_reviewWriteD2">&nbsp;&nbsp;${n_review.n_movietitle } </td>
			</tr>
 
			<tr>
				<td id="n_reviewWriteD3">내용</td>
				<td id="n_reviewWTxtD1" colspan="3">${n_review.n_txt}</td>
			</tr>
			</table>
			
			<table id="n_reviewDetailTable1">
			
			<c:if test="${sessionScope.accountInfo.id eq n_review.n_writer || sessionScope.accountInfo.id == 'admin' }">
			<tr>
			<td align="center"> <button onclick="location.href='n_reviewEditC?n_no=${param.n_no }'">리뷰글 수정</button> </td>
			<td align="center"> <button onclick="n_reviewDelete(${param.n_no })">리뷰글 삭제</button></td>
			</tr>
			</c:if>
			
			<tr>
			<td colspan="2" align="center"><div id="n_reviewDetailBack" onclick="history.go(-1)">목록으로</div> </td>
			</tr>
		</table>
</div>

	</div>

</body>
</html>
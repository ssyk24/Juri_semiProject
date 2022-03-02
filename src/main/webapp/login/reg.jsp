<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="RegAccountC" onsubmit="return check()" name="myForm" enctype="multipart/form-data" method="post">
		<table id="regTbl">
			<tr >
				<td class="" colspan="2" id="title">회원 가입</td>
			</tr>
			<tr>
				<td class="regTd1">이름</td>
				<td class="regTd2"><input id="idpwInput" name="name" required="required"></td>
			</tr>
			<tr>
				<td class="regTd1">ID</td>
				<td class="regTd2"><input id="idpwInput" name="id" placeholder="한글x, 5글자 이상"></td>
			</tr>
			<tr>
				<td class="regTd1">PW</td>
				<td class="regTd2"><input id="idpwInput" name="pw" type="password" placeholder="3글자 이상, 대,소,숫 1포함"></td>
			</tr>
			<tr>
				<td class="regTd1">PW 확인</td>
				<td class="regTd2"><input id="idpwInput" name="pw" type="password" placeholder="비밀번호 확인"></td>
			</tr>
			<tr>
				<td id="regBtn" colspan="2"><button>✔가입</button></td>
			</tr>
		</table>
	</form>
</body>
</html>
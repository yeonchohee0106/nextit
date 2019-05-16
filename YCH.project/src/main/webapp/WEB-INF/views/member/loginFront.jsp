<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Business Casual - Start Bootstrap Theme</title>

</head>

<body>


	${loginInfo }

	<form action="/member/loginProc.ch" method="post">
		<table class="table">

			<tr>
				<th>아이디</th>
				<td><input type="text" class="form-control" name="usrId"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" class="form-control" name="usrPwd"></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" class="form-control">로그인</button>
				</td>
			</tr>
		</table>
	</form>



</body>

</html>

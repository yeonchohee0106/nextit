<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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


	<h3>회원가입</h3>
	<br>



	<form action="/memberInsertProc.ch" method="post">
		<table class="table">

			<tr>
				<th>아이디</th>
				<td><input type="text" name="usrId" class="form-control"
					value="${member.usrId }"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="usrPwd" class="form-control"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="usrName" class="form-control"
					value="${member.usrName }"></td>
			</tr>
			<tr>
				<th>성별</th>
				<td><select name="usrGender" class="form-control">
						<option value="F">여자</option>
						<option value="M">남자</option>
				</select></td>
			</tr>
			<tr>
				<th>나이</th>
				<td><input type="number" name="usrAge" class="form-control"></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="number" name="usrHp" class="form-control"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="email" name="usrEmail" class="form-control"></td>
			</tr>
			<tr>
				<td colspan="2"><br>
				<br>
					<button type="submit" class="form-control">가입하기</button></td>
			</tr>



		</table>
	</form>




</body>

</html>

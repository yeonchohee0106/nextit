<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>회원목록^^</title>


</head>

<body>



	<h3>회원목록</h3>
	<table class="table">
		<thread>
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>비밀번호</th>
			<th>성별</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>아이피</th>
			<th>가입일</th>
		</tr>
		</thread>
		<tbody>
			<c:forEach var="memberVo" items="${memberList}">
				<tr>
					<td>${memberVo.seqNo }</td>
					<td>
						<a href="/member/memberView.ch">${memberVo.usrId }</a>
					</td>
					<td>${memberVo.usrName }</td>
					<td>${memberVo.usrPwd }</td>
					<td>${memberVo.usrGender }</td>
					<td>${memberVo.usrHp }</td>
					<td>${memberVo.usrEmail }</td>
					<td>${memberVo.usrIp }</td>
					<td>${memberVo.regDt }</td>
				</tr>

			</c:forEach>
		</tbody>
	</table>






</body>

</html>

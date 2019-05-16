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

<!-- Bootstrap core CSS -->
<link type="text/css"
	href="/resources/vendor/bootstrap/css/bootstrap.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link type="text/css"
	href="/resources/css/business-casual.css"
	rel="stylesheet">

</head>

<body>

	<h1 class="site-heading text-center text-white d-none d-lg-block">
		<span class="site-heading-upper text-primary mb-3">A Free
			Bootstrap 4 Business Theme</span> <span class="site-heading-lower">Business
			Casual</span>
	</h1>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
		<div class="container">
			<a
				class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none"
				href="#">Start Bootstrap</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item active px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="loginFront.ch">MAIN</a></li>
					</li>
					<li>
					<li class="nav-item px-lg-4">
					<a
						class="nav-link text-uppercase text-expanded"
						href="memberFront.ch">회원가입 
						<!-- <span class="sr-only">(current)</span> -->
					</a></li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="memberList.ch">회원목록</a>
					</li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="boardList.ch">게시판목록</a>
					</li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="store.html">Store</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>


	<section class="page-section cta">
		<div class="container">
			<div class="row">
				<div class="col-xl-9 mx-auto">
					<div class="cta-inner text-center rounded">

					<h3>회원가입</h3>
					<br>
						
						
						
						<form action="/member/memberInsertProc.ch" method="post">
						<table class="table">

							<tr>
								<th>아이디</th>
								<td><input type="text" name="usrId" class="form-control" value="${member.usrId }"></td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td><input type="password" name="usrPwd" class="form-control"></td>
							</tr>
							<tr>
								<th>이름</th>
								<td><input type="text" name="usrName" class="form-control" value="${member.usrName }"></td>
							</tr>
							<tr>
								<th>성별</th>
								<td>
									<select name="usrGender" class="form-control">
										<option value="F">여자</option>
										<option value="M">남자</option>
									</select>
								</td>
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
								<td colspan="2">
									<br><br>
									<button type="submit" class="form-control">가입하기</button> 
								</td>
							</tr>



						</table>
						</form>



					</div>
				</div>
			</div>
		</div>
	</section>

	<footer class="footer text-faded text-center py-5">
		<div class="container">
			<p class="m-0 small">Copyright &copy; Your Website 2019</p>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="<c:url value="/resources/vendor/jquery/jquery.js"/>"></script>
	<script
		src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.js"/>"></script>

</body>

</html>

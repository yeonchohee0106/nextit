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

<!-- Bootstrap core CSS -->
<link type="text/css"
	href="/resources/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link type="text/css" href="/resources/css/business-casual.css"
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
					<li>
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase text-expanded"
						href="memberFront.ch">회원가입 <!-- <span class="sr-only">(current)</span> -->
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
		<!-- <div class="container"> -->
			<!-- <div class="row"> -->
				<div class="col-xl-8 mx-auto">
					<div class="cta-inner text-center rounded">





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
										<td>${memberVo.usrId }</td>
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








					</div>
				</div>
			<!-- </div> -->
		<!-- </div> -->
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<title>Ping Shop - Login Page</title>
<link rel="shortcut icon"
	href='<c:url value="/resources/"/>images/3.ico'>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<!-- plugins css -->
<link rel="stylesheet"
	href='<c:url value="/resources/"/>bower_components/bootstrap/dist/css/bootstrap.css'>
<link rel="stylesheet"
	href='<c:url value="/resources/"/>bower_components/PACE/themes/blue/pace-theme-minimal.css'>
<link rel="stylesheet"
	href='<c:url value="/resources/"/>bower_components/perfect-scrollbar/css/perfect-scrollbar.min.css'>
<!-- core css -->
<link rel="stylesheet"
	href='<c:url value="/resources/"/>assets/css/ei-icon.css'>
<link rel="stylesheet"
	href='<c:url value="/resources/"/>assets/css/themify-icons.css'>
<link rel="stylesheet"
	href='<c:url value="/resources/"/>assets/css/font-awesome.min.css'>
<link rel="stylesheet"
	href='<c:url value="/resources/"/>assets/css/animate.min.css'>
<link rel="stylesheet"
	href='<c:url value="/resources/"/>assets/css/app.css'>
<link rel="stylesheet"
	href='<c:url value="/resources/"/>css/font-awesome.css'>
</head>
<body>
	<div class="app">
		<div class="authentication">
			<div class="sign-in">
				<div class="row no-mrg-horizon">
					<div class="col-md-8 no-pdd-horizon hidden-xs">
						<div class="full-height bg"
							style="background-image: url('<c:url value="/resources/"/>assets/images/others/img-33.jpg')">
							<div class="img-caption">
								<h1 class="caption-title">Hãy đến với chúng tôi</h1>
								<p class="caption-text">Mỹ phẩm là một trong những công cụ
									hỗ trợ làm đẹp từ xa xưa mà tất cả mọi người đều yêu thích. Với
									ra đời rất nhiều dòng sản phẩm khác nhau, mỹ phẩm mang lại
									trong quá trình làm đẹp, phòng ngừa và đặc trị cho tất cả chúng
									ta.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 no-pdd-horizon">
						<div class="full-height bg-white height-100">
							<div class="vertical-align full-height pdd-horizon-70">
								<div class="table-cell">
									<div class="pdd-horizon-15">
										<h2>Đăng nhập</h2>
										<p class="mrg-btm-15 font-size-13">Vui lòng nhập tài khoản
											và mật khẩu</p>
										<form:form action="login.poly" method="POST"
											modelAttribute="logins">
											<div class="form-group">
												<form:input path="username" type="text"
													class="form-control" placeholder="User name" autofocus="autofocus"/>
												<small style="color: #EC4E0D">${message}</small>
											</div>
											<div class="form-group">
												<form:input path="password" type="password"
													class="form-control" placeholder="Password" />
												<small style="color: #EC4E0D">${message1}</small>
											</div>
											<div class="checkbox font-size-12">
												<input id="agreement" name="agreement" type="checkbox">
												<label for="agreement">Keep Me Signed In</label>
											</div>
											<form:button class="btn btn-info" type="submit">Login</form:button>
										</form:form>
									</div>
								</div>
							</div>
							<div class="login-footer">
								<img class="img-responsive inline-block" width="100"
									src="<c:url value="/resources/"/>assets/images/logo/logo.png"><span
									class="font-size-13 pull-right pdd-top-10">Don't have an
									account? <a href="sign-in.html">Sign Up Now</a>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src='<c:url value="/resources/"/>assets/js/vendor.js'></script>
	<script src='<c:url value="/resources/"/>assets/js/app.min.js'></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<title>Ping Shop - Admin Page</title>
<link rel="shortcut icon"
	href='<c:url value="/resources/"/>images/3.ico'>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<!-- The styles -->
<style type="text/css">
*[id$=errors] {
	color: red;
}
</style>
<!-- plugins css -->
<link rel="stylesheet"
	href='<c:url value="/resources/"/>bower_components/bootstrap/dist/css/bootstrap.css'>
<link rel="stylesheet"
	href='<c:url value="/resources/"/>bower_components/PACE/themes/blue/pace-theme-minimal.css'>
<link rel="stylesheet"
	href='<c:url value="/resources/"/>bower_components/perfect-scrollbar/css/perfect-scrollbar.min.css'>
<!-- page plugins css -->
<link rel="stylesheet"
	href='<c:url value="/resources/"/>bower_components/datatables/media/css/jquery.dataTables.css'>
<link rel="stylesheet"
	href='<c:url value="/resources/"/>assets/css/sweetalert.css'>
<link rel="stylesheet"
	href='<c:url value="/resources/"/>bower_components/selectize/dist/css/selectize.default.css'>
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
	href='<c:url value="/resources/"/>css/font-awesome.css'>
<link rel="stylesheet"
	href='<c:url value="/resources/"/>assets/css/app.css'>
</head>
<body>
	<div class="app">
		<div class="layout">
			<!-- Side Nav START -->
			<jsp:include page="layouts/menu.jsp" />
			<!-- Page Container START -->
			<div class="page-container">
				<jsp:include page="layouts/header.jsp" />
				<!-- Content Wrapper START -->
				<div class="main-content">
					<div class="container-fluid">
						<div class="page-title">
							<h4>Quản lý tài khoản</h4>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-block">
										<div class="table-overflow">
											<button style="float: right" type="button"
												class="btn btn-success" data-toggle="modal"
												data-target="#default-modal">
												<i class="fa fa-plus" aria-hidden="true"></i> Thêm
											</button>
											<c:if test="${not empty showform}">
												<div class="card-heading border bottom">
													<h4 class="card-title">Sửa tài khoản</h4>
												</div>
												<form:form action="accountManager.poly"
													modelAttribute="account"
													class="form-horizontal mrg-top-40 pdd-right-30">
													<div class="form-group row">
														<label for="form-1-1" class="col-md-2 control-label">UserName</label>
														<div class="col-md-10">
															<form:input path="username" name="username" type="text"
																class="form-control" id="form-1-1"
																placeholder="UserName" />
														</div>
													</div>
													<div class="form-group row">
														<label for="form-1-2" class="col-md-2 control-label">Password</label>
														<div class="col-md-10">
															<form:input path="password" name="password"
																type="password" class="form-control" id="form-1-2"
																placeholder="Password" />
														</div>
													</div>
													<div class="form-group row">
														<label for="form-1-3" class="col-md-2 control-label">Roles</label>
														<div class="col-md-10">
															<%-- <form:input path="role" name="role"
																			type="text" class="form-control" id="form-1-3"
																			placeholder="Roles" /> --%>
															<form:select class="form-control" id="sel1" path="role">
																<form:option value="admin">admin</form:option>
																<form:option value="customer">customer</form:option>
															</form:select>
														</div>
													</div>
													<div class="text-right">
														<form:button class="btn btn-default btn-sm">Cancel</form:button>
														<form:button type="submit" name="btn-update"
															class="btn btn-primary btn-sm">Edit</form:button>
													</div>
												</form:form>
											</c:if>
											<p style="color: green;">${message1}</p>
											<p style="color: red">${message}</p>
											<!-- Modal START-->
											<div class="modal fade" id="default-modal">
												<div class="modal-dialog" role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h4>Add Account</h4>
														</div>
														<div class="modal-body">
															<form:form action="accountManager.poly"
																modelAttribute="account"
																class="form-horizontal mrg-top-40 pdd-right-30">
																<div class="form-group row">
																	<label for="form-1-1" class="col-md-2 control-label">UserName</label>
																	<div class="col-md-10">
																		<form:input path="username" name="username"
																			type="text" class="form-control" id="form-1-1"
																			placeholder="UserName" />
																	</div>
																</div>
																<div class="form-group row">
																	<label for="form-1-2" class="col-md-2 control-label">Password</label>
																	<div class="col-md-10">
																		<form:input path="password" name="password"
																			type="password" class="form-control" id="form-1-2"
																			placeholder="Password" />
																	</div>
																</div>
																<div class="form-group row">
																	<label for="form-1-3" class="col-md-2 control-label">Roles</label>
																	<div class="col-md-10">
																		<form:select class="form-control" id="sel1"
																			path="role">
																			<form:option value="admin">admin</form:option>
																			<form:option value="customer">customer</form:option>
																		</form:select>
																	</div>
																</div>
																<div class="text-right">
																	<form:button class="btn btn-default btn-sm"
																		data-dismiss="modal">Cancel</form:button>
																	<form:button type="submit" name="btn-insert"
																		class="btn btn-primary btn-sm">Save</form:button>
																</div>
															</form:form>
														</div>
													</div>
												</div>
											</div>
											<table id="dt-opt" class="table table-lg table-hover">
												<thead>
													<tr>
														<th>Username</th>
														<th>Password</th>
														<th>Roles</th>
														<th><i class="ti-settings pdd-right-10"></i> Action</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="ac" items="${accounts}">
														<tr>
															<td>
																<div class="list-info mrg-top-10">
																	<img class="thumb-img"
																		src="<c:url value="/resources/"/>assets/images/avatars/businessman.png">
																	<div class="info">
																		<span class="title">${ac.username}</span>
																	</div>
																</div>
															</td>
															<td>
																<div class="relative mrg-top-15">${ac.password}</div>
															</td>
															<td>
																<div class="mrg-top-15">
																	<b>${ac.role}</b>
																</div>
															</td>
															<td>
																<div class="mrg-top-10 text-center">
																	<button type="button"
																		onclick="window.location.href='?lnkEdit&username=${ac.username}'"
																		class="btn btn-primary btn-rounded">
																		<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
																		Sửa
																	</button>
																	<button type="button"
																		class="btn btn-warning btn-rounded"
																		onclick="window.location.href='<c:url value='?lnkDelete&username=${ac.username}' />'">
																		<i class="fa fa-trash-o" aria-hidden="true"></i> Xóa
																	</button>
																</div>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Content Wrapper END -->

				<!-- Footer START -->
				<footer class="content-footer">
					<div class="footer">
						<div class="copyright">
							<span>Copyright © 2017 <b class="text-dark">Tấn Toàn</b>.
								All rights reserved.
							</span> <span class="go-right"> <a href="data-table.html"
								class="text-gray mrg-right-15">Term &amp; Conditions</a> <a
								href="data-table.html" class="text-gray">Privacy &amp;
									Policy</a>
							</span>
						</div>
					</div>
				</footer>
				<!-- Footer END -->
			</div>
			<!-- Page Container END -->
		</div>
	</div>
	<script src='<c:url value="/resources/"/>assets/js/vendor.js'></script>
	<script src='<c:url value="/resources/"/>assets/js/app.min.js'></script>
	<!-- page plugins js -->
	<script
		src='<c:url value="/resources/"/>bower_components/datatables/media/js/jquery.dataTables.js'></script>
	<script
		src='<c:url value="/resources/"/>bower_components/datatables/media/js/jquery.dataTables.js'></script>
	<script
		src='<c:url value="/resources/"/>bower_components/sweetalert/lib/sweet-alert.js'></script>
	<script
		src='<c:url value="/resources/"/>bower_components/noty/js/noty/packaged/jquery.noty.packaged.min.js'></script>
	<script
		src='<c:url value="/resources/"/>bower_components/selectize/dist/js/standalone/selectize.min.js'></script>
	<!-- page js -->
	<script src='<c:url value="/resources/"/>assets/js/table/data-table.js'></script>
	<script
		src='<c:url value="/resources/"/>assets/js/ui-elements/notification.js'></script>
</body>
</html>
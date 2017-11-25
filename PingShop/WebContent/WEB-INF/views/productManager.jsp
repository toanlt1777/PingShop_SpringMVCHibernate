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
	href='<c:url value="/resources/"/>bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker3.css'>
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
			<!-- Side Nav END -->

			<!-- Page Container START -->
			<div class="page-container">
				<jsp:include page="layouts/header.jsp" />
				<!-- Content Wrapper START -->
				<div class="main-content">
					<div class="container-fluid">
						<div class="page-title">
							<h4>Quản lý sản phẩm</h4>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-block">
										<div class="table-overflow">
											<button style="float: right" type="button"
												class="btn btn-success" data-toggle="modal"
												data-target="#modal-lg">
												<i class="fa fa-plus" aria-hidden="true"></i> Thêm
											</button>
											<c:if test="${not empty showform}">
												<div class="card-heading border bottom">
													<h4 class="card-title">Sửa sản phẩm</h4>
												</div>
												<div class="row">
													<div class="col-md-8 ml-auto mr-auto">
														<form:form action="productManager.poly"
															modelAttribute="product"
															class="form-horizontal mrg-top-40 pdd-right-30">
															<div class="row">
																<div class="col-md-6">
																	<div class="form-group">
																		<label>ID</label>
																		<form:input path="productId" type="text"
																			class="form-control" placeholder="Product ID" />
																	</div>
																</div>
																<div class="col-md-6">
																	<div class="form-group">
																		<label>Name</label>
																		<form:input path="productName" type="text"
																			class="form-control" placeholder="Product Name" />
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-md-12">
																	<div class="form-group">
																		<label>Quantity</label>
																		<form:input type="nunmber" path="quantity"
																			class="form-control" placeholder="Quantity" />
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-md-12">
																	<div class="form-group">
																		<label>Price</label>
																		<form:input path="price" name="price" type="number"
																			step="any" class="form-control" placeholder="Price" />
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-md-12">
																	<div class="form-group">
																		<label>Photo</label>
																		<form:input path="photo" name="photo" type="file"
																			class="form-control" placeholder="Photo" />
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-md-12">
																	<div class="form-group">
																		<label>Sale</label>
																		<form:input path="sale" name="sale" type="text"
																			class="form-control" placeholder="Sale" />
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-md-12">
																	<div class="form-group">
																		<label>Decription</label>
																		<form:textarea path="decription" name="decription"
																			type="text" class="form-control"
																			placeholder="Decription" />
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-md-12">
																	<div class="form-group">
																		<label>Manufacture</label>
																		<form:input path="manufacture" name="manufacture"
																			type="text" class="form-control"
																			placeholder="Manufacture" />
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-md-12">
																	<div class="form-group">
																		<label>Manufacturing Date</label>
																		<div class="timepicker-input input-group">
																			<span class="input-group-addon"> <i
																				class="ti-calendar"></i>
																			</span>
																			<form:input path="manufacturingDate"
																				name="manufacturingDate" type="text"
																				data-provide="datepicker"
																				class="form-control datepicker-1"
																				placeholder="Manufacturing Date" />
																		</div>
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-md-12">
																	<div class="form-group">
																		<label>Expiry Date</label>
																		<div class="timepicker-input input-group">
																			<span class="input-group-addon"> <i
																				class="ti-calendar"></i>
																			</span>
																			<form:input path="expiryDate" name="expiryDate"
																				type="text" class="form-control datepicker-1"
																				placeholder="Expiry Date" data-provide="datepicker" />
																		</div>
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-md-12">
																	<div class="form-group">
																		<label>Status</label>
																		<form:select class="form-control" id="sel1"
																			path="status">
																			<form:option value="enable">enable</form:option>
																			<form:option value="dissable">disable</form:option>
																		</form:select>
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-md-12">
																	<div class="form-group">
																		<label>Category ID</label>
																		<form:select class="form-control" id="sel1"
																			path="categorys.categoryId" items="${categorys}"
																			itemValue="categoryId" itemLabel="categoryId" />
																	</div>
																</div>
															</div>
															<div class="text-right">
																<form:button class="btn btn-default btn-sm">Cancel</form:button>
																<form:button type="submit" name="btn-update"
																	class="btn btn-primary btn-sm">Edit</form:button>
															</div>
														</form:form>
													</div>
												</div>
											</c:if>
											<p style="color: green;">${message1}</p>
											<p style="color: red">${message}</p>
											<%-- <form:errors path="productId"/>
																			<form:errors path="productName"/>
																			<form:errors path="quantity"/>
																			<form:errors path="price"/>
																			<form:errors path="photo"/>
																			<form:errors path="sale"/>
																			<form:errors path="decription"/>
																			<form:errors path="manufacture"/>
																			<form:errors path="manufacturingDate"/>
																			<form:errors path="expiryDate"/>
																			<form:errors path="status"/> --%>
											<!-- Modal START-->
											<div class="modal fade" id="modal-lg">
												<div class="modal-dialog modal-lg" role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h4>Add Product</h4>
														</div>
														<div class="card-block">
																<div class="row">
																	<div class="col-md-8 ml-auto mr-auto">
																		<form:form action="productManager.poly"
																			modelAttribute="product"
																			class="form-horizontal mrg-top-40 pdd-right-30">
																			<div class="row">
																				<div class="col-md-6">
																					<div class="form-group">
																						<label>ID</label>
																						<form:input path="productId" type="text"
																							class="form-control" placeholder="Product ID" />
																					</div>
																				</div>
																				<div class="col-md-6">
																					<div class="form-group">
																						<label>Name</label>
																						<form:input path="productName" type="text"
																							class="form-control" placeholder="Product Name" />
																					</div>
																				</div>
																			</div>
																			<div class="row">
																				<div class="col-md-12">
																					<div class="form-group">
																						<label>Quantity</label>
																						<form:input type="nunmber" path="quantity"
																							class="form-control" placeholder="Quantity" />
																					</div>
																				</div>
																			</div>
																			<div class="row">
																				<div class="col-md-12">
																					<div class="form-group">
																						<label>Price</label>
																						<form:input path="price" name="price"
																							type="number" step="any" class="form-control"
																							placeholder="Price" />
																					</div>
																				</div>
																			</div>
																			<div class="row">
																				<div class="col-md-12">
																					<div class="form-group">
																						<label>Photo</label>
																						<form:input path="photo" name="photo" type="file"
																							class="form-control" placeholder="Photo" />
																					</div>
																				</div>
																			</div>
																			<div class="row">
																				<div class="col-md-12">
																					<div class="form-group">
																						<label>Sale</label>
																						<form:input path="sale" name="sale" type="text"
																							class="form-control" placeholder="Sale" />
																					</div>
																				</div>
																			</div>
																			<div class="row">
																				<div class="col-md-12">
																					<div class="form-group">
																						<label>Decription</label>
																						<form:textarea path="decription" name="decription"
																							type="text" class="form-control"
																							placeholder="Decription" />
																					</div>
																				</div>
																			</div>
																			<div class="row">
																				<div class="col-md-12">
																					<div class="form-group">
																						<label>Manufacture</label>
																						<form:input path="manufacture" name="manufacture"
																							type="text" class="form-control"
																							placeholder="Manufacture" />
																					</div>
																				</div>
																			</div>
																			<div class="row">
																				<div class="col-md-12">
																					<div class="form-group">
																						<label>Manufacturing Date</label>
																						<div class="timepicker-input input-group">
																							<span class="input-group-addon"> <i
																								class="ti-calendar"></i>
																							</span>
																							<form:input path="manufacturingDate"
																								name="manufacturingDate" type="text"
																								data-provide="datepicker"
																								class="form-control datepicker-1"
																								placeholder="Manufacturing Date" />
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="row">
																				<div class="col-md-12">
																					<div class="form-group">
																						<label>Expiry Date</label>
																						<div class="timepicker-input input-group">
																							<span class="input-group-addon"> <i
																								class="ti-calendar"></i>
																							</span>
																							<form:input path="expiryDate" name="expiryDate"
																								type="text" class="form-control datepicker-1"
																								placeholder="Expiry Date"
																								data-provide="datepicker" />
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="row">
																				<div class="col-md-12">
																					<div class="form-group">
																						<label>Status</label>
																						<form:select class="form-control" id="sel1"
																							path="status">
																							<form:option value="enable">enable</form:option>
																							<form:option value="dissable">disable</form:option>
																						</form:select>
																					</div>
																				</div>
																			</div>
																			<div class="row">
																				<div class="col-md-12">
																					<div class="form-group">
																						<label>Category ID</label>
																						<form:select class="form-control" id="sel1"
																							path="categorys.categoryId" items="${categorys}"
																							itemValue="categoryId" itemLabel="categoryId" />
																					</div>
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
													</div>
												</div>
											</div>
											<table id="dt-opt" class="table table-responsive">
												<thead>
													<tr>
														<th>Product ID | Product Name | Photo</th>
														<th>Quantity</th>
														<th>Price</th>
														<th>Decription</th>
														<th>Manufacture</th>
														<th>Manufacturing Date</th>
														<th>ExpiryDate</th>
														<th>Status</th>
														<th>Category Name</th>
														<th><i class="ti-settings pdd-right-10"></i> Action</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="pro" items="${products}">
														<tr>
															<td>
																<div class="list-info mrg-top-10">
																	<img class="thumb-img"
																		src="<c:url value="/resources/"/>images/${pro.photo}">
																	<div class="info">
																		<span class="title">ID: ${pro.productId}</span> <span
																			class="sub-title">${pro.productName}</span>
																	</div>
																</div>
															</td>
															<td>
																<div class="relative mrg-top-15">${pro.quantity}</div>
															</td>
															<td>
																<div class="relative mrg-top-15">$ ${pro.price}</div>
															</td>
															<td>
																<div class="relative mrg-top-15">${pro.decription}</div>
															</td>
															<td>
																<div class="relative mrg-top-15">${pro.manufacture}</div>
															</td>
															<td>
																<div class="relative mrg-top-15">${pro.manufacturingDate}</div>
															</td>
															<td>
																<div class="relative mrg-top-15">${pro.expiryDate}</div>
															</td>
															<td>
																<div class="relative mrg-top-15">${pro.status}</div>
															</td>
															<td>
																<div class="relative mrg-top-15">${pro.categorys.categoryName}</div>
															</td>
															<td>
																<!-- onclick="window.location.href='?lnkEdit&username=${u.username}'" -->
																<div class="mrg-top-10 text-center">
																	<button type="button"
																		onclick="window.location.href='?lnkEdit&productId=${pro.productId}'"
																		class="btn btn-primary btn-rounded">
																		<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
																		Sửa
																	</button>
																	<button type="button"
																		class="btn btn-warning btn-rounded"
																		onclick="window.location.href='<c:url value='?lnkDelete&productId=${pro.productId}' />'">
																		<i class="fa fa-trash-o" aria-hidden="true"></i> Xóa
																	</button>
																</div>
															</td>
														</tr>
													</c:forEach>
													<%-- <tr>
														<td>
															<div class="list-info mrg-top-10">
																<img class="thumb-img"
																	src="assets/images/avatars/thumb-1.jpg" alt="">
																<div class="info">
																	<span class="title">Tấn Toàn</span> <span
																		class="sub-title">ID 1</span>
																</div>
															</div>
														</td>
														<td>
															<div class="relative mrg-top-15">123123a</div>
														</td>
														<td>
															<div class="mrg-top-15">
																<b>toanltpd01646@fpt.edu.vn</b>
															</div>
														</td>
														<td>
															<div class="mrg-top-10 text-center">
																<button type="button"
																	class="btn btn-primary btn-rounded">
																	<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
																	Sửa
																</button>
																<button type="button"
																	class="btn btn-warning btn-rounded">
																	<i class="fa fa-trash-o" aria-hidden="true"></i> Xóa
																</button>
															</div>
														</td>
													</tr> --%>
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
	<script src='<c:url value="/resources/"/>assets/js/vendor.js'></script>
	<script src='<c:url value="/resources/"/>assets/js/app.min.js'></script>
	<!-- page plugins js -->
	<script
		src='<c:url value="/resources/"/>bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.js'></script>
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
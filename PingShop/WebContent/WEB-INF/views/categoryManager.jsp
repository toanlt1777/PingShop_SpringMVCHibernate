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
			<div class="side-nav">
				<div class="side-nav-inner">
					<div class="side-nav-logo">
						<a href="accountManager.poly">
							<div class="logo logo-dark"
								style="background-image: url('<c:url value="/resources/"/>assets/images/logo/logo.png');background-size: 100%"></div>
							<div class="logo logo-white"
								style="background-image: url('<c:url value="/resources/"/>assets/images/logo/logo-1.png');background-size: 100%"></div>
						</a>
						<div class="mobile-toggle side-nav-toggle">
							<a><i class="ti-arrow-circle-left"></i> </a>
						</div>
					</div>
					<ul class="side-nav-menu scrollable">
						<li class="nav-item"><a class="mrg-top-30"
							href="accountManager.poly"> <span class="icon-holder">
									<i class="ti-user"></i>
							</span> <span class="title">Quản lý tài khoản</span>
						</a></li>
						<li class="nav-item dropdown"><a
							href="accountManager.poly"> <span class="icon-holder">
									<i class="ei-myspace"></i>
							</span> <span class="title">Quản lý khách hàng</span>
						</a></li>
						<li class="nav-item dropdown"><a
							href="categoryManager.poly"> <span class="icon-holder">
									<i class="ei-collaboration"></i>
							</span> <span class="title">Quản lý danh mục</span>
						</a></li>
						<li class="nav-item dropdown"><a
							href="productManager.poly"> <span class="icon-holder">
									<i class="ei-package-open"></i>
							</span> <span class="title">Quản lý sản phẩm</span>
						</a></li>
					</ul>
				</div>
			</div>
			<!-- Side Nav END -->

			<!-- Page Container START -->
			<div class="page-container">
				<!-- Header START -->
				<div class="header navbar">
					<div class="header-container">
						<ul class="nav-left">
							<li><a class="side-nav-toggle" href="javascript:void(0);">
									<i class="ti-view-grid"></i>
							</a></li>
							<li class="search-box"><a class="search-toggle no-pdd-right"
								href="javascript:void(0);"> <i
									class="search-icon ti-search pdd-right-10"></i> <i
									class="search-icon-close ti-close pdd-right-10"></i>
							</a></li>
							<li class="search-input"><input class="form-control"
								type="text" placeholder="Search...">
								<div class="advanced-search">
									<div class="search-wrapper">
										<div class="pdd-vertical-10">
											<span
												class="display-block mrg-vertical-5 pdd-horizon-20 text-gray">
												<i class="ti-user pdd-right-5"></i> <span>People</span>
											</span>
											<ul class="list-unstyled list-info">
												<li><a href="data-table.html"> <img
														class="thumb-img" src="assets/images/avatars/thumb-1.jpg"
														alt="">
														<div class="info">
															<span class="title">Tấn Toàn</span> <span
																class="sub-title"> <i class="ti-location-pin"></i>
																<span>44 Shirley Ave. West Chicago</span>
															</span>
														</div>
												</a></li>
												<li><a href="data-table.html"> <img
														class="thumb-img" src="assets/images/avatars/thumb-5.jpg"
														alt="">
														<div class="info">
															<span class="title">Jennifer Watkins</span> <span
																class="sub-title"> <i class="ti-location-pin"></i>
																<span>514 S. Magnolia St. Orlando</span>
															</span>
														</div>
												</a></li>
												<li><a href="data-table.html"> <img
														class="thumb-img" src="assets/images/avatars/thumb-4.jpg"
														alt="">
														<div class="info">
															<span class="title">Michael Birch</span> <span
																class="sub-title"> <i class="ti-location-pin"></i>
																<span>70 Bowman St. South Windsor</span>
															</span>
														</div>
												</a></li>
											</ul>
										</div>
										<div class="mrg-horizon-20 border top"></div>
										<div class="pdd-vertical-10">
											<span
												class="display-block mrg-vertical-5 pdd-horizon-20 text-gray">
												<i class="ti-rss pdd-right-5"></i> <span>Post</span>
											</span>
											<ul class="list-unstyled list-info">
												<li><a href="data-table.html"> <img
														class="thumb-img" src="assets/images/img-1.jpg" alt="">
														<div class="info">
															<span class="title">Artoo expresses his relief</span> <span
																class="sub-title"> <span>Oh, thank
																	goodness we're coming out...</span>
															</span>
														</div>
												</a></li>
												<li><a href="data-table.html"> <img
														class="thumb-img" src="assets/images/img-2.jpg" alt="">
														<div class="info">
															<span class="title">Ready for some power?</span> <span
																class="sub-title"> <span>Lord Vader. You
																	may take Caption So...</span>
															</span>
														</div>
												</a></li>
											</ul>
										</div>
									</div>
									<div class="search-footer">
										<span>You are Searching for '<b class="text-dark"><span
												class="serach-text-bind"></span></b>'
										</span>
									</div>
								</div></li>
						</ul>
						<ul class="nav-right">
							<li class="user-profile dropdown"><a
								href="accountManager.poly" class="dropdown-toggle"
								data-toggle="dropdown"> <img class="profile-img img-fluid"
									src="<c:url value="/resources/"/>assets/images/user.jpg"">
									<div class="user-info">
										<span class="name pdd-right-5">
											<%-- ${Logins.username} --%> Administrator
										</span> <i class="ti-angle-down font-size-10"></i>
									</div>
							</a>
								<ul class="dropdown-menu">
									<li><a href="data-table.html"> <i
											class="ti-settings pdd-right-10"></i> <span>Setting</span>
									</a></li>
									<li><a href="data-table.html"> <i
											class="ti-user pdd-right-10"></i> <span>Profile</span>
									</a></li>
									<li><a href="data-table.html"> <i
											class="ti-email pdd-right-10"></i> <span>Inbox</span>
									</a></li>
									<li role="separator" class="divider"></li>
									<li><a href="login.poly"> <i
											class="ti-power-off pdd-right-10"></i> <span>Logout</span>
									</a></li>
								</ul></li>
							<li class="notifications dropdown"><a href="data-table.html"
								class="dropdown-toggle" data-toggle="dropdown"> <i
									class="ti-bell"></i>
							</a>

								<ul class="dropdown-menu ">
									<li class="notice-header"><i class="ti-bell pdd-right-10"></i>
										<span>Notifications</span></li>
									<li>
										<ul class="list-info overflow-y-auto relative scrollable">
											<li><a href="data-table.html"> <img
													class="thumb-img" src="assets/images/avatars/thumb-5.jpg"
													alt="">
													<div class="info">
														<span class="title"> <span
															class="font-size-14 text-semibold">Jennifer
																Watkins</span> <span class="text-gray">commented on your
																<span class="text-dark">post</span>
														</span>
														</span> <span class="sub-title">5 mins ago</span>
													</div>
											</a></li>
											<li><a href="data-table.html"> <img
													class="thumb-img" src="assets/images/avatars/thumb-4.jpg"
													alt="">
													<div class="info">
														<span class="title"> <span
															class="font-size-14 text-semibold">Samuel Field</span> <span
															class="text-gray">likes your <span
																class="text-dark">photo</span></span>
														</span> <span class="sub-title">8 hours ago</span>
													</div>
											</a></li>
											<li><a href="data-table.html"> <span
													class="thumb-img bg-primary"> <span
														class="text-white">M</span>
												</span>
													<div class="info">
														<span class="title"> <span
															class="font-size-14 text-semibold">Michael Birch</span> <span
															class="text-gray">likes your <span
																class="text-dark">photo</span></span>
														</span> <span class="sub-title">5 hours ago</span>
													</div>
											</a></li>
											<li><a href="data-table.html"> <span
													class="thumb-img bg-success"> <span
														class="text-white"><i class="fa fa-paper-plane-o"></i></span>
												</span>
													<div class="info">
														<span class="title"> <span
															class="font-size-14 text-semibold">Message sent</span>
														</span> <span class="sub-title">8 hours ago</span>
													</div>
											</a></li>
											<li><a href="data-table.html"> <span
													class="thumb-img bg-info"> <span class="text-white"><i
															class="ti-user"></i></span>
												</span>
													<div class="info">
														<span class="title"> <span
															class="font-size-14 text-semibold">Admin</span> <span
															class="text-gray">Welcome on board</span>
														</span> <span class="sub-title">8 hours ago</span>
													</div>
											</a></li>
										</ul>
									</li>

									<li class="notice-footer"><span> <a
											href="data-table.html" class="text-gray">Check all
												notifications <i
												class="ei-right-chevron pdd-left-5 font-size-10"></i>
										</a>
									</span></li>
								</ul></li>
							<li><a class="side-panel-toggle" href="javascript:void(0);">
									<i class="ti-align-right"></i>
							</a></li>
						</ul>
					</div>
				</div>
				<!-- Header END -->

				<!-- Side Panel START -->
				<div class="side-panel">
					<div class="side-panel-wrapper bg-white">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item active"><a class="nav-link"
								href="data-table.html#chat" role="tab" data-toggle="tab"> <span>Chat</span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="data-table.html#profile" role="tab" data-toggle="tab">
									<span>Profile</span>
							</a></li>
							<li class="nav-item "><a class="nav-link"
								href="data-table.html#todo-list" role="tab" data-toggle="tab">
									<span>Todo</span>
							</a></li>
							<li class="panel-close"><a class="side-panel-toggle"
								href="javascript:void(0);"> <i class="ti-close"></i>
							</a></li>
						</ul>
						<div class="tab-content">
							<!-- chat START -->
							<div id="chat" role="tabpanel" class="tab-pane fade in active">
								<div class="chat">
									<div class="chat-user-list scrollable">
										<div class="chat-section">
											<h5 class="chat-title">Recent</h5>
											<a href="javascript:void(0);" class="chat-user chat-toggle">
												<img class="thumb-img"
												src="assets/images/avatars/thumb-1.jpg" alt="">
												<div class="user-info">
													<span class="user-name">Tấn Toàn</span> <span
														class="prev-chat">What good's a reward if...</span>
												</div> <span class="status online"><span></span></span>
											</a> <a href="javascript:void(0);" class="chat-user chat-toggle">
												<img class="thumb-img"
												src="assets/images/avatars/thumb-2.jpg" alt="">
												<div class="user-info">
													<span class="user-name">Harriet Douglas</span> <span
														class="prev-chat">Don't talk to me, stranger...</span>
												</div> <span class="status no-disturb"></span>
											</a> <a href="javascript:void(0);" class="chat-user chat-toggle">
												<img class="thumb-img"
												src="assets/images/avatars/thumb-3.jpg" alt="">
												<div class="user-info">
													<span class="user-name">Victoria Clayton</span> <span
														class="prev-chat">Well, the Force is what...</span>
												</div> <span class="status away"></span>
											</a> <a href="javascript:void(0);" class="chat-user chat-toggle">
												<img class="thumb-img"
												src="assets/images/avatars/thumb-6.jpg" alt="">
												<div class="user-info">
													<span class="user-name">Michael Birch</span> <span
														class="prev-chat">Good. Use your aggressive...</span>
												</div> <span class="status online"></span>
											</a>
										</div>
										<div class="chat-section">
											<h5 class="chat-title">Members</h5>
											<a href="javascript:void(0);" class="chat-user chat-toggle">
												<img class="thumb-img"
												src="assets/images/avatars/thumb-4.jpg" alt="">
												<div class="user-info">
													<span class="user-name pdd-top-5">Samuel Field</span>
												</div> <span class="status"></span>
											</a> <a href="javascript:void(0);" class="chat-user chat-toggle">
												<img class="thumb-img"
												src="assets/images/avatars/thumb-5.jpg" alt="">
												<div class="user-info">
													<span class="user-name pdd-top-5">Jennifer Watkins</span>
												</div> <span class="status"></span>
											</a> <a href="javascript:void(0);" class="chat-user chat-toggle">
												<img class="thumb-img"
												src="assets/images/avatars/thumb-6.jpg" alt="">
												<div class="user-info">
													<span class="user-name pdd-top-5">Michael Birch</span>
												</div> <span class="status"></span>
											</a> <a href="javascript:void(0);" class="chat-user chat-toggle">
												<img class="thumb-img"
												src="assets/images/avatars/thumb-10.jpg" alt="">
												<div class="user-info">
													<span class="user-name pdd-top-5">Renee Edwards</span>
												</div> <span class="status"></span>
											</a> <a href="javascript:void(0);" class="chat-user chat-toggle">
												<img class="thumb-img"
												src="assets/images/avatars/thumb-11.jpg" alt="">
												<div class="user-info">
													<span class="user-name pdd-top-5">Kathy White</span>
												</div> <span class="status"></span>
											</a> <a href="javascript:void(0);" class="chat-user chat-toggle">
												<img class="thumb-img"
												src="assets/images/avatars/thumb-9.jpg" alt="">
												<div class="user-info">
													<span class="user-name pdd-top-5">Daryl Ellis</span>
												</div> <span class="status"></span>
											</a>
										</div>
									</div>
									<div class="conversation">
										<div class="conversation-wrapper">
											<div class="conversation-header">
												<a href="javascript:void(0);" class="back chat-toggle">
													<i class="ti-arrow-circle-left"></i>
												</a> <span class="user-name">Tấn Toàn</span>
											</div>
											<div class="conversation-body">
												<div class="msg">
													<div class="bubble me">
														<span>Feeling all right, sir?</span>
													</div>
												</div>
												<div class="msg">
													<div class="bubble friend">
														<span>Just like new</span>
													</div>
												</div>
												<div class="msg">
													<div class="bubble friend">
														<span>How about you?</span>
													</div>
												</div>
												<div class="msg">
													<div class="bubble me">
														<span>Right now I feel I could take on the whole
															Empire myself</span>
													</div>
												</div>
												<div class="msg">
													<div class="bubble friend">
														<span>All right</span>
													</div>
												</div>
											</div>
											<div class="conversation-footer">
												<button class="upload-btn">
													<i class="ti-camera"></i>
												</button>
												<input class="chat-input" type="text"
													placeholder="Type a message...">
												<button class="sent-btn">
													<i class="fa fa-send-o"></i>
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- chat END -->
							<!-- profile START -->
							<div id="profile" role="tabpanel" class="tab-pane fade">
								<div class="profile scrollable">
									<div class="pdd-horizon-20 pdd-top-20">
										<div class="border bottom">
											<div class="text-center mrg-top-20">
												<div class="row">
													<div class="col-md-6 ml-auto mr-auto text-center">
														<img class="img-fluid border-radius-round"
															src="assets/images/avatars/user-1.jpg" alt="">
													</div>
												</div>
												<h4 class="mrg-top-20">Nate</h4>
												<span class="">@Frontend Developer</span>
											</div>
											<div class="row text-center pdd-vertical-20">
												<div class="col-sm-12">
													<div class="row">
														<div class="col-sm-4 col-xs-4 border right">
															<div class="pdd-vertical-10">
																<span class="font-size-18 text-dark">18</span> <small>Projects</small>
															</div>
														</div>
														<div class="col-sm-4 col-xs-4 border right">
															<div class="pdd-vertical-10">
																<span class="font-size-18 text-dark">1,362</span> <small>Followers</small>
															</div>
														</div>
														<div class="col-sm-4 col-xs-4">
															<div class="pdd-vertical-10">
																<span class="font-size-18 text-dark">362</span> <small>Points</small>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="pdd-horizon-20 pdd-top-20">
										<div class="border bottom">
											<h5 class="text-dark mrg-btm-20">Quick Tools</h5>
											<ul class="list-unstyled list-link font-size-16 pdd-btm-20">
												<li><a href="data-table.html"> <i
														class="ti-user pdd-right-10"></i> <span>Friend
															Request</span> <span class="label label-info mrg-left-5">2</span>
												</a></li>
												<li><a href="data-table.html"> <i
														class="ti-book pdd-right-10"></i> <span>Inbox</span> <span
														class="label label-warning mrg-left-5">8</span>
												</a></li>
												<li><a href="data-table.html"> <i
														class="ti-settings pdd-right-10"></i> <span>Settings</span>
												</a></li>
											</ul>
										</div>
									</div>
									<div class="padding-20">
										<h5 class="text-dark mrg-btm-20">Recent</h5>
										<ul class="list-unstyled list-info">
											<li><a href="data-table.html"> <img
													class="thumb-img" src="assets/images/avatars/thumb-1.jpg"
													alt="">
													<div class="info">
														<span class="title">Tấn Toàn</span> <span
															class="sub-title">have send you a request</span> <span
															class="float-object">8m</span>
													</div>
											</a></li>
											<li><a href="data-table.html"> <img
													class="thumb-img" src="assets/images/avatars/thumb-4.jpg"
													alt="">
													<div class="info">
														<span class="title">Samuel Field</span> <span
															class="sub-title">have send you a request</span> <span
															class="float-object">7d</span>
													</div>
											</a></li>
											<li><a href="data-table.html"> <span
													class="thumb-img bg-info text-center font-size-25 font-secondary">
														<span class="text-white">E</span>
												</span>
													<div class="info">
														<span class="title">Espire</span> <span class="sub-title">Welcome
															on Board</span> <span class="float-object">7d</span>
													</div>
											</a></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- profile END -->
							<!-- todo START -->
							<div id="todo-list" role="tabpanel" class="tab-pane fade">
								<div class="todo-wrapper">
									<div class="todo-category-wrapper">
										<div class="row mrg-btm-15">
											<div class="col-md-12">
												<h3 class="no-mrg-top">Todo List</h3>
											</div>
										</div>
										<a href="javascript:void(0);" class="todo-toggle">
											<div class="todo-category">
												<span class="amount">8</span> <span class="category">Today</span>
											</div>
										</a> <a href="javascript:void(0);" class="todo-toggle">
											<div class="todo-category">
												<span class="amount">18</span> <span class="category">This
													Week</span>
											</div>
										</a> <a href="javascript:void(0);" class="todo-toggle">
											<div class="todo-category">
												<span class="amount">28</span> <span class="category">This
													Month</span>
											</div>
										</a> <a href="javascript:void(0);" class="todo-toggle">
											<div class="create-category">
												<i class="amount fa fa-plus-circle"></i> <span
													class="category">New Category</span>
											</div>
										</a>
									</div>

									<div class="todolist-wrapper">
										<div class="todolist-header">
											<a href="javascript:void(0);" class="back todo-toggle"> <i
												class="ti-arrow-circle-left"></i>
											</a>
											<h3 class="category">This Week</h3>
											<a href="data-table.html" class="add"> <span>ADD</span>
											</a>
										</div>
										<div class="todolist-body">
											<div class="checkbox">
												<button class="delete">
													<i class="ti-close"></i>
												</button>
												<input id="task1" name="task1" type="checkbox"> <label
													for="task1">I hope the old man got that tractor </label>
											</div>
											<div class="checkbox">
												<button class="delete">
													<i class="ti-close"></i>
												</button>
												<input id="task2" name="task2" type="checkbox"> <label
													for="task2">Come on, come on!</label>
											</div>
											<div class="checkbox">
												<button class="delete">
													<i class="ti-close"></i>
												</button>
												<input id="task3" name="task3" type="checkbox"> <label
													for="task3">it was dangerous here</label>
											</div>
											<div class="checkbox">
												<button class="delete">
													<i class="ti-close"></i>
												</button>
												<input id="task4" name="task4" type="checkbox"> <label
													for="task4">I hope the old man got that tractor </label>
											</div>
											<div class="checkbox">
												<button class="delete">
													<i class="ti-close"></i>
												</button>
												<input id="task5" name="task5" type="checkbox"> <label
													for="task5">Artoo! Artoo, quickly!</label>
											</div>
										</div>
										<div class="todolist-body">
											<div class="pdd-btm-5 mrg-btm-15 border bottom">
												<p class="mrg-btm-5">Completed</p>
											</div>
											<div class="checkbox">
												<button class="delete">
													<i class="ti-close"></i>
												</button>
												<input id="completed-1" name="completed-1" type="checkbox"
													checked=""> <label for="completed-1">I hope
													the old man got that tractor </label>
											</div>
											<div class="checkbox">
												<button class="delete">
													<i class="ti-close"></i>
												</button>
												<input id="completed-2" name="completed-2" type="checkbox"
													checked=""> <label for="completed-2">Come
													on, come on!</label>
											</div>
											<div class="checkbox">
												<button class="delete">
													<i class="ti-close"></i>
												</button>
												<input id="completed-3" name="completed-3" type="checkbox"
													checked=""> <label for="completed-3">it was
													dangerous here</label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Side Panel END -->

				<!-- theme configurator START -->
				<div class="theme-configurator">
					<div class="configurator-wrapper">
						<div class="config-header">
							<h4 class="config-title">Config Panel</h4>
							<button class="config-close">
								<i class="ti-close"></i>
							</button>
						</div>
						<div class="config-body">
							<div class="mrg-btm-30">
								<p class="lead font-weight-normal">Header Color</p>
								<div class="theme-colors header-default">
									<input type="radio" id="header-default" name="theme"> <label
										for="header-default"></label>
								</div>
								<div class="theme-colors header-primary">
									<input type="radio" class="primary" id="header-primary"
										name="theme"> <label for="header-primary"></label>
								</div>
								<div class="theme-colors header-info">
									<input type="radio" id="header-info" name="theme"> <label
										for="header-info"></label>
								</div>
								<div class="theme-colors header-success">
									<input type="radio" id="header-success" name="theme"> <label
										for="header-success"></label>
								</div>
								<div class="theme-colors header-danger">
									<input type="radio" id="header-danger" name="theme"> <label
										for="header-danger"></label>
								</div>
								<div class="theme-colors header-dark">
									<input type="radio" id="header-dark" name="theme"> <label
										for="header-dark"></label>
								</div>
							</div>
							<div class="mrg-btm-30">
								<p class="lead font-weight-normal">Sidebar Color</p>
								<div class="theme-colors sidenav-default">
									<input type="radio" id="sidenav-default" name="sidenav">
									<label for="sidenav-default"></label>
								</div>
								<div class="theme-colors side-nav-dark">
									<input type="radio" id="side-nav-dark" name="sidenav">
									<label for="side-nav-dark"></label>
								</div>
							</div>
							<div class="mrg-btm-30">
								<p class="lead font-weight-normal no-mrg-btm">RTL</p>
								<div
									class="toggle-checkbox checkbox-inline toggle-sm mrg-top-10">
									<input type="checkbox" name="rtl-toogle" id="rtl-toogle">
									<label for="rtl-toogle"></label>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- theme configurator END -->

				<!-- Theme Toggle Button START -->
				<button class="theme-toggle btn btn-rounded btn-icon">
					<i class="ti-palette"></i>
				</button>
				<!-- Theme Toggle Button END -->

				<!-- Content Wrapper START -->
				<div class="main-content">
					<div class="container-fluid">
						<div class="page-title">
							<h4>Quản lý danh mục</h4>
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
											<p style="color: green;">${message1}</p>
											<p style="color: red">${message}</p>
											<%-- <!-- Modal START-->
											<div class="modal fade" id="default-modal">
												<div class="modal-dialog" role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h4>Add account</h4>
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
											<!-- Modal 2 START-->
											<div class="modal fade" id="default2-modal">
												<div class="modal-dialog" role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h4>Edit account</h4>
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
																		<form:input path="role" name="role"
																			type="text" class="form-control" id="form-1-3"
																			placeholder="Roles" />
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
																	<form:button type="submit" name="btn-update"
																		class="btn btn-primary btn-sm">Edit</form:button>
																</div>
															</form:form>
														</div>
													</div>
												</div>
											</div> --%>
											<table id="dt-opt" class="table table-lg table-hover">
												<thead>
													<tr>
														<th>Category ID</th>
														<th>Category Name</th>
														<th><i class="ti-settings pdd-right-10"></i> Action</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="cate" items="${categorys}">
														<tr>
															<td>
																<div class="relative mrg-top-15">${cate.categoryId}</div>
															</td>
															<td>
																<div class="relative mrg-top-15">${cate.categoryName}</div>
															</td>
															<td>
																<!-- onclick="window.location.href='?lnkEdit&username=${u.username}'" -->
																<div class="mrg-top-10 text-center">
																	<button type="button" data-toggle="modal"
																		data-target="#default2-modal"
																		<%-- onclick="window.location.href='?lnkEdit&username=${ac.username}'" --%>
																		class="btn btn-primary btn-rounded">
																		<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
																		Sửa
																	</button>
																	<%-- <a href="userManager.poly?lnkEdit&username=${u.username}"
																		data-toggle="modal" data-target="#default2-modal"><i
																		class="fa fa-pencil-square-o" aria-hidden="true"></i>
																		Sửa</a> --%>
																	<button type="button"
																		class="btn btn-warning btn-rounded"
																		onclick="window.location.href='<c:url value='?lnkDelete&username=${ac.username}' />'">
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
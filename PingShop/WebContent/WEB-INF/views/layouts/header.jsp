<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
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
									<li><a href="data-table.html"> <img class="thumb-img"
											src="resources/assets/images/avatars/thumb-1.jpg" alt="">
											<div class="info">
												<span class="title">Tấn Toàn</span> <span class="sub-title">
													<i class="ti-location-pin"></i> <span>44 Shirley
														Ave. West Chicago</span>
												</span>
											</div>
									</a></li>
									<li><a href="data-table.html"> <img class="thumb-img"
											src="resources/assets/images/avatars/thumb-5.jpg" alt="">
											<div class="info">
												<span class="title">Jennifer Watkins</span> <span
													class="sub-title"> <i class="ti-location-pin"></i> <span>514
														S. Magnolia St. Orlando</span>
												</span>
											</div>
									</a></li>
									<li><a href="data-table.html"> <img class="thumb-img"
											src="resources/assets/images/avatars/thumb-4.jpg" alt="">
											<div class="info">
												<span class="title">Michael Birch</span> <span
													class="sub-title"> <i class="ti-location-pin"></i> <span>70
														Bowman St. South Windsor</span>
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
									<li><a href="data-table.html"> <img class="thumb-img"
											src="resources/assets/images/img-1.jpg" alt="">
											<div class="info">
												<span class="title">Artoo expresses his relief</span> <span
													class="sub-title"> <span>Oh, thank goodness
														we're coming out...</span>
												</span>
											</div>
									</a></li>
									<li><a href="data-table.html"> <img class="thumb-img"
											src="resources/assets/images/img-2.jpg" alt="">
											<div class="info">
												<span class="title">Ready for some power?</span> <span
													class="sub-title"> <span>Lord Vader. You may
														take Caption So...</span>
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
				<li class="user-profile dropdown"><a href=""
					class="dropdown-toggle" data-toggle="dropdown"> <img
						class="profile-img img-fluid"
						src="<c:url value="/resources/"/>assets/images/user.jpg"">
						<div class="user-info">
							<span class="name pdd-right-5"> <%-- ${Logins.username} --%>
								${nguoidung }
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
						<li><a href="logout.poly"> <i
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
						<input type="radio" id="sidenav-default" name="sidenav"> <label
							for="sidenav-default"></label>
					</div>
					<div class="theme-colors side-nav-dark">
						<input type="radio" id="side-nav-dark" name="sidenav"> <label
							for="side-nav-dark"></label>
					</div>
				</div>
				<div class="mrg-btm-30">
					<p class="lead font-weight-normal no-mrg-btm">RTL</p>
					<div class="toggle-checkbox checkbox-inline toggle-sm mrg-top-10">
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
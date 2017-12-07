<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
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
							href="customerManager.poly"> <span class="icon-holder">
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
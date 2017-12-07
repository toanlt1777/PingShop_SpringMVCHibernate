<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<title>Ping Shop</title>
<link rel="shortcut icon"
	href='<c:url value="/resources/"/>images/3.ico'>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<!-- The styles -->
<!-- plugins css -->
<link rel="stylesheet"
	href='<c:url value="/resources/"/>css/bootstrap.min.css'>
<link rel="stylesheet" href='<c:url value="/resources/"/>css/style.css'>
<link rel="stylesheet"
	href='<c:url value="/resources/"/>css/font-awesome.css'>
<link rel="stylesheet"
	href='<c:url value="/resources/"/>css/skdslider.css'>
<!-- js -->
<script src='<c:url value="/resources/"/>js/jquery-1.11.1.min.js'></script>
<script src='<c:url value="/resources/"/>js/move-top.js'></script>
<script src='<c:url value="/resources/"/>js/easing.js'></script>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
</head>
<body>
	<!-- header -->
	<div class="agileits_header">
		<div class="container">
			<div class="w3l_offers">
				<p>
					<s:message code="global.sale.title" />
					<!-- SALE UP TO 70% OFF. USE CODE "SALE70%"  -->
					. <a href="index.poly"><s:message code="global.sale.shop" /></a>
				</p>
			</div>
			<div class="agile-login">
				<ul>
					<li><a href="index.poly" data-lang="vi"><img
							src="resources/images/vietnam.png"></a> | <a href="index.poly"
						data-lang="en"><img src="resources/images/united-states.png"></a>
						| <a href="index.poly" data-lang="jp"><img
							src="resources/images/japan.png"></a></li>
					<li><a href="login.poly"><s:message code="global.login" />
							<i class="fa fa-sign-in" aria-hidden="true"></i></a></li>
				</ul>
				<script>
					$("a[data-lang]").click(function() {
						var lang = $(this).data("lang");
						$.get("index.poly?lang=" + lang, function() {
							location.reload();
						});
						return false;
					});
				</script>
			</div>
			<div class="product_list_header">
				<form action="#" method="post" class="last">
					<input type="hidden" name="cmd" value="_cart"> <input
						type="hidden" name="display" value="1">
					<button class="w3view-cart" type="submit" name="submit" value="">
						<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
					</button>
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="logo_products">
		<div class="container">
			<div class="w3ls_logo_products_left1">
				<a href="index.html"><img
					src="<c:url value="/resources/"/>images/logo.jpg" width='120px'
					height='120px' /></a>
			</div>
			<div class="w3l_search">
				<form action="#" method="post">
					<input type="search" name="Search"
						placeholder="<s:message
									code="global.search" />..."
						required="required">
					<button type="submit" class="btn btn-default search"
						aria-label="Left Align">
						<i class="fa fa-search" aria-hidden="true"> </i>
					</button>
					<div class="clearfix"></div>
				</form>
			</div>

			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //header -->
	<!-- navigation -->
	<div class="navigation-agileits">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header nav_2">
					<button type="button"
						class="navbar-toggle collapsed navbar-toggle1"
						data-toggle="collapse" data-target="#bs-megadropdown-tabs">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>

				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.html" class="act"><s:message
									code="global.menu.home" /></a></li>
						<!-- Mega Menu -->
						<%-- <c:forEach var="item" items="${listCategory}">
							<li class="dropdown"><a
								href="${pageContext.request.contextPath}/index.poly/listProduct?categoryId=${item.categoryId}"
								class="dropdown-toggle" data-toggle="dropdown">${item.categoryName}<b
									class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="multi-gd-img">
											<ul class="multi-column-dropdown">
												<h6>All Category</h6>
												<li><a href="">.</a></li>
											</ul>
										</div>
									</div>
								</ul></li>
						</c:forEach> --%>
						<c:forEach var="item" items="${listCategory}">
							<li><a
								href="${pageContext.request.contextPath}/index.poly?listProduct&categoryId=${item.categoryId}">${item.categoryName}</a></li>
						</c:forEach>
						<li><a href="contact.html">Liên hệ</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</div>

	<!-- //navigation -->
	<!-- main-slider -->
	<ul id="demo1">
		<li><img src="<c:url value="/resources/"/>images/top.jpg" /> <!--Slider Description example-->
			<div class="slide-desc">
				<h2>
					<s:message code="global.slide.brand" />
				</h2>
				<h1 class="text-warning"
					style="font-family: Helvetica; font-size: 40px; font-weight: bold; font-variant: small-caps;">
					<s:message code="global.slide.title" />
				</h1>
			</div></li>
		<li><img src="<c:url value="/resources/"/>images/top2.jpg" />
			<div class="slide-desc"></div></li>
	</ul>
	<!-- //main-slider -->
	<!-- //top-header and slider -->
	<!-- top-brands -->
	<input type="hidden" name="categoryId" value="0">
	<div class="top-brands">
		<div class="container">
			<h2>
				<s:message code="global.title.product" />
			</h2>
			<div class="grid_3 grid_5">
				<div class="bs-example bs-example-tabs" role="tabpanel"
					data-example-id="togglable-tabs">
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active"
							id="expeditions" aria-labelledby="expeditions-tab">
							<div class="agile_top_brands_grids">
								<c:forEach var="pro" items="${products}">
									<div class="col-md-4 top_brand_left">
										<div class="hover14 column">
											<div class="agile_top_brand_left_grid">
												<div class="agile_top_brand_left_grid1">
													<figure>
														<div class="snipcart-item block">
															<div class="snipcart-thumb">
																<a href="products.html"><img width="150"
																	height="150"
																	src="<c:url value="/resources/"/>images/${pro.photo}"></a>
																<p>${pro.productName}</p>

																<h4>$ ${pro.price}</h4>
															</div>
															<div class="snipcart-details top_brand_home_details">
																<form action="#" method="post">
																	<fieldset>
																		<input type="hidden" name="cmd" value="_cart" /> <input
																			type="hidden" name="add" value="1" /> <input
																			type="hidden" name="business" value=" " /> <input
																			type="hidden" name="item_name"
																			value="${pro.productName}" /> <input type="hidden"
																			name="amount" value="${pro.price}" /> <input
																			type="hidden" name="discount_amount" value="1.00" />
																		<input type="hidden" name="currency_code" value="USD" />
																		<input type="hidden" name="return" value=" " /> <input
																			type="hidden" name="cancel_return" value=" " />
																		<button type="button" class="btn btn-primary"
																			onclick="window.location.href='single.poly?lnk&productId=${pro.productId}'"><s:message code="global.button1" /></button>
																		<hr>
																		<button type="submit" name="submit"
																			class="btn btn btn-block">
																			<s:message code="global.button2" /> <i class="fa fa-cart-arrow-down"
																				aria-hidden="true"></i>
																		</button>
																	</fieldset>
																</form>
															</div>
														</div>
													</figure>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="it" items="${listProduct}">
									<div class="col-md-4 top_brand_left">
										<div class="hover14 column">
											<div class="agile_top_brand_left_grid">
												<div class="agile_top_brand_left_grid_pos">
													<img src="resources/images/offer.png" alt=" "
														class="img-responsive" />
												</div>
												<div class="agile_top_brand_left_grid1">
													<figure>
														<div class="snipcart-item block">
															<div class="snipcart-thumb">
																<a href="products.html"><img width="150"
																	height="150"
																	src="<c:url value="/resources/"/>images/${it.photo}"></a>
																<p>${it.productName}</p>

																<h4>$ ${it.price}</h4>
															</div>
															<div class="snipcart-details top_brand_home_details">
																<form action="#" method="post">
																	<fieldset>
																		<input type="hidden" name="cmd" value="_cart" /> <input
																			type="hidden" name="add" value="1" /> <input
																			type="hidden" name="business" value=" " /> <input
																			type="hidden" name="item_name"
																			value="Fortune Sunflower Oil" /> <input
																			type="hidden" name="amount" value="20.99" /> <input
																			type="hidden" name="discount_amount" value="1.00" />
																		<input type="hidden" name="currency_code" value="USD" />
																		<input type="hidden" name="return" value=" " /> <input
																			type="hidden" name="cancel_return" value=" " /> <input
																			type="submit" name="submit" value="Add to cart"
																			class="button" />
																	</fieldset>
																</form>
															</div>
														</div>
													</figure>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--brands-->
	<div class="brands">
		<div class="container">
			<h3><s:message code="global.title.brand" /></h3>
			<div class="brands-agile">
				<div class="col-md-2 w3layouts-brand">
					<div class="brands-w3l">
						<p>
							<a href="#"><img class="img-responsive"
								src="<c:url value="/resources/"/>images/th1.jpg"></a>
						</p>
					</div>
				</div>
				<div class="col-md-2 w3layouts-brand">
					<div class="brands-w3l">
						<p>
							<a href="#"><img class="img-responsive"
								src="<c:url value="/resources/"/>images/th2.jpg"></a>
						</p>
					</div>
				</div>
				<div class="col-md-2 w3layouts-brand">
					<div class="brands-w3l">
						<p>
							<a href="#"><img class="img-responsive"
								src="<c:url value="/resources/"/>images/th3.jpg"></a>
						</p>
					</div>
				</div>
				<div class="col-md-2 w3layouts-brand">
					<div class="brands-w3l">
						<p>
							<a href="#"><img class="img-responsive"
								src="<c:url value="/resources/"/>images/th4.jpg"></a>
						</p>
					</div>
				</div>
				<div class="col-md-2 w3layouts-brand">
					<div class="brands-w3l">
						<p>
							<a href="#"><img class="img-responsive"
								src="<c:url value="/resources/"/>images/th5.jpg"></a>
						</p>
					</div>
				</div>
				<div class="col-md-2 w3layouts-brand">
					<div class="brands-w3l">
						<p>
							<a href="#"><img class="img-responsive"
								src="<c:url value="/resources/"/>images/th6.jpg"></a>
						</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//brands-->
	<!-- new -->
	<!-- //new -->
	<!-- //footer -->
	<div class="footer-botm">
		<div class="container">
			<br />
			<div class="text-center center-block">
				<div class="container">
					<p style="color: white;">
						© 2017. All rights reserved | Design by <a
							href="http://fb.com/vvay.7/">PingTeam</a>
					</p>
				</div>
				<br /> <a href="https://www.facebook.com"><i
					class="fa fa-facebook-square fa-3x social"></i></a> <a
					href="https://twitter.com"><i
					class="fa fa-twitter-square fa-3x social"></i></a> <a
					href="https://plus.google.com"><i
					class="fa fa-google-plus-square fa-3x social"></i></a> <a
					href="mailto:ping@gmail.com"><i
					class="fa fa-envelope-square fa-3x social"></i></a>
			</div>
			<br />
			<div class="payment-w3ls">
				<p style="color: #ff9b05;">
					<i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i><span><s:message code="global.contact.address" /></span>
				</p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //footer -->
	<!-- Bootstrap Core JavaScript -->
	<script src='<c:url value="/resources/"/>js/bootstrap.min.js'></script>
	<!-- top-header and slider -->
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<script src='<c:url value="/resources/"/>js/minicart.min.js'></script>
	<script>
		// Mini Cart
		paypal.minicart.render({
			action : '#'
		});

		if (~window.location.search.indexOf('reset=true')) {
			paypal.minicart.reset();
		}
	</script>
	<!-- main slider-banner -->
	<script src='<c:url value="/resources/"/>js/skdslider.min.js'></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			jQuery('#demo1').skdslider({
				'delay' : 5000,
				'animationSpeed' : 2000,
				'showNextPrev' : true,
				'showPlayButton' : true,
				'autoSlide' : true,
				'animationType' : 'fading'
			});

			jQuery('#responsive').change(function() {
				$('#responsive_wrapper').width(jQuery(this).val());
			});

		});
	</script>
	<!-- //main slider-banner -->
</body>
</html>
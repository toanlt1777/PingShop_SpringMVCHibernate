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
					SALE UP TO 70% OFF. USE CODE "SALE70%" . <a href="products.html">SHOP
						NOW</a>
				</p>
			</div>
			<div class="agile-login">
				<ul>
					<li><a href="registered.html"> Create Account </a></li>
					<li><a href="login.html">Login</a></li>
					<li><a href="contact.html">Help</a></li>

				</ul>
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
						placeholder="Search for a Product..." required="required">
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
						<li class="active"><a href="index.poly" class="act">Trang
								chủ</a></li>
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
						<li><a href="${pageContext.request.contextPath}/index.poly?listProduct&categoryId=${item.categoryId}">${item.categoryName}</a></li>
						</c:forEach>
						<li><a href="contact.html">Liên hệ</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</div>

	<!-- //navigation -->
	<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.poly"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Trang chủ</a></li>
				<li class="active">Trang chi tiết</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<c:forEach var="pro" items="${product}">
	<div class="products">
		<div class="container">
			<div class="agileinfo_single">
				
				<div class="col-md-4 agileinfo_single_left">
					<img id="example" src="resources/images/${pro.photo}" width="250px" height="250px" class="img-responsive">
				</div>
				<div class="col-md-8 agileinfo_single_right">
				<h2>${pro.productName}</h2>
					<div class="w3agile_description">
						<h4>Description :</h4>
						<p>${pro.decription}.</p>
					</div>
					<div class="snipcart-item block">
						<div class="snipcart-thumb agileinfo_single_right_snipcart">
							<h4 class="m-sing">Price: $ ${pro.price}</h4>
						</div>
						<div class="snipcart-thumb agileinfo_single_right_snipcart">
							<h4 class="m-sing">Manufacture: $ ${pro.manufacture}</h4>
						</div>
						<div class="snipcart-details agileinfo_single_right_details">
							<form action="#" method="post">
								<fieldset>
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1">
									<input type="hidden" name="business" value=" ">
									<input type="hidden" name="item_name" value="${pro.productName}">
									<input type="hidden" name="amount" value="${pro.price}">
									<input type="hidden" name="discount_amount" value="1.00">
									<input type="hidden" name="currency_code" value="USD">
									<input type="hidden" name="return" value=" ">
									<input type="hidden" name="cancel_return" value=" ">
									<input type="submit" name="submit" value="Add to cart" class="button">
								</fieldset>
							</form>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	</c:forEach>
	<!-- new -->
	<div class="newproducts-w3agile">
		<div class="container">
			<h3>Sản phẩm tương tự</h3>
			<div class="agile_top_brands_grids">
				<div class="col-md-3 top_brand_left-1">
					<div class="hover14 column">
						<div class="agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid_pos">
								<img src="images/offer.png" alt=" " class="img-responsive">
							</div>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block">
										<div class="snipcart-thumb">
											<a href="products.html"><img title=" " alt=" "
												src="images/bc1.jpg"></a>
											<p>Son môi siêu dưỡng ẩm và tạo màu tự nhiên CosRoyale</p>
											<div class="stars">
												<i class="fa fa-star blue-star" aria-hidden="true"></i> <i
													class="fa fa-star blue-star" aria-hidden="true"></i> <i
													class="fa fa-star blue-star" aria-hidden="true"></i> <i
													class="fa fa-star blue-star" aria-hidden="true"></i> <i
													class="fa fa-star gray-star" aria-hidden="true"></i>
											</div>
											<h4>
												$35.99 <span>$55.00</span>
											</h4>
										</div>
										<div class="snipcart-details top_brand_home_details">
											<form action="#" method="post">
												<fieldset>
													<input type="hidden" name="cmd" value="_cart"> <input
														type="hidden" name="add" value="1"> <input
														type="hidden" name="business" value=" "> <input
														type="hidden" name="item_name"
														value="Fortune Sunflower Oil"> <input
														type="hidden" name="amount" value="35.99"> <input
														type="hidden" name="discount_amount" value="1.00">
													<input type="hidden" name="currency_code" value="USD">
													<input type="hidden" name="return" value=" "> <input
														type="hidden" name="cancel_return" value=" "> <input
														type="submit" name="submit" value="Add to cart"
														class="button">
												</fieldset>
											</form>
										</div>
									</div>
								</figure>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 top_brand_left-1">
					<div class="hover14 column">
						<div class="agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid_pos">
								<img src="images/offer.png" alt=" " class="img-responsive">
							</div>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block">
										<div class="snipcart-thumb">
											<a href="products.html"><img title=" " alt=" "
												src="images/bc2.jpg"></a>
											<p>Son môi siêu dưỡng ẩm và lâu trôi MiraCulous</p>
											<div class="stars">
												<i class="fa fa-star blue-star" aria-hidden="true"></i> <i
													class="fa fa-star blue-star" aria-hidden="true"></i> <i
													class="fa fa-star blue-star" aria-hidden="true"></i> <i
													class="fa fa-star blue-star" aria-hidden="true"></i> <i
													class="fa fa-star gray-star" aria-hidden="true"></i>
											</div>
											<h4>
												$30.99 <span>$45.00</span>
											</h4>
										</div>
										<div class="snipcart-details top_brand_home_details">
											<form action="#" method="post">
												<fieldset>
													<input type="hidden" name="cmd" value="_cart"> <input
														type="hidden" name="add" value="1"> <input
														type="hidden" name="business" value=" "> <input
														type="hidden" name="item_name" value="basmati rise">
													<input type="hidden" name="amount" value="30.99"> <input
														type="hidden" name="discount_amount" value="1.00">
													<input type="hidden" name="currency_code" value="USD">
													<input type="hidden" name="return" value=" "> <input
														type="hidden" name="cancel_return" value=" "> <input
														type="submit" name="submit" value="Add to cart"
														class="button">
												</fieldset>
											</form>
										</div>
									</div>
								</figure>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 top_brand_left-1">
					<div class="hover14 column">
						<div class="agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid_pos">
								<img src="images/offer.png" alt=" " class="img-responsive">
							</div>
							<div class="agile_top_brand_left_grid_pos">
								<img src="images/offer.png" alt=" " class="img-responsive">
							</div>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block">
										<div class="snipcart-thumb">
											<a href="products.html"><img src="images/bc3.jpg" alt=" "
												class="img-responsive"></a>
											<p>Son lì lâu trôi SURI Pure Matte Lipstick Hàn Quốc</p>
											<div class="stars">
												<i class="fa fa-star blue-star" aria-hidden="true"></i> <i
													class="fa fa-star blue-star" aria-hidden="true"></i> <i
													class="fa fa-star blue-star" aria-hidden="true"></i> <i
													class="fa fa-star blue-star" aria-hidden="true"></i> <i
													class="fa fa-star gray-star" aria-hidden="true"></i>
											</div>
											<h4>
												$80.99 <span>$105.00</span>
											</h4>
										</div>
										<div class="snipcart-details top_brand_home_details">
											<form action="#" method="post">
												<fieldset>
													<input type="hidden" name="cmd" value="_cart"> <input
														type="hidden" name="add" value="1"> <input
														type="hidden" name="business" value=" "> <input
														type="hidden" name="item_name" value="Pepsi soft drink">
													<input type="hidden" name="amount" value="80.00"> <input
														type="hidden" name="discount_amount" value="1.00">
													<input type="hidden" name="currency_code" value="USD">
													<input type="hidden" name="return" value=" "> <input
														type="hidden" name="cancel_return" value=" "> <input
														type="submit" name="submit" value="Add to cart"
														class="button">
												</fieldset>
											</form>
										</div>
									</div>
								</figure>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 top_brand_left-1">
					<div class="hover14 column">
						<div class="agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid_pos">
								<img src="images/offer.png" alt=" " class="img-responsive">
							</div>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block">
										<div class="snipcart-thumb">
											<a href="products.html"><img title=" " alt=" "
												src="images/bc4.jpg"></a>
											<p>Son Mira AROMA Rouge shine lips</p>
											<div class="stars">
												<i class="fa fa-star blue-star" aria-hidden="true"></i> <i
													class="fa fa-star blue-star" aria-hidden="true"></i> <i
													class="fa fa-star blue-star" aria-hidden="true"></i> <i
													class="fa fa-star blue-star" aria-hidden="true"></i> <i
													class="fa fa-star gray-star" aria-hidden="true"></i>
											</div>
											<h4>
												$35.99 <span>$55.00</span>
											</h4>
										</div>
										<div class="snipcart-details top_brand_home_details">
											<form action="#" method="post">
												<fieldset>
													<input type="hidden" name="cmd" value="_cart"> <input
														type="hidden" name="add" value="1"> <input
														type="hidden" name="business" value=" "> <input
														type="hidden" name="item_name"
														value="Fortune Sunflower Oil"> <input
														type="hidden" name="amount" value="35.99"> <input
														type="hidden" name="discount_amount" value="1.00">
													<input type="hidden" name="currency_code" value="USD">
													<input type="hidden" name="return" value=" "> <input
														type="hidden" name="cancel_return" value=" "> <input
														type="submit" name="submit" value="Add to cart"
														class="button">
												</fieldset>
											</form>
										</div>
									</div>
								</figure>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //new -->
	<!-- //footer -->
	<div class="footer">
		<div class="container">
			<div class="w3_footer_grids">
				<div class="col-md-3 w3_footer_grid">
					<h3>Contact</h3>

					<ul class="address">
						<li><i class="glyphicon glyphicon-map-marker"
							aria-hidden="true"></i>137 Nguyễn Thị Thập <span>Đà Nẵng.</span></li>
						<li><i class="glyphicon glyphicon-envelope"
							aria-hidden="true"></i><a href="mailto:ping@gmail.com">ping@gmail.com</a></li>
						<li><i class="glyphicon glyphicon-earphone"
							aria-hidden="true"></i>+1234 567 567</li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Information</h3>
					<ul class="info">
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a
							href="about.html">About Us</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a
							href="contact.html">Contact Us</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a
							href="short-codes.html">Short Codes</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a
							href="faq.html">FAQ's</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a
							href="products.html">Special Products</a></li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Category</h3>
					<ul class="info">
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a
							href="groceries.html">Groceries</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a
							href="household.html">Household</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a
							href="personalcare.html">Personal Care</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a
							href="packagedfoods.html">Packaged Foods</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a
							href="beverages.html">Beverages</a></li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Profile</h3>
					<ul class="info">
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a
							href="products.html">Store</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a
							href="checkout.html">My Cart</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a
							href="login.html">Login</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a
							href="registered.html">Create Account</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

		<div class="footer-copy">

			<div class="container">
				<p>
					© 2017. All rights reserved | Design by <a
						href="http://fb.com/vvay.7/">PingTeam</a>
				</p>
			</div>
		</div>

	</div>
	<div class="footer-botm">
		<div class="container">
			<div class="w3layouts-foot">
				<ul>
					<li><a href="#" class="w3_agile_facebook"><i
							class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a href="#" class="agile_twitter"><i
							class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="#" class="w3_agile_dribble"><i
							class="fa fa-dribbble" aria-hidden="true"></i></a></li>
					<li><a href="#" class="w3_agile_vimeo"><i
							class="fa fa-vimeo" aria-hidden="true"></i></a></li>
				</ul>
			</div>
			<div class="payment-w3ls">
				<img src="images/card.png" alt=" " class="img-responsive">
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
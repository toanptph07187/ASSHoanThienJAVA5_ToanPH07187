<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!doctype html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Hải Đường</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="<c:url value='static/css/bootstrap.min.css'/>">
<!-- animate CSS -->
<link rel="stylesheet" href="<c:url value='static/css/animate.css'/>">
<!-- owl carousel CSS -->
<link rel="stylesheet"
	href="<c:url value='static/css/owl.carousel.min.css'/>">
<!-- font awesome CSS -->
<link rel="stylesheet" href="<c:url value='static/css/all.css'/>">
<link rel="stylesheet"
	href="<c:url value='static/css/nice-select.css'/>">
<!-- flaticon CSS -->
<link rel="stylesheet" href="<c:url value='static/css/flaticon.css'/>">
<link rel="stylesheet"
	href="<c:url value='static/css/themify-icons.css'/>">
<!-- font awesome CSS -->
<link rel="stylesheet"
	href="<c:url value='static/css/magnific-popup.css'/>">
<!-- swiper CSS -->
<link rel="stylesheet" href="<c:url value='static/css/slick.css'/>">
<!-- swiper CSS -->
<link rel="stylesheet"
	href="<c:url value='static/css/price_rangs.css'/>">
<!-- style CSS -->
<link rel="stylesheet" href="<c:url value='static/css/style.css'/>">
</head>

<body>

	<header class="main_menu home_menu">
		<div class="container-fluid">
			<div class="row align-items-center justify-content-center">
				<div class="col-lg-11">
					<nav class="navbar navbar-expand-lg navbar-light">







						<!-- logo//////////////// -->
						<a href=""
							style="font-family: Impact; font-size: 40px; color: burlywood; letter-spacing: 0.3px; padding-bottom: 0px;">
							Hai Duong </a>

						<!-- //////////// -->












						<div class="collapse navbar-collapse main-menu-item"
							id="navbarSupportedContent">
							<ul class="navbar-nav ">
								<li class="nav-item "><a class="nav-link button-header"
									href="/index "><span><s:message code="index.index"></s:message>
									</span></a></li>
									<c:if test="${not empty haiduong }">
									
								<li class="nav-item dropdown ">
									<p class="nav-link dropdown-toggle button-header "
										id="navbarDropdown_1 " role="button " data-toggle="dropdown "
										aria-haspopup="true " aria-expanded="false ">
										<span> <s:message code="index.staffs"></s:message>
										</span>
									</p>
									<div class="dropdown-menu " aria-labelledby="navbarDropdown_1 ">
										<a class=" dropdown-item " href="/stafflist "> <span>
												<s:message code="index.staffs"></s:message>
										</span></a> <a class="dropdown-item " href="/staffsthem "><span>
												<s:message code="staffs.add"></s:message>
										</span></a>

									</div>
								</li>
								<li class="nav-item dropdown ">
									<p class="nav-link dropdown-toggle button-header"
										id="navbarDropdown_3 " role="button " data-toggle="dropdown "
										aria-haspopup="true " aria-expanded="false ">
										<span> <s:message code="index.departs"></s:message>
										</span>
									</p>

									<div class="dropdown-menu " aria-labelledby="navbarDropdown_2 ">
										<a class="dropdown-item " href="/departlist "> <span>
												<s:message code="index.departs"></s:message>
										</span>
										</a> <a class="dropdown-item " href="/departadd "><span><s:message
													code="departs.add"></s:message> </span></a>


									</div>
								</li>

								<li class="nav-item dropdown "><a
									class="nav-link dropdown-toggle button-header"
									id="navbarDropdown_2 " role="button " data-toggle="dropdown "
									aria-haspopup="true " aria-expanded="false "> <span>
											<s:message code="index.records"></s:message>
									</span>
								</a>
									<div class="dropdown-menu " aria-labelledby="navbarDropdown_2 ">
										<a class="dropdown-item " href="/indexRecords "> <span>
												<s:message code="index.records"></s:message>
										</span></a> <a class="dropdown-item " href="/recordadd"><span><s:message
													code="records.addklnv"></s:message> </span></a> <a
											class="dropdown-item " href="/recordklnhanvien "><span><s:message
													code="records.klnv"></s:message> </span></a> <a class="dropdown-item "
											href="/recordklphongban "><span><s:message
													code="records.klpb"></s:message> </span></a>
									</div></li>

</c:if>


								<li class="nav-item "><a class="nav-link button-header"
									href="/login "><span><s:message code="index.logout"></s:message>
									</span></a></li>
							</ul>
						</div>

					</nav>
				</div>
			</div>
		</div>

	</header>
	<!-- Header part end-->

	<!-- banner part start-->
	<section class="banner_part ">
		<div class="container ">
			<div class="row align-items-center ">
				<div class="col-lg-7 ">
					<div class="banner_slider ">
						<div class="single_banner_slider ">
							<div class="banner_text ">
								<div class="banner_text_iner ">
									<h5>Winter Fasion</h5>
									<h1>Fashion Collection 2019</h1>
									<a href="# " class="btn_1 ">shop now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>




	<jsp:include page="${param.view}"></jsp:include>



	<section class="instagram_photo">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="instagram_photo_iner">
						<div class="single_instgram_photo">
							<img src="${anhimage.get(1)}" alt="">

						</div>
						<div class="single_instgram_photo">
							<img src="${anhimage.get(0)}" alt="">

						</div>
						<div class="single_instgram_photo">
							<img src="${anhimage.get(2)}" alt="">

						</div>
						<div class="single_instgram_photo">
							<img src="${anhimage.get(3)}" alt="">

						</div>
						<div class="single_instgram_photo">
							<img src="${anhimage.get(4)}" alt="">

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--::subscribe_area part end::-->

	<!--::footer_part start::-->
	<footer class="footer_part">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-sm-6 col-lg-2">
					<div class="single_footer_part">
						<h4>Category</h4>
						<ul class="list-unstyled">
							<li><a href="#">Male</a></li>
							<li><a href="#">Female</a></li>
							<li><a href="#">Shoes</a></li>
							<li><a href="#">Fashion</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-lg-2">
					<div class="single_footer_part">
						<h4>Company</h4>
						<ul class="list-unstyled">
							<li><a href="">About</a></li>
							<li><a href="">News</a></li>
							<li><a href="">FAQ</a></li>
							<li><a href="">Contact</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="single_footer_part">
						<h4>Address</h4>
						<ul class="list-unstyled">
							<li><a href="#">200, Green block, NewYork</a></li>
							<li><a href="#">+10 456 267 1678</a></li>
							<li><span>contact89@winter.com</span></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-lg-4">
					<div class="single_footer_part">
						<h4>Newsletter</h4>
						<div id="mc_embed_signup">
							<form target="_blank"
								action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
								method="get" class="subscribe_form relative mail_part">
								<input type="email" name="email" id="newsletter-form-email"
									placeholder="Email Address" class="placeholder hide-on-focus"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = ' Email Address '">
								<button type="submit" name="submit" id="newsletter-submit"
									class="email_icon newsletter-submit button-contactForm">subscribe</button>
								<div class="mt-10 info"></div>
							</form>
						</div>
						<div class="social_icon">
							<a href="#"><i class="ti-facebook"></i></a> <a href="#"><i
								class="ti-twitter-alt"></i></a> <a href="#"><i
								class="ti-instagram"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="copyright_text">
						<P>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="ti-heart" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</P>
					</div>
				</div>
			</div>
		</div>
	</footer>








	<!--::footer_part end::-->

	<!-- jquery plugins here-->
	<!-- jquery -->
	<script src="<c:url value='static/js/jquery-1.12.1.min.js'/>"></script>
	<!-- popper js -->
	<script src="<c:url value='static/js/popper.min.js'/>"></script>
	<!-- bootstrap js -->
	<script src="<c:url value='static/js/bootstrap.min.js'/>"></script>
	<!-- easing js -->
	<script src="<c:url value='static/js/jquery.magnific-popup.js'/>"></script>
	<!-- swiper js -->
	<script src="<c:url value='static/js/swiper.min.js'/>"></script>
	<!-- swiper js -->

	<!-- particles js -->
	<script src="<c:url value='static/js/owl.carousel.min.js'/>"></script>
	<script src="<c:url value='static/js/jquery.nice-select.min.js'/>"></script>
	<!-- slick js -->
	<script src="<c:url value='static/js/slick.min.js'/>"></script>
	<script src="<c:url value='static/js/jquery.counterup.min.js'/>"></script>
	<script src="<c:url value='static/js/waypoints.min.js'/>"></script>
	<script src="<c:url value='static/js/contact.js'/>"></script>
	<script src="<c:url value='static/js/jquery.ajaxchimp.min.js'/>"></script>
	<script src="<c:url value='static/js/jquery.form.js'/>"></script>
	<script src="<c:url value='static/js/jquery.validate.min.js'/>"></script>
	<script src="<c:url value='static/js/mail-script.js'/>"></script>
	<script src="<c:url value='static/js/stellar.js'/>"></script>
	<script src="<c:url value='static/js/price_rangs.js'/>"></script>
	<!-- custom js -->
	<script src="<c:url value='static/js/custom.js'/>"></script>
</body>

</html>
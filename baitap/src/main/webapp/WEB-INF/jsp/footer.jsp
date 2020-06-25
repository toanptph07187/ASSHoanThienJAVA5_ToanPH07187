<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="zxx">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>winter</title>
    <link rel="icon" href="<c:url value='static/img/favicon.png'/>">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<c:url value='static/css/bootstrap.min.css'/>">
    <!-- animate CSS -->
    <link rel="stylesheet" href="<c:url value='static/css/animate.css'/>">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="<c:url value='static/css/owl.carousel.min.css'/>">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="<c:url value='static/css/all.css'/>">
    <link rel="stylesheet" href="<c:url value='static/css/nice-select.css'/>">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="<c:url value='static/css/flaticon.css'/>">
    <link rel="stylesheet" href="<c:url value='static/css/themify-icons.css'/>">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="<c:url value='static/css/magnific-popup.css'/>">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="<c:url value='static/css/slick.css'/>">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="<c:url value='static/css/price_rangs.css'/>">
    <!-- style CSS -->
    <link rel="stylesheet" href="<c:url value='static/css/style.css'/>">
    
</head>

<body class="bg-white">
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
                            <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe_form relative mail_part">
                                <input type="email" name="email" id="newsletter-form-email" placeholder="Email Address" class="placeholder hide-on-focus" onfocus="this.placeholder = ''" onblur="this.placeholder = ' Email Address '">
                                <button type="submit" name="submit" id="newsletter-submit" class="email_icon newsletter-submit button-contactForm">subscribe</button>
                                <div class="mt-10 info"></div>
                            </form>
                        </div>
                        <div class="social_icon">
                            <a href="#"><i class="ti-facebook"></i></a>
                            <a href="#"><i class="ti-twitter-alt"></i></a>
                            <a href="#"><i class="ti-instagram"></i></a>
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
                            </script> All rights reserved | This template is made with
                            <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </P>
                    </div>
                </div>
            </div>
        </div>
    </footer>
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
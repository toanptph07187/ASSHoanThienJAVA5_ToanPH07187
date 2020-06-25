<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<section class="new_arrival section_padding">
		<div class="container">




			<div class="row align-items-center ">
				<div class="col-lg-4 ">
					<div class="arrival_tittle ">
						<h2>
							<span><s:message code="index.ds"></s:message> </span>
						</h2>
					</div>
				</div>

				<div class="col-lg-4"></div>
				<div class="col-lg-4 ">


					<a href="/index?lang=en">English</a> / <a href="/index?lang=vi">
						Vietnamese</a>

				</div>
			</div>
		</div>


		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="new_arrival_iner filter-container">
						<c:forEach var="c" items="${Staffs}">
							<div class="single_arrivel_item weidth_2 mix shoes">
								<img src="/imageNV/${c[2]}" alt="#">
								<div class="hover_text">
									<p>
										<span><s:message code="staffs.name"></s:message> </span>
									</p>
									<a href="single-product.html">
										<h3>${c[1]}</h3>
									</a>
									<div class="rate_icon">
										<a href="#"> <i class="fas fa-star"></i>
										</a> <a href="#"> <i class="fas fa-star"></i>
										</a> <a href="#"> <i class="fas fa-star"></i>
										</a> <a href="#"> <i class="fas fa-star"></i>
										</a> <a href="#"> <i class="fas fa-star"></i>
										</a>
									</div>
									<h5>
										<span><s:message code="departs.name"></s:message> </span> :
										${c[3]}
									</h5>

								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>
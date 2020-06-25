<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*[id$=errors] {
	color: red;
	font-style: italic;
}
</style>



</head>
<body>
	<section class="breadcrumb breadcrumb_bg">
		<div class="container">





			<div class="row align-items-center ">
				<div class="col-lg-4 ">
					<div class="arrival_tittle ">
						<h2>
							<s:message code="index.departs"></s:message>
						</h2>
					</div>
				</div>

				<div class="col-lg-4"></div>
				<div class="col-lg-4 ">

					<div class="hearer_icon d-flex ">
						<div class="dropdown cart ">
							<c:if test="${empty depart.id}">
								<a href="/departadd?lang=en"> English</a> / <a href="/departadd?lang=vi"> Tiếng việt</a>
							</c:if>


							<c:if test="${not empty depart.id}">
								<a href="/departsua${depart.id}?lang=en">English</a> / <a
									href="/departsua${depart.id}?lang=vi"> Vietnamese</a>
							</c:if>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- breadcrumb start-->

	<!--================Tracking Box Area =================-->
	<section class="tracking_box_area section_padding">
		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="col-lg-12">
					<div class="tracking_box_inner">
						<p>${mes}</p>



						<form:form action="/departaddoredit" modelAttribute="depart"
							method="post">
							<div class="col-md-12 form-group">
								<div>
									<span> <s:message code="departs.id"></s:message>
									</span>
								</div>
								<c:if test="${empty depart.id}">
									<form:input class="form-control" path="id" />
									<form:errors path="id" />
								</c:if>
								<c:if test="${not empty depart.id}">
									<form:hidden path="id" />
									<span class="form-control">${depart.id}</span>
								</c:if>
							</div>

							<div class="col-md-12 form-group">
								<div>
									<span> <s:message code="departs.name"></s:message>
									</span>
								</div>
								<form:input class="form-control" path="name" />
								<form:errors path="name" />
							</div>


							<div class="col-md-12 form-group">
								<c:if test="${ empty depart.id}">
									<form:button class="btn_3" name="btn_add">
										<span> <s:message code="departs.add"></s:message>
										</span>
									</form:button>
								</c:if>
								<c:if test="${not empty depart.id}">
									<form:button class="btn_3" name="btn_add">
										<span> <s:message code="staffs.update"></s:message>
										</span>
									</form:button>
								</c:if>
							</div>
						</form:form>

					</div>
				</div>

			</div>

		</div>
	</section>

</body>
</html>
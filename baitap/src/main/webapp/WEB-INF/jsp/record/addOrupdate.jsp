<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
							<s:message code="index.records"></s:message>
						</h2>
					</div>
				</div>

				<div class="col-lg-4"></div>
				<div class="col-lg-4 ">

					<div class="hearer_icon d-flex ">
						<div class="dropdown cart ">
							<c:if test="${empty record.id}">
								<a href="/recordadd?lang=en"> English</a> / <a
									href="/recordadd?lang=vi"> Vietnamese</a>
							</c:if>
							<c:if test="${not empty record.id}">

								<a href="/recordsua${record.id}?lang=en"> English</a> / <a
									href="/recordsua${record.id}?lang=vi"> Vietnamese</a>
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



						<form:form action="/recordaddorupdate" modelAttribute="record"
							method="post">
							<form:errors path="*" element="ul" />
							<c:if test="${record.id>0}">
								<div class="col-md-12 form-group">
									<span> <s:message code="records.id"></s:message>
									</span>  <span class="form-control"> ${record.id}</span>


								</div>


							</c:if>
							<form:hidden path="id" />
							<div class="col-md-12 form-group">
								<div class="">
									<span> <s:message code="records.type"></s:message>
									</span>
								</div>
							

									<form:select  style="width: 1112px;" path="type" items="${recordkiluat}"  />
								
							</div>
							<br>
							<br>
							<div class="col-md-12 form-group">
								<div >
									<span> <s:message code="staffs.id"></s:message>
									</span>
								</div>
								<c:if test="${record.id>0}">
									<span class="form-control">${record.staffs.id}</span>
									<form:hidden path="staffs.id" />

								</c:if>
								<c:if test="${empty record.id}">

									<form:input class="form-control" path="staffs.id" />

									<form:errors path="staffs.id"></form:errors>
								</c:if>
							</div>

							<div class="col-md-12 form-group">
								<div>
									<span> <s:message code="records.reason"></s:message>
									</span>
								</div>

								<form:textarea class="form-control" path="reason" cols="50"
									rows="6" />
								<form:errors path="Reason"></form:errors>
							</div>

							<div class="col-md-12 form-group">
								<div>
									<span> <s:message code="records.date"></s:message>
									</span>
								</div>
								<form:input class="form-control" path="date" />
								<form:errors path="Date"></form:errors>
							</div>

							<div class="col-md-12 form-group">
								<c:if test="${empty record.id}">
									<button name="add" class="btn_3">
										<span> <s:message code="records.add"></s:message>
										</span>
									</button>
								</c:if>
								<c:if test="${record.id>0}">
									<button name="add" class="btn_3">
										<span> <s:message code="staffs.update"></s:message>
										</span>
									</button>
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
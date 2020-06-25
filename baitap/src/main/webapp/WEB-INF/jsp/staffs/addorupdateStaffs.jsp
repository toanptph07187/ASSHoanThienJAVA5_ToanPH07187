<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
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
							<s:message code="index.staffs"></s:message>
						</h2>
					</div>
				</div>

				<div class="col-lg-4"></div>
				<div class="col-lg-4 ">

					<div class="hearer_icon d-flex ">
						<c:if test="${empty staff.id}">
							<a href="/staffsthem?lang=en">English</a>/

			 <a href="/staffsthem?lang=vi"> Vietnamese</a>
						</c:if>
						<c:if test="${not empty staff.id}">
							<a href="/staffssua${staff.id}?lang=en">English</a> 

			/ <a href="/staffssua${staff.id}?lang=vi"> Vietnamese</a>
						</c:if>
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
						<form:form action="/staffsaddorupdate" modelAttribute="staff"
							method="post" enctype="multipart/form-data"
							class="row tracking_form">
							<div class="col-md-12 form-group">
								<form:errors path="*" element="ul" />
								<div>
									<span><s:message code="staffs.id"></s:message> </span>
								</div>

								<c:if test="${empty staff.id}">
									<form:input path="id" class="form-control" />

								</c:if>
								<c:if test="${not empty staff.id}">
									<span class="form-control"> ${staff.id} </span>
									<form:hidden path="id" />
								</c:if>

								<form:errors path="Id" />
							</div>
							<div class="col-md-12 form-group">
								<div>
									<span><s:message code="staffs.name"></s:message> </span>
								</div>
								<form:input path="name" class="form-control" />
								<form:errors path="Name" />
							</div>

							<div class="col-md-12 form-group">
								<div>
									<span><s:message code="staffs.gender"></s:message> </span>
								</div>

								<form:radiobutton path="gender" value="true"
									checked="${staff.gender == 'true' ? 'checked' : '' }" />
								<span><s:message code="staffs.male"></s:message> </span>

								<form:radiobutton path="gender" value="false"
									checked="${staff.gender == 'false' ? 'checked' : '' }" />
								<span><s:message code="staffs.female"></s:message> </span>
								<form:errors path="Gender" />
							</div>

							<div class="col-md-12 form-group">
								<div>
									<span><s:message code="staffs.birthday"></s:message> </span>
								</div>
								<form:input class="form-control" path="birthday" />
								<form:errors path="Birthday" />
							</div>


							<div class="col-md-12 form-group">
								<div>
									<span><s:message code="staffs.photo"></s:message> </span>
								</div>
								<form:hidden path="photo" />
								<form:errors path="Photo" />
								<input type="file" name="photonv">
							</div>

							<div class="col-md-12 form-group">
								<div>Email</div>
								<form:input class="form-control" path="email" />
								<form:errors path="Email" />
							</div>

							<div class="col-md-12 form-group">
								<div>
									<span><s:message code="staffs.phone"></s:message> </span>
								</div>
								<form:input class="form-control" path="phone" />
								<form:errors path="Phone" />
							</div>
							<div class="col-md-12 form-group">
								<div>
									<span><s:message code="staffs.salary"></s:message> </span>
								</div>
								<form:input class="form-control" path="salary" type="number"
									max="10" min="1" />
								<form:errors path="Salary" />
							</div>
							<div class="col-md-12 form-group">
								<div>
									<span><s:message code="staffs.notes"></s:message> </span>
								</div>
								<form:textarea class="form-control" path="notes" row="6"
									cols="30" />
								<form:errors path="Notes" />
							</div>
							<div class="col-md-12 form-group">
								<div>
									<span><s:message code="staffs.departs"></s:message> </span>
								</div>

								<form:select path="departs.id" items="${listdepart}"
									itemLabel="name" itemValue="id" />
								<form:errors path="departs.id" />

							</div>
							<div class="col-md-12 form-group">
								<c:if test="${empty staff.id}">
									<form:button name="add" class="btn_3">
										<span><s:message code="staffs.add"></s:message> </span>
									</form:button>
								</c:if>
								<c:if test="${not empty staff.id}">
									<form:button name="add" class="btn_3">
										<span><s:message code="staffs.update"></s:message> </span>
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
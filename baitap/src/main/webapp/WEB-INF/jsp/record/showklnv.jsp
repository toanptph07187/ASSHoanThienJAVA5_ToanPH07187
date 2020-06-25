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
	<section class="cart_area section_padding">
		<div class="container">
			<div class="row align-items-center ">
				<div class="col-lg-4 ">
					<div class="arrival_tittle ">
						<h2>
							<s:message code="records.klnv"></s:message>
						</h2>
					</div>
				</div>
				<div class="col-lg-4"></div>
				<div class="col-lg-4 ">
					<div class="hearer_icon d-flex ">
						<a href="/recordklnhanvien?lang=en"> English</a> / <a
							href="/recordklnhanvien?lang=vi"> Vietnamese</a>
					</div>
				</div>
			</div>
		</div>
		<div class="">
			<div class="cart_inner">
				<div class="table-responsive">
					<table class="table" style="">
						<thead>
							<tr>
								<th><span> <s:message code="staffs.id"></s:message>
								</span></th>
								<th><span> <s:message code="staffs.name"></s:message>
								</span></th>
								<th><span> <s:message code="records.tongtt"></s:message>
								</span></th>
								<th><span> <s:message code="records.tongkl"></s:message>
								</span></th>
								<th><span> <s:message code="records.diemthuong"></s:message>
								</span></th>

							</tr>
						</thead>
						<tbody>
							<c:forEach var="c" items="${listklnv}">
								<tr>
									<td>${c[0]}</td>
									<td>${c[1]}</td>
									<td>${c[2]}</td>
									<td>${c[3]}</td>
									<td>${c[4]}</td>


								</tr>


							</c:forEach>
						</tbody>
					</table>

				</div>
			</div>
		</div>
	</section>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="cart_area section_padding">
	 <div class="row align-items-center ">
            <div class="col-lg-4 ">
                <div class="arrival_tittle ">
                    <h2><s:message code="index.staffs"></s:message> </h2>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="search_input " id="search_input_box ">
                    <div class="container ">
                        <form class="d-flex justify-content-between search-inner " action="/staffstimkiem" method="post">
                            <input type="text" class="form-control " id="search_input " name="timkiem" placeholder="Họ tên / Name">
                            <button class="btn " name="timkiema"></button>

                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 ">

            	<div class="hearer_icon d-flex ">
							<div class="dropdown cart ">
								<a href="/stafflist?lang=en"> English</a> / <a href="/stafflist?lang=vi">Tiếng việt</a>
							</div>
						</div>
            </div>
            
        </div>
	
	
		<div class="">
			<div class="cart_inner">
				<div class="table-responsive">
					<table class="table" style="font-size: 20px">
						<thead>
							<tr>
								<th><span> </span></th>
								<th><span><s:message code="staffs.id"></s:message> </span></th>
								<th><span><s:message code="staffs.name"></s:message>
								</span></th>
								<th><span><s:message code="staffs.gender"></s:message>
								</span></th>
								<th><span><s:message code="staffs.birthday"></s:message></span></th>

								<th><span><s:message code="staffs.email"></s:message>
								</span></th>
								<th><span><s:message code="staffs.phone"></s:message>
								</span></th>
								<th><span><s:message code="staffs.salary"></s:message>
								</span></th>
								<th><span><s:message code="staffs.notes"></s:message>
								</span></th>
								<th><span><s:message code="staffs.departs"></s:message>
								</span></th>
								<th><span><s:message code="staffs.update"></s:message>
								</span></th>
								<th><span><s:message code="staffs.delete"></s:message>
								</span></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="c" items="${listStaffs}">
								<tr class="bottom_button">



									<td><img alt="anh: ${c.photo}" src="/imageNV/${c.photo}"
										width="100%"></td>
									<td>${c.id}</td>
									<td>${c.name}</td>
									<td><c:if test="${c.gender ==true}">
											<span>Nam</span>
										</c:if> <c:if test="${c.gender !=true}">
											<span>Nữ</span>
										</c:if></td>
									<td>${c.birthday}</td>

									<td>${c.email}</td>
									<td>${c.phone}</td>
									<td>${c.salary}</td>
									<td>${c.notes}</td>
									<td>${c.departs.name}</td>

									<td><a href="/staffssua${c.id}"><span><s:message
													code="staffs.update"></s:message> </span></a></td>
									<td><a href="/staffsxoa/${c.id}"><span><s:message
													code="staffs.delete"></s:message> </span></a></td>
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
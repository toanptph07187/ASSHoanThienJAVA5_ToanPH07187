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
	
        
        <div class="row align-items-center ">
				<div class="col-lg-7 ">
					<div class="arrival_tittle ">
					
						 <h2><s:message code="index.records"></s:message></h2>
						
					</div>
				</div>

				<div class="col-lg-2"></div>
				<div class="col-lg-2 ">

					<div class="hearer_icon d-flex ">
						
					
							<a href="/indexRecords?lang=en">English</a> 

			/ <a href="/indexRecords?lang=vi"> Vietnamese</a>
					
					</div>
				</div>
			</div>
	
	
    <div class="">
      <div class="cart_inner">
        <div class="table-responsive" >
          <table class="table" style="">
            <thead>
             <tr>
			<th><span><s:message code="records.id"></s:message> </span></th>
			<th><span><s:message code="records.type"></s:message> </span></th>
			<th><span><s:message code="staffs.id"></s:message> </span></th>
			<th><span><s:message code="staffs.name"></s:message> </span></th>
			<th><span><s:message code="records.reason"></s:message> </span></th>
			<th><span><s:message code="records.date"></s:message> </span></th>

			<th><span><s:message code="staffs.update"></s:message> </span></th>
			<th><span><s:message code="staffs.delete"></s:message> </span></th>
		</tr>
	
            </thead>
            <tbody>
   	<c:forEach var="c" items="${recordsList}">
              <tr class="bottom_button">
             <td>${c.id}</td>
				<td><c:if test="${c.type==0}">
						<span><s:message code="records.kl"></s:message> </span>
					</c:if> <c:if test="${c.type ==1}">
						<span><s:message code="records.tt"></s:message> </span>
					</c:if></td>
				<td>${c.staffs.id}</td>
				<td>${c.staffs.name}</td>
				<td>${c.reason}</td>
				<td>${c.date}</td>

				<td><a href="/recordsua${c.id}"><span><s:message
								code="staffs.update"></s:message> </span></a></td>
				<td><a href="/recordxoa/${c.id}"><span><s:message
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
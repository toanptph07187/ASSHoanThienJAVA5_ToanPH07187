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
					
					
							<a href="/departlist?lang=en">English</a> 

			/ <a href="/departlist?lang=vi"> Vietnamese</a>
						
					</div>
				</div>
			</div>

  
  
    <div class="">
      <div class="cart_inner">
        <div class="table-responsive" >
          <table class="table" style="">
            <thead>
             <tr>
			<th><span><s:message code="departs.id"></s:message> </span></th>
			<th><span><s:message code="departs.name"></s:message> </span></th>
			<th><span><s:message code="staffs.update"></s:message> </span></th>
			<th><span><s:message code="staffs.delete"></s:message> </span></th>
		</tr>
            </thead>
            <tbody>
            <c:forEach var="c" items="${listdepart}">
              <tr class="bottom_button">
             <td>${c.id}</td>
				<td>${c.name}</td>
				<td><a href="/departsua${c.id}"><span><s:message code="staffs.update"></s:message> </span></a></td>
				<td><a href="/departxoa/${c.id}"><span><s:message code="staffs.delete"></s:message> </span></a></td>
             
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
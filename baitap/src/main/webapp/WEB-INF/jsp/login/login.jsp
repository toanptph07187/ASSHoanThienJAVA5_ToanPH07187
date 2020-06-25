<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

.loi {
	color: red;
	font-style: italic;
}
</style>
</head>
<body>	<section class="breadcrumb breadcrumb_bg">
		<div class="container">
			



			<div class="row align-items-center ">
			

				<div class="col-lg-11"></div>
				<div class="col-lg-1 ">

					<div class="hearer_icon d-flex ">
					
				
							<a href="/login?lang=en">English</a> 

			/ <a href="/login?lang=vi"> Vietnamese</a>
					
					</div>
				</div>
			</div>

		</div>







	</section>

 <section class="login_part section_padding">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_text text-center" style="background: none;">
                        <div class="login_part_text_iner">
                            <img src="${anhimage.get(5)}" width="500px" height="500px">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_form">
                        <div class="login_part_form_iner">


                            <h3 style="font-family:Impact;
                            font-size:40px;
                            color:black;
                            letter-spacing: 0.3px;
                       
                            padding-left:130px;
                          
                           ">Login Page</h3>








	<form:form action="/login" modelAttribute="user" method="post"
		class="row contact_form" novalidate="novalidate">
		<div class="col-md-12 form-group p_star">
			<span ><s:message code="login.username" /></span>
			<form:input path="username" class="form-control" />
			<form:errors path="Username" />
		</div>

		<div class="col-md-12 form-group p_star">
			<span > <s:message
					code="login.password" /></span>
			<form:input path="password" class="form-control" type="password" />
			<form:errors path="Password" />
		</div>

		<div class="flex-sb-m w-full p-b-30">

			<div class="contact100-form-checkbox">
				<input class="input-checkbox100" id="ckb1" type="hidden"
					name="remember-me"> <label for="ckb1"> </label>
			</div>

			<div class="loi">${mess}</div>
			
		</div>
		<div class="col-md-12 form-group">
			<s:message code="login.submit" var="abelSubmit" />
			<input type="submit" name="btn_login" value="${abelSubmit}"
				class="btn_3" />

		</div>


	</form:form>
	                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<%@include file="allcomponent/allcss.jsp"%>
</head>
<body style="background-color: #f0f1ff2;">
	<%@include file="allcomponent/navbar.jsp"%>

	<div class="continer-fluid">
		<div class="row p-4">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
							<h5>Registeration</h5>

						</div>
						<c:if test="${not empty succMsg}">
							<h4 class="text-center text-success">${succMsg}</h4>
							<c:remove var="succMsg" />
						</c:if>
						<from action="adduser" method="post">
						<div class="from-group">
							<label>Enter Full Name</label> <input type="text"
								required="required" class="from-control" id="exampleInputEmail1"
								aria-describedly="emailHelp" name="name">
						</div>

						<div class="from-group">
							<label>Enter Qualification</label> <input type="text"
								required="required" class="from-control" id="exampleInputEmail1"
								aria-describedly="emailHelp" name="qua">
						</div>

						<div class="from-group">
							<label>Enter Email</label> <input type="text" required="required"
								class="from-control" id="exampleInputEmail1"
								aria-describedly="emailHelp" name="email">
						</div>

						<div class="from-group">
							<label for="exampleInputPassword1">Enter Password</label> <input
								required="required" type="password" class="from-control"
								id="exampleInputPassword1" aria-describedly="emailHelp"
								name="ps">
						</div>

						<button type="submit" class="btn btn-primary badge-pill btn-block">Register</button>
						</from>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
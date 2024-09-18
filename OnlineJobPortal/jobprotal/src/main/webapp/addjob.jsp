<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allcomponent/allcss.jsp"%>
</head>
<body style="background-color: #f0f1ff2;">

<c:if test="${userobj.role not eq 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
	<%@include file="allcomponent/navbar.jsp"%>


	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>
						<c:if test="${not empty succMsg }">
							<div class="alert alert-success" role="alert">${succMsg }</div>
							<c:remove var="succMsg" />
						</c:if>
						<h5>Add Jobs</h5>
					</div>
					<from action="addjob" method="post">
					<div class="from-group">
						<label>Enter Title</label> <input type="text" name="title"
							required class="form-control">
					</div>
					<div class="from-group">
						<div class="from-group col-md-4">
							<label>Location</label> <select name="Location"
								class="custom-select" id="inlineFromCustomSelectpref">
								<option selected>Choose..</option>
								<option value="Pune">Pune</option>
								<option value="Mumbai">Mumbai</option>
								<option value="Odisha">Odisha</option>
								<option value="Jharkhand">Jharkhand</option>
								<option value="Gujurat">Gujurat</option>
								<option value="Bhubaneshwar">BHubaneshwar</option>
								<option value="Delhi">Delhi</option>
								<option value="Banglore">Banglore</option>
								<option value="Chennai">Chennai</option>

							</select>
						</div>
						<div class="from-group col-md-4">
							<label>Category </label> <select class="custom-select"
								id="inlineFromCustomSelectPref" name="category">
								<option selected>Choose...</option>
								<option value="IT">IT</option>
								<option value="Devloper">Devloper</option>
								<option value="Banking">Banking</option>
								<option value="Engineer">Engineer</option>
								<option value="Teacher">Teacher</option>
							</select>
						</div>

						<div class="form-group col-md-4">
							<label>Status</label> <select class="from-control" name="status">
								<option class="Active" value="Active">Active</option>
								<option class="Inactive" value="InActive">InActive</option>
							</select>
						</div>
					</div>
					<div class="from-group">
						<label>Enter Description</label>
						<textarea required rows="6" cols="" name="desc"
							class="form-control">
     </textarea>
					</div>
					<button class="btn btn-success">Publish Job</button>
					</from>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
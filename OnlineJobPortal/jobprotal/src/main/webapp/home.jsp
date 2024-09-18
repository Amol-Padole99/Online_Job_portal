<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.dataconnecting.DBConnect"%>
<%@page import="com.dao.JobDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User : view jobs</title>
<%@include file="allcomponent/allcss.jsp"%>
</head>
<body style="background-color: #f0f1ff2;">

	<%@include file="allcomponent/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">All Jobs</h5>
				<c:if test="${not empty succMsg }">
					<h4 class="text-center text-danger">${succMsg}</h4>
					<c:remove var="succMsg" />
				</c:if>
				<div class="card">
					<div class="card-body">
						<from class="form-inline" action="moreview.jsp" method="get">
						<div class="from-group col-md-4 mt-1">
							<h5>Location</h5>
						</div>
						<div class="form-group col-md-4 mt-1">
							<h5>Category</h5>
						</div>
						<div class="form-group col-md-5">
							<select name="loc" class="custom-select"
								id="inlineformCustomSelectPref">
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

						<div class="form-group col-md-5">
							<select class="custom-select" id="inlineFormCustomSelectPref"
								name="cat">
								<option value="ca" Selected>Choose...</option>
								<option value="IT">IT</option>
								<option value="Devloper">Devloper</option>
								<option value="Banking">Banking</option>
								<option value="Engineer">Engineer</option>
								<option value="Teacher">Teacher</option>
							</select>
						</div>
						<button class="btn btn-success">Submit</button>
						</from>
					</div>
				</div>
				<%
				JobDao dao = new JobDao(DBConnect.getConn());
				List<Jobs> list = dao.getAllJobForUser();
				for (Jobs j : list) {
				%>
				<div class="card mt-12">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="far fa-clipboard fa-2x"></i>
						</div>
						<h6>
							<%=j.getTitle()%></h6>
						<%
						if (j.getDescription().length() > 0 && j.getDescription().length() < 120) {
						%>
						<p><%=j.getDescription()%>.
						</p>
						<%
						} else {
						%>
						<p>
							<%=j.getDescription().substring(0, 120)%>...
						</p>
						<%
						}
						%>
						<br>
						<div class="form-row">
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Location: <%=j.getLocation()%> " readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="from-control from-control-sm"
									value="Category: <%=j.getCategory()%>" readonly>
							</div>
						</div>
						<h6>
							Publish Date:
							<%=j.getPdate().toString()%>
						</h6>
						<div class="text-center">
							<a href="oneview.jsp?id=<%=j.getId()%>"
								class="btn btn-sm bg-sucess text-white">View More</a>
						</div>

					</div>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</div>

</body>
</html>
<%@page import="com.entity.Jobs"%>
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
<title>User :Single Jobs</title>
<%@include file="allcomponent/allcss.jsp"%>
</head>
<body style="background-color: #f0f1ff2;">
	<c:if test="${empty userobj }">
		<:redirect url="login.jsp" />
	</c:if>

	<%@include file="allcomponent/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<%
				int id = Integer.parseInt(request.getParameter("id"));
				JobDao dao = new JobDao(DBConnect.getConn());
				Jobs j = dao.getJobById(id);
				%>
				<div class="card mt-5">
					<div class="text-center text-primary">
						<i class="far fa-clipboard fa-2x"></i>
					</div>
					<h6><%=j.getTitle()%></h6>
					<p><%=j.getDescription()%>.
					</p>
					<br>
					<div class="form-row">
						<div class="form-group col-md-3">
							<input type="text" class="form-control form-control-sm"
								value="location: <%=j.getLocation()%>" readonly>
						</div>
						<div class="form-group col-md-3">
							<input type="text" class="form-control form-control-sm"
								value="category: <%=j.getCategory()%>" readonly>
						</div>
					</div>
					<h6>
						publish Date :
						<%
					j.getPdate();
					%>
					</h6>
				</div>

			</div>
		</div>
	</div>

</body>
</html>
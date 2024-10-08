<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"> Job Protal</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#"> <i class="fa-solid fa-house"></i>Home
						<span class="sr-only">(current)</span></a></li>

				<c:if test="${userobj.role eq 'admin'}">
					<li class="nav-item"><a class="nav-link" href="addjob.jsp">
							<i class="fa-solid fa-plus"></i>post Job
					</a></li>

					<li class="nav-item"><a class="nav-link" href="viewjob.jsp">
							<i class="fa-regular fa-eye"></i>View Job
					</a></li>

				</c:if>


			</ul>
			<form class="from-inline my-2 my-lg-0">
				<c:if test="${userobj.role eq 'admin' }">
					<a href="#" class="btn btn-light mr-1"> <i
						class="fa-regular fa-user"></i>Admin
					</a>
					<a href="logout" class="btn btn-light"> <i
						class="fa-solid fa-arrow-right-to-bracket"></i>Logout
					</a>
				
					</c:if>
					
					<c:if test="${userobj.role eq 'user' }">
					<a href="#" class="btn btn-light mr-1" data-bs-toggle="modal" data-bs-target="#exampleModal"> <i
						class="fa-regular fa-user"></i>${userobj.name}
				 	</a>
					
					<a href="logout" class="btn btn-light"> <i
						class="fa-solid fa-arrow-right-to-bracket"></i>Logout
					</a>
				
					</c:if>
					
					
				

				<c:if test="${ empty userobj }">
					<a href="login.jsp" class="btn btn-light mr-1"> <i
						class="fa-solid fa-arrow-right-to-bracket"></i>login
					</a>
					<a href="signup.jsp" class="btn btn-light"> <i
						class="fa-regular fa-user"></i>signup
					</a>
				</c:if>



			</form>
		</div>
	</div>
</nav>



<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="card">
        <div class="card-body">
        <div class="text-center text-primary">
        <i class="fas fa-user-cricle fa-3x"></i>
        </div>
        <table class="table">
        <tbody>
        <tr>
        <th scope="row">Name</th>
        <th>${userobj.name }</th>
        </tr>
        <tr >
        <th scope ="row"> Qualification</th>
        <th>${userobj.qualification }</th>
        </tr>
        <tr>
        <th scope="row">Email</th>
        <th>${userobj.email}</th>
        </tr>
        </tbody>
        </table>
        </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>










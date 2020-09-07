<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
<title>Welcome Home</title>
<sec:authentication var="user" property="principal.username" />
  <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	
	
</head>

<body>
	<sec:authorize access="hasRole('CUSTOMER')">
<!--Navbar-->
<nav class="navbar navbar-3 navbar-dark bg-dark sticky-top">

  <!-- Navbar brand -->
  <a class="navbar-brand">FitDOCK</a>

  <!-- Collapse button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent15"
    aria-controls="navbarSupportedContent15" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

  <!-- Collapsible content -->
  <div class="collapse navbar-collapse" id="navbarSupportedContent15">

    <!-- Links -->
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
      <a class="nav-link">
		<form:form
			action="${pageContext.request.contextPath}/customer/details"
			method="GET">

			<%--    <button name="userName" value="${user}">Your Details</button> --%>

			<input type=hidden value=${user} name="userName" />
			<input  class="btn btn-dark " type="submit" value="Edit Profile" />

		</form:form><span class="sr-only">(current)</span></a>
       <!-- <a class="nav-link" href="">Edit Profile<span class="sr-only">(current)</span></a>  --> 
      </li>
      <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/customer/feedback">Class Feedback</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/customer/trainerfeedback">Trainer Feedback</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Additional Information</a>
      </li>
       <li class="nav-item">
      <a class="nav-link">
			<form:form method="POST"
		action="${pageContext.request.contextPath}/logout">

		<input class="btn btn-dark " type="submit" value="Logout">


	</form:form><span class="sr-only">(current)</span></a>
       <!-- <a class="nav-link" href="">Edit Profile<span class="sr-only">(current)</span></a>  --> 
      </li>
    </ul>
    <!-- Links -->

  </div>
  <!-- Collapsible content -->

</nav>
<!--/.Navbar-->
	<div class="jumbotron jumbotron-fluid pb-2 ">
		<div class="container pl-0">
			<h1 class="display-4">Hi! <sec:authentication property="principal.username"/></h1>
			<p class="lead">Welcome to your Dashboard</p>
		</div>
	</div>


    <div class="container ml-0 mb-2">
        <div class="row">
            <div class="col-6">
                <img class="d-block w-100" src="https://images.unsplash.com/photo-1588286840104-8957b019727f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80">
            </div>
            <div class="col-6">
                <p class="lead font-weight-bold display-4 mb-0">Weight-Lifting.
                </p>
                <p class="lead font-weight-bold text-info display-4 mb-0">Cross-Fit.
                </p>
                <p class="lead font-weight-bold display-4 mb-0 mr-6" >Strength. <a class="ml-6 justify-content-end" href="${pageContext.request.contextPath}/customer/enrollgymlist"><button type="button" class="btn btn-success">Classes</button>
				</a>
                </p>	
                <p class="lead font-weight-bold display-4 mb-0">Cardio.
                </p>
                <span class="lead font-weight-bold display-4 text-success">Yoga.</span>
              	
         </div>
        </div>
        
    </div>
 
    <div class="container mt-1">
        <div class="row">
                    <div class="col-6">
                <p class="lead font-weight-bold display-3 mb-0">Show
                </p>
                <p class="lead font-weight-bold text-danger display-3 mb-0">Unenrolled 
                </p>
                <p class="lead font-weight-bold display-3  text-info mb-0 mr-6" >Classes.
                </p>	
                <a class="ml-6 justify-content-front" href="${pageContext.request.contextPath}/customer/gymlist"><button type="button" class="btn btn-success">Enroll</button>
				</a>
            </div>
            <div class="col-12 col-md-6 mb-4 ml-0">
                <img class="d-block w-100" src="https://images.unsplash.com/photo-1484480974693-6ca0a78fb36b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1652&q=80" alt="Third slide">
            </div>

        </div>
    </div>

	</sec:authorize>

	<sec:authorize access="hasRole('ADMIN')">
	<nav class="navbar navbar-3 navbar-dark bg-dark sticky-top">

  <!-- Navbar brand -->
  <a class="navbar-brand">FitDOCK</a>

  <!-- Collapse button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent15"
    aria-controls="navbarSupportedContent15" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

  <!-- Collapsible content -->
  <div class="collapse navbar-collapse" id="navbarSupportedContent15">

    <!-- Links -->
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
      <a href="${pageContext.request.contextPath}/admin/list"><span class="text-white">Manage
			Customers</span></a>
       <!-- <a class="nav-link" href="">Edit Profile<span class="sr-only">(current)</span></a>  --> 
      </li>
      <li class="nav-item">
		<a href="${pageContext.request.contextPath}/GymClass/list"><span class="text-white">Manage
			Classes</span></a>
      </li>
      <li class="nav-item">
<a href="${pageContext.request.contextPath}/employee/list"><span class="text-white">Manage
			Employees</span></a>
      </li>
      <li class="nav-item">
		<a href="${pageContext.request.contextPath}/admin/finance"><span class="text-white">View
			Finances</span></a>
      </li>
      <li class="nav-item">
      <a class="nav-link">
			<form:form method="POST"
		action="${pageContext.request.contextPath}/logout">

		<input class="btn btn-dark" type="submit" value="Logout">


	</form:form><span class="sr-only">(current)</span></a>
       <!-- <a class="nav-link" href="">Edit Profile<span class="sr-only">(current)</span></a>  --> 
      </li>
    </ul>
    
  </div>
 
</nav>
	<div class="jumbotron jumbotron-fluid pb-2 ">
		<div class="container pl-0">
			<h1 class="display-4">Hi! <sec:authentication property="principal.username"/></h1>
			<p class="lead">Welcome to your Dashboard</p>
		</div>
	</div>
	

	</sec:authorize>


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>

	<footer class="bg-dark mt-5" style="height: 50px;">
		<div
			class="text-white d-flex align-items-center justify-content-center"
			style="height: 50px;">&copy 2020. All rights reserved.</div>
	</footer>
</body>

</html>
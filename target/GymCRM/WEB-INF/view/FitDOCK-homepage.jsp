<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<head>

<title>Register New User Form</title>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Reference Bootstrap files -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
<!-- Image and text -->
<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand">
    <img src="/resources/images/Logo.png"  />
    <small>Fitness Management Tool</small>
  </a>
  <ul class="navbar-nav mr-auto">
  <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/login">Login</a>
      </li>
      <li><a class="nav-link" href="${pageContext.request.contextPath}/signup/showRegistrationForm">Sign up</a></li>
      </ul>
</nav>


		<c:forEach var="tempfeedback" items="${feedback}">


			<tr>

				<td>${tempfeedback.username}</td>
				<td>${tempfeedback.class_nm}</td>
				<td>${tempfeedback.class_typ}</td>
				<td>${tempfeedback.rating}</td>
				<td>${tempfeedback.feedback}</td>

			</tr>


		</c:forEach>


</body>
</html>
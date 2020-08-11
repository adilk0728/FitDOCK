<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>

<html>

<head>


<title>Gym Classes</title>

</head>

<body>
<sec:authentication var="user" property="principal.username" />
	<div id="wrapper">
		<div id="header">

			<h2>
				<b>Gym Management System</b>
			</h2>
		</div>
	</div>

Payment Confirmed!

<br>
 Insert Payment API!
	
	
	<br>
	
	<a href="${pageContext.request.contextPath}/home">Back to Home</a>
	<br>

	<form:form method="POST"
		action="${pageContext.request.contextPath}/logout">

		<input type="submit" value="Logout">


	</form:form>
	


</body>



</html>
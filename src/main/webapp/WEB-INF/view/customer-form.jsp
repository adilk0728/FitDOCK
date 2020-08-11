<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>

<head>

<title>FitDOCK</title>

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Customer Management System</h2>
		</div>
	</div>

	<div id="container">
		<h3>Enter your Details</h3>

		<sec:authentication var="user" property="principal.username" />
		
		<form:form method="POST" action="saveCustomer" modelAttribute="customer">

			<form:hidden path="id" />


			<table>
				<tbody>
					<!-- <tr><td><label> Username</label></td></tr> -->
					<tr><td><form:input path="user.userName" value="${user}" type="hidden"/></td></tr>
					<tr><td><label> First Name</label></td></tr>
					<tr><td><form:input path="firstnm" /></td></tr>
					<tr><td><label> Last Name</label></td></tr>
					<tr><td><form:input path="lastnm" /></td></tr>
					<tr><td><label> Address</label></td></tr>
					<tr><td><form:input path="address" /></td></tr>
					<tr><td><label> Email</label></td></tr>
					<tr><td><form:input path="email" /></td></tr>
					<tr><td><label> Phone Number</label></td></tr>
					<tr><td><form:input path="phoneNum" /></td></tr>
					<tr><td><label> Age</label></td></tr>
					<tr><td><form:input path="age" /></td></tr>
					<tr><td><label> Weight</label></td></tr>
					<tr><td><form:input path="weight" /></td></tr>
					<tr><td><label> Height</label></td></tr>
					<tr><td><form:input path="height" /></td></tr>
					 <!-- <tr><td><label> Blood Group</label></td></tr> -->
					<tr><td><form:input path="bloodGrp" type="hidden"/></td></tr>
					 <!-- <tr><td><label> Gender</label></td></tr> -->
					<tr><td><form:input path="gender" type="hidden"/></td></tr>
					<tr><td><label> Medical History</label></td></tr>
					<tr><td><form:input path="medicalHist" /></td></tr>
				
				
					<tr>
						<td><label></label></td>

						<td><input type="submit" value="Save" /></td>
				</tbody>

			</table>
		</form:form>

	</div>
	<br>
		<form:form method="POST"
		action="${pageContext.request.contextPath}/logout">

		<input type="submit" value="Logout">


	</form:form>

</body>

</html>
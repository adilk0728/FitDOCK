
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>

<title>FitDOCK - Employee</title>

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Customer Management System</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Employee Details</h3>


		<form:form method="POST" action="saveEmployee"
			modelAttribute="employee">

			<form:hidden path="em_id" />


			<table>
				<tbody>

					<tr>
						<td><label> First Name</label> <br>
						<form:errors path="em_firstname"/></td>
					</tr>
					<tr>
						<td><form:input path="em_firstname" /></td>
					</tr>
					<tr>
						<td><label> Last Name</label> <br>
						<form:errors path="em_lastname"/></td>
					</tr>
					<tr>
						<td><form:input path="em_lastname" /></td>
					</tr>
					<tr>
						<td><label> Mobile Number</label> <br>
						<form:errors path="em_mobile"/></td>
					</tr>
					<tr>
						<td><form:input path="em_mobile" /></td>
					</tr>
					<tr>
						<td><label> Address</label> <br>
						<form:errors path="em_add"/></td>
					</tr>
					<tr>
						<td><form:input path="em_add" /></td>
					</tr>
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
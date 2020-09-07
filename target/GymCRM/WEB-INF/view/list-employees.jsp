<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>


<title>Employees</title>

</head>

<body>

	<div id="wrapper">
		<div id="header">

			<h2>
				<b>Gym Management System </b>
			</h2>
		</div>
	</div>

	<div id="container">
		<div id="content">

			<input type="button" value="Add Employee"
				onclick="window.location.href='showFormForEmployee';return false;"
				class="add-button" />


			<table>
				<tr />
				<tr>
					<th>Employee ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Mobile Number</th>
					<th>Address</th>
				</tr>

				<c:forEach var="tempEmployee" items="${employees}">

					<c:url var="updateLink" value="/employee/showFormForUpdate">
						<c:param name="em_id" value="${tempEmployee.em_id}" />
					</c:url>


					<c:url var="deleteLink" value="/employee/delete">
						<c:param name="em_id" value="${tempEmployee.em_id}" />
					</c:url>


					<tr>
						<td>${tempEmployee.em_id}</td>
						<td>${tempEmployee.em_firstname}</td>
						<td>${tempEmployee.em_lastname}</td>
						<td>${tempEmployee.em_mobile}</td>
						<td>${tempEmployee.em_add}</td>

						<td />
						<td><a href="${updateLink}">Update</a> | <a
							href="${deleteLink}">Delete</a></td>



					</tr>


				</c:forEach>

			</table>

		</div>

	</div>


	<br>

	<form:form method="POST"
		action="${pageContext.request.contextPath}/logout">

		<input type="submit" value="Logout">


	</form:form>



</body>



</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>


<title>Customer</title>

</head>

<body>

	<div id="wrapper">
		<div id="header">

			<h2>
				<b>Customer Management System </b>
			</h2>
		</div>
	</div>

	<div id="container">
		<div id="content">


			<table>
				<tr />
				<tr>
					<th>Customer Username</th>
					<th>Customer ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Gender</th>
					<th>Address</th>
					<th>Email</th>
					<th>Phone Number</th>
					<th>Age</th>
					<th>Weight</th>
					<th>Height</th>
					<th>Blood Group</th>
					<th>Medical History</th>
					<th>Action</th>

				</tr>

				<c:forEach var="tempCustomer" items="${customers}">



					<c:url var="deleteLink" value="/admin/delete">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>


					<tr>

						<td>${tempCustomer.id}</td>
						<td>${tempCustomer.user.userName}</td>
						<td>${tempCustomer.firstnm}</td>
						<td>${tempCustomer.lastnm}</td>
						<td>${tempCustomer.gender}</td>
						<td>${tempCustomer.address}</td>
						<td>${tempCustomer.email}</td>
						<td>${tempCustomer.phoneNum}</td>
						<td>${tempCustomer.age}</td>
						<td>${tempCustomer.weight}</td>
						<td>${tempCustomer.height}</td>
						<td>${tempCustomer.bloodGrp}</td>
						<td>${tempCustomer.medicalHist}</td>


						<td />
						<td><a href="${deleteLink}">Delete</a></td>



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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>


<title>FitDOCK - Customer Details</title>

<!-- <style>
.hide{
display:none;
}
</style> -->
</head>

<body>

	<div id="wrapper">
		<div id="header">

			<h2>
				<b>Edit your Details</b>
			</h2>
		</div>
	</div>

	<div id="container">
		<div id="content">






			<c:url var="updateLink" value="/customer/showFormForUpdate">
				<c:param name="id" value="${customer.id}" />
			</c:url>

			<table>
				<tr />
				<tr>
					<th>Customer Username</th>
					<th>Customer ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Address</th>
					<th>Email</th>
					<th>Phone Number</th>
					<th>Age</th>
					<th>Weight</th>
					<th>Height</th>
				    <th class="hide">Blood Group</th> 
					<th>Medical History</th>
					<th>Action</th>

				</tr>






				<tr>
					<td>${customer.user.userName}</td>
					<td>${customer.id}</td>
					<td>${customer.firstnm}</td>
					<td>${customer.lastnm}</td>
					<td>${customer.address}</td>
					<td>${customer.email}</td>
					<td>${customer.phoneNum}</td>
					<td>${customer.age}</td>
					<td>${customer.weight}</td>
					<td>${customer.height}</td>
					<td class="hide" >${customer.bloodGrp}</td>
					<td>${customer.medicalHist}</td>
					<td><a href="${updateLink}">Update</a>
					<td>
				</tr>



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
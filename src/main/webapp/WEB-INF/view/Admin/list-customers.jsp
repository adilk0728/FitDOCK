<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>


<title>FitDOCK - Customers</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	
	
</head>

<body>
<div class="container-fluid ml-0 mr-0">
<table class="table table-striped table-bordered">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Customer ID</th>
      <th scope="col">Username</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Gender</th>
      <th scope="col">Address</th>
      <th scope="col">Email</th>
      <th scope="col">Phone Number</th>
      <th scope="col">Age</th>
      <th scope="col">Weight</th>
      <th scope="col">Height</th>
      <th scope="col">Blood Group</th>
      <th scope="col">Medical History</th>
      <th scope="col">Action</th>
    </tr>
    
    
    <c:forEach var="tempCustomer" items="${customers}">
				
					
					<c:url var="deleteLink" value="/admin/delete">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>
					<tr>
					<th scope="row">${tempCustomer.id}</th>
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
						<td><a href="${deleteLink}"><button class="btn btn-dark">Delete</button></a></td>
					</tr>
					</c:forEach>
  </thead>
</tbody>
</table>
</div>

<div class="container-fluid">
<a href="${pageContext.request.contextPath}/home" class="btn btn-success" role="button">Back Home</a>
</div>
	<form:form method="POST"
		action="${pageContext.request.contextPath}/logout">

		<input type="submit" value="Logout" class="btn btn-dark btn-lg">


	</form:form>
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>



</html>
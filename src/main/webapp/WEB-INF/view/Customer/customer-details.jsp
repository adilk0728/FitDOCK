<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>


<title>FitDOCK - Customer Details</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	
	
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

<div class="container-fluid ml-0 mr-0">
<table class="table table-striped table-bordered">
  <thead class="thead-dark">
    <tr>
      				<th scope="col">Username</th>
					<th scope="col">Customer ID</th>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Address</th>
					<th scope="col">Email</th>
					<th scope="col">Phone Number</th>
					<th scope="col">Age</th>
					<th scope="col">Weight</th>
					<th scope="col">Height</th>
				    <th class="hide">Blood Group</th> 
					<th scope="col">Medical History</th>
					<th scope="col">Action</th>
    </tr>

				
				<c:url var="updateLink" value="/customer/showFormForUpdate">
				<c:param name="id" value="${customer.id}" />
			</c:url>
					<tr>
					<th scope="row">${customer.user.userName}</th>
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
					</tr>
					
  </thead>
</tbody>
</table>


</div>
	<br>
	<div class="container-fluid">
		<form:form method="POST"
		action="${pageContext.request.contextPath}/logout">

		<input type="submit" value="Logout" class="btn btn-dark btn-lg">


	</form:form>
	</div>

 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>



</body>



</html>
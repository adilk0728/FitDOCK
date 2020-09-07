<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>


<title>FitDOCK - Employees</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	
	
</head>

<body>
<div class="container-fluid justify-content-center mb-3">
<input  class="btn btn-large btn-dark" type="button" value="Add Employee"
				onclick="window.location.href='showFormForEmployee';return false;"
				class="add-button" /> 
</div>

<div class="container-fluid ml-0 mr-0">
<table class="table table-striped table-bordered">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Employee ID</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Mobile No</th>
      <th scope="col">Address</th>
	  <th scope="col">Action</th>
    </tr>
<c:forEach var="tempEmployee" items="${employees}">
				
				<c:url var="updateLink" value="/employee/showFormForUpdate">
						<c:param name="em_id" value="${tempEmployee.em_id}" />
					</c:url>


					<c:url var="deleteLink" value="/employee/delete">
						<c:param name="em_id" value="${tempEmployee.em_id}" />
					</c:url>


					<tr>
					<th scope="row">${tempEmployee.em_id}</th>
						<td>${tempEmployee.em_firstname}</td>
						<td>${tempEmployee.em_lastname}</td>
						<td>${tempEmployee.em_mobile}</td>
						<td>${tempEmployee.em_add}</td>
						<td><a href="${updateLink}"><button class="btn btn-dark">Update</button></a>| <a href="${deleteLink}"><button class="btn btn-dark">Delete</button></a></td>
					</tr>
					</c:forEach>
  </thead>
</tbody>
</table>


</div>

<div class="container-fluid">
<a href="${pageContext.request.contextPath}/home" class="btn btn-success" role="button">Back Home</a>
</div>

	<br>
	<div class="container-fluid">
		<form:form method="POST"
		action="${pageContext.request.contextPath}/logout">

		<input type="submit" value="Logout" class="btn btn-dark btn-lg">


	</form:form>
	</div>

 
<%-- 	<div id="container">
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


	</form:form> --%>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>



</body>



</html>
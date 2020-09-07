<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>


<title>Gym Classes</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	
	
</head>

<body>

<div class="container-fluid justify-content-center mb-3">
<input  class="btn btn-large btn-dark" type="button" value="Add Class"
				onclick="window.location.href='showFormForAdd';return false;"
				class="add-button" /> 
</div>

<div class="container-fluid ml-0 mr-0">
<table class="table table-striped table-bordered">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Class ID</th>
      <th scope="col">Class Name</th>
      <th scope="col">Class Type</th>
      <th scope="col">Cost(In INR)</th>
      <th scope="col">Description</th>
      <th scope="col">Data and Time</th>
      <th scope="col">Duration</th>
      <th scope="col">Action</th>
    </tr>
<c:forEach var="tempGymClass" items="${GymClass}">
				
				<c:url var="updateLink" value="/GymClass/showFormForUpdate">
						<c:param name="class_id" value="${tempGymClass.class_id}" />
					</c:url>


					<c:url var="deleteLink" value="/GymClass/delete">
						<c:param name="class_id" value="${tempGymClass.class_id}" />
					</c:url> 

					<tr>
					<th scope="row">${tempGymClass.class_id}</th>
						<td>${tempGymClass.class_nm}</td>
						<td>${tempGymClass.class_typ}</td>
						<td>${tempGymClass.class_cost}</td>
						<td>${tempGymClass.class_desp}</td>
						<td>${tempGymClass.class_date_time}</td>
						<td>${tempGymClass.class_duration}</td>
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

 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>



</html>
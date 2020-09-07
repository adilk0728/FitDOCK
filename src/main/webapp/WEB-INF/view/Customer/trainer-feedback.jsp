<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<title>FitDOCK</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	
	
</head>

<body>
		<sec:authentication var="user" property="principal.username" />

<div class="container-fluid ml-0 mr-0">
<table class="table table-striped table-bordered">
  <thead class="thead-dark">
    <tr>
     			<th scope="col">Trainer Name</th>
				<th scope="col">Trainer Class</th>
				<th scope="col">Class Type</th>
				<th scope="col">Action</th>

    </tr>
<c:forEach var="trainerFeedback" items="${trainerFeedback}">
				

					<tr>
					<td scope="row">${trainerFeedback.em_firstname}</td>
					<td>${trainerFeedback.class_nm}</td>
					<td>${trainerFeedback.class_typ}</td>

					<td><form:form method="GET" action="trainerfeedbackshow">
							<input type="hidden" value=${user} name="userName">
							<input type="hidden" value="${trainerFeedback.class_id}" name="class_id">
							<input type="submit" value="Give Feedback" name="submit" class="btn btn-dark">
						</form:form>
					</c:forEach>
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
<%-- 	</div>
		
		<table>
			<tr />
			<tr>
				<th>Trainer Name</th>
				<th>Trainer Class</th>
				<th>Class Type</th>

			</tr>

			<c:forEach var="trainerFeedback" items="${trainerFeedback}">


				<tr>

					<td>${trainerFeedback.em_firstname}</td>
					<td>${trainerFeedback.class_nm}</td>
					<td>${trainerFeedback.class_typ}</td>

					<td><form:form method="GET" action="trainerfeedbackshow">
							<input type="hidden" value=${user} name="userName">
							<input type="hidden" value="${trainerFeedback.class_id}" name="class_id">
							<input type="submit" value="Give Feedback" name="submit">
						</form:form>
				</tr>


			</c:forEach>

		</table>

	</div>
	<br>
	<form:form method="POST"
		action="${pageContext.request.contextPath}/logout">

		<input type="submit" value="Logout">


	</form:form>

 --%>
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>

</html>
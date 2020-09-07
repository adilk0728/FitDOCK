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

	<div id="wrapper">
		<div id="header">
			<h2>Customer Management System</h2>
		</div>
	</div>

	<div id="container">
		<h3>Give Feedback</h3>

		<sec:authentication var="user" property="principal.username" />
		
		<div>
			${noResults}
			<br>
					<c:if test="${not empty state}">
					Enroll to classes here: <a href="${pageContext.request.contextPath}/customer/enrollgymlist">Enroll to Classes</a>
				</c:if>
		</div>
		</div>
		
		
<div class="container-fluid ml-0 mr-0">
<table class="table table-striped table-bordered">
  <thead class="thead-dark">
    <tr>
     			<th scope="col">Class ID</th>
				<th scope="col">Class Name</th>
				<th scope="col">Class Type</th>
				<th scope="col">Class Cost(In INR)</th>
				<th scope="col">Class Description</th>
				<th scope="col">Class Date and Time</th>
				<th scope="col">Class Duration</th>
				<th scope="col">Action</th>
    </tr>
<c:forEach var="Feedback" items="${Feedback}">
				

					<tr>
					<td scope="row">${Feedback.class_id}</td>
					<td>${Feedback.class_nm}</td>
					<td>${Feedback.class_typ}</td>
					<td>${Feedback.class_cost}</td>
					<td>${Feedback.class_desp}</td>
					<td>${Feedback.class_date_time}</td>
					<td>${Feedback.class_duration}</td>
					<td><form:form method="GET" action="feedbackshow">
							<input type="hidden" value=${user } name="userName">
							<input type="hidden" value="${Feedback.class_id}" name="class_id">
							<input type="submit" value="Feedback" name="submit">
						</form:form>
					</tr>
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
	</div>
	
<%-- 		<table>
			<tr />
			<tr>
				<th>Class ID</th>
				<th>Class Name</th>
				<th>Class Type</th>
				<th>Class Cost(In INR)</th>
				<th>Class Description</th>
				<th>Class Date and Time</th>
				<th>Class Duration</th>

			</tr>

			<c:forEach var="Feedback" items="${Feedback}">

				
				<tr>
				
					<td>${Feedback.class_id}</td>
					<td>${Feedback.class_nm}</td>
					<td>${Feedback.class_typ}</td>
					<td>${Feedback.class_cost}</td>
					<td>${Feedback.class_desp}</td>
					<td>${Feedback.class_date_time}</td>
					<td>${Feedback.class_duration}</td>
					<td><form:form method="GET" action="feedbackshow">
							<input type="hidden" value=${user } name="userName">
							<input type="hidden" value="${Feedback.class_id}" name="class_id">
							<input type="submit" value="Feedback" name="submit">
						</form:form>
				</tr>


			</c:forEach>

		</table>
		
		<br>
		
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
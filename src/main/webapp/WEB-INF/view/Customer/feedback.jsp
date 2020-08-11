<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<title>FitDOCK</title>

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
		<table>
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

	</div>
	<br>
	<form:form method="POST"
		action="${pageContext.request.contextPath}/logout">

		<input type="submit" value="Logout">


	</form:form>

</body>

</html>
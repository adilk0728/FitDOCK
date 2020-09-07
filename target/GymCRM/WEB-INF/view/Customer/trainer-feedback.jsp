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
		<h3>Give trainerFeedback</h3>

		<sec:authentication var="user" property="principal.username" />
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
							<input type="submit" value="trainerFeedback" name="submit">
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>

<html>

<head>


<title>FitDOCK - Gym Classes</title>

</head>

<body>
<sec:authentication var="user" property="principal.username" />
	<div id="wrapper">
		<div id="header">

			<h2>
				<b>List of Available Classes</b>
			</h2>
		</div>
	</div>

	<div id="container">
		<div id="content">

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
					<th>Action</th>
				</tr>

				<c:forEach var="tempGymClass" items="${GymClass}">
				
<%-- 						<c:url var="enrollLink" value="/customer/enroll">
						<c:param name="class_id" value="${tempGymClass.class_id}" />
					</c:url>

 --%>
					<tr>
						<td>${tempGymClass.class_id}</td>
						<td>${tempGymClass.class_nm}</td>
						<td>${tempGymClass.class_typ}</td>
						<td>${tempGymClass.class_cost}</td>
						<td>${tempGymClass.class_desp}</td>
						<td>${tempGymClass.class_date_time}</td>
						<td>${tempGymClass.class_duration}</td>
						<td><form:form method="GET" action="enroll">
						<input type="hidden" value=${user} name="userName">
						<input type="hidden" value="${tempGymClass.class_id}" name="class_id">
						<input type="submit" value="Enroll" name="submit" class="btn">
						</form:form>
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
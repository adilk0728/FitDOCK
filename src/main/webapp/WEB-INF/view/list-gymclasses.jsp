<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>


<title>Gym Classes</title>

</head>

<body>

	<div id="wrapper">
		<div id="header">

			<h2>
				<b>Gym Management System</b>
			</h2>
		</div>
	</div>

	<div id="container">
		<div id="content">

		<input type="button" value="Add Class"
				onclick="window.location.href='showFormForAdd';return false;"
				class="add-button" /> 


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

				<c:forEach var="tempGymClass" items="${GymClass}">

				<c:url var="updateLink" value="/GymClass/showFormForUpdate">
						<c:param name="class_id" value="${tempGymClass.class_id}" />
					</c:url>


					<c:url var="deleteLink" value="/GymClass/delete">
						<c:param name="class_id" value="${tempGymClass.class_id}" />
					</c:url> 

			
					<tr>
						<td>${tempGymClass.class_id}</td>
						<td>${tempGymClass.class_nm}</td>
						<td>${tempGymClass.class_typ}</td>
						<td>${tempGymClass.class_cost}</td>
						<td>${tempGymClass.class_desp}</td>
						<td>${tempGymClass.class_date_time}</td>
						<td>${tempGymClass.class_duration}</td>
						 <td />
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


	</form:form>


</body>



</html>
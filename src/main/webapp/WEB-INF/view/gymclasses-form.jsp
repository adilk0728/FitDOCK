
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>

<title>Save Class Details</title>

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Gym Management System</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Class Details</h3>


		<form:form method="POST" action="saveGymClass"
			modelAttribute="GymClass">

			<form:hidden path="class_id" />


			<table>
				<tbody>

					<tr>
						<td><label> Class Name</label><br>
						<form:errors path="class_nm"/></td>
					</tr>
					<tr>
						<td><form:input path="class_nm" /></td>
					</tr>
					<tr>
						<td><label> Class Type</label><br>
						<form:errors path="class_typ"/></td>
					</tr>
					<tr>
						<td>
						<form:select path="class_typ" >
						<form:option value="Cardio" label="Cardio" />
						<form:option value="Weight Lifting" label="Weight Lifting" />
						<form:option value="Strength" label="Strength" />
						<form:option value="Flex" label="Flex" />
						<form:option value="Yoga" label="Yoga" />
						<form:option value="Pilates" label="Pilates" />
						<form:option value="Spinning" label="Spinning" />
						<form:option value="Cross Fit" label="Cross Fit" />
						<form:option value="Boxing" label="Boxing" />
						</form:select>
						
						
						</td>
					</tr>
					<tr>
						<td><label> Cost of the Class(INR)</label><br>
						<form:errors path="class_cost"/></td>
					</tr>
					<tr>
						<td><form:input path="class_cost" /></td>
					</tr>
					<tr>
						<td><label> Class Description</label><br>
						<form:errors path="class_desp"/></td>
					</tr>
					<tr>
						<td><form:input path="class_desp" /></td>
					</tr>
					<tr>
						<td><label> Class Date and time (YYYY-MM-DD HH:MM:SS)</label><br>
						<form:errors path="class_date_time"/></td>
					</tr>
					<tr>
						<td><form:input path="class_date_time" /></td>
					</tr>
					<tr>
						<td><label> Class Duration(Hrs)</label><br>
						<form:errors path="class_duration"/></td>
					</tr>
					<tr>
						<td><form:input path="class_duration" /></td>
					</tr>
					<tr>
						<td><label> Employee ID</label></td>
					</tr>
					<tr>
						<td><form:input path="employee.em_id" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="Save" /></td>
					</tr>
				</tbody>

			</table>
		</form:form>
	

	</div>

	<br>

	<form:form method="POST"
		action="${pageContext.request.contextPath}/logout">

		<input type="submit" value="Logout">


	</form:form>

</body>

</html>
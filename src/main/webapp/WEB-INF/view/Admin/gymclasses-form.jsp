<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<head>

<title>FitDOCK - Class Form</title>

   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">



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

 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

</body>

</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>

<head>

<title>FitDOCK - Customer Details</title>

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Your Details</h2>
		</div>
	</div>

	<div id="container">
		<h3>Fill your details</h3>
		<sec:authentication var="user" property="principal.username" />

		<form:form method="POST" action="saveCustomer"
			modelAttribute="customer">

			<form:hidden path="id" />



			<table>
				<tbody>

					<!-- <tr><td><label> Username</label></td></tr> -->
					<tr>
						<td><form:input path="user.userName" value="${user}"
								type="hidden" /></td>
					</tr>
					<tr>
						<td><label> First Name</label> <br>
						<form:errors path="firstnm"/></td>
					</tr>
					<tr>
						<td><form:input path="firstnm" /></td> 
					</tr>
					<tr>
						<td><label> Last Name</label><br>
						<form:errors path="lastnm"/></td> 
					</tr>
					<tr>
						<td><form:input path="lastnm" /></td> 
					</tr>
					<tr>
						<td><label> Gender</label><br>
						<form:errors path="gender"/></td>
					</tr>
					<tr>
						<td>
					<label>Male</label><form:radiobutton path="gender" value="Male" /> 
					<label>Female</label><form:radiobutton path="gender" value="Female" /> 
					<label>Other</label><form:radiobutton path="gender" value="Other" />
						</td>
					
					</tr>
					<tr>
						<td><label> Address</label><br>
						<form:errors path="address"/></td>
					</tr>
					<tr>
						<td><form:input path="address" /></td> 
					</tr>
					<tr>
						<td><label> Email</label><br>
						<form:errors path="email"/></td>
					</tr>
					<tr>
						<td><form:input path="email" /></td>
					</tr>
					<tr>
						<td><label> Phone Number</label></td>
					</tr>
					<tr>
						<td><form:input path="phoneNum" /></td>
					</tr>
					<tr>
						<td><label> Age</label><br>
						<form:errors path="age"/></td>
					</tr>
					<tr>
						<td><form:input path="age" /></td>
					</tr>
					<tr>
						<td><label> Weight(Kgs)</label><br>
						<form:errors path="weight"/></td>
					</tr>
					<tr>
						<td><form:input path="weight" /></td>
					</tr>
					<tr>
						<td><label> Height(Cms)</label><br>
						<form:errors path="height"/></td>
					</tr>
					<tr>
						<td><form:input path="height" /></td> 
					</tr>
					<tr>
						<td><label> Blood Group</label><br>
						<form:errors path="bloodGrp"/></td>
					</tr>
					<tr>
						<td><form:input path="bloodGrp" />
					</tr>
					<tr>
						<td><label> Medical History</label></td>
					</tr>
					<tr>
						<td><form:input path="medicalHist" /></td>
					</tr>



					<tr>
						<td><label></label></td>

						<td><input type="submit" value="Save" /></td>
				</tbody>

			</table>
		</form:form>


	</div>

</body>

</html>
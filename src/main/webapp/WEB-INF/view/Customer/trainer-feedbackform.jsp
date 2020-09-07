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
		<form:form method="GET" action="trainerfeedbackDone" modelAttribute="trainerfb">
			<label>Knowledge of trainer</label>
			<div>
				<label>1</label>
				<form:radiobutton name ="var1" path="var1" value="1" />
				<label>2</label>
				<form:radiobutton name ="var1" path="var1" value="2" />
				<label>3</label>
				<form:radiobutton name ="var1" path="var1" value="3" />
				<label>4</label>
				<form:radiobutton name ="var1" path="var1" value="4" />
				<label>5</label>
				<form:radiobutton name ="var1" path="var1" value="5" />
			</div>
			<br>
			<label>Behaviour</label>
				<div>
				<label>1</label>
				<form:radiobutton name ="var2" path="var2" value="1" />
				<label>2</label>
				<form:radiobutton name ="var2" path="var2" value="2" />
				<label>3</label>
				<form:radiobutton name ="var2" path="var2" value="3" />
				<label>4</label>
				<form:radiobutton name ="var2" path="var2" value="4" />
				<label>5</label>
				<form:radiobutton name ="var2" path="var2" value="5" />
			</div>
			<br>
			<label>Friendliness</label>
				<div>
				<label>1</label>
				<form:radiobutton name ="var3" path="var3" value="1" />
				<label>2</label>
				<form:radiobutton name ="var3" path="var3" value="2" />
				<label>3</label>
				<form:radiobutton name ="var3" path="var3" value="3" />
				<label>4</label>
				<form:radiobutton name ="var3" path="var3" value="4" />
				<label>5</label>
				<form:radiobutton name ="var3" path="var3" value="5" />
			</div>
			<br>
			<label>Experience</label>
				<div>
				<label>1</label>
				<form:radiobutton name ="var4" path="var4" value="1" />
				<label>2</label>
				<form:radiobutton name ="var4" path="var4" value="2" />
				<label>3</label>
				<form:radiobutton name ="var4" path="var4" value="3" />
				<label>4</label>
				<form:radiobutton name ="var4" path="var4" value="4" />
				<label>5</label>
				<form:radiobutton name ="var4" path="var4" value="5" />
			</div>
			<br>
			<label>Satisfaction</label>
				<div>
				<label>1</label>
				<form:radiobutton name ="var5" path="var5" value="1" />
				<label>2</label>
				<form:radiobutton name ="var5" path="var5" value="2" />
				<label>3</label>
				<form:radiobutton name ="var5" path="var5" value="3" />
				<label>4</label>
				<form:radiobutton name ="var5" path="var5" value="4" />
				<label>5</label>
				<form:radiobutton name ="var5" path="var5" value="5" />
			</div>
			
			<br>
			
			<input type="hidden" value=${user} name="userName">	
			<input type="hidden" value=${class_id} name="class_id">
			<input type="submit" value="Submit" name="submit">

		</form:form>

	</div>
	<br>
	<form:form method="POST"
		action="${pageContext.request.contextPath}/logout">

		<input type="submit" value="Logout">


	</form:form>

</body>

</html>
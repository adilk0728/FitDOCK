<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
<title>Welcome Home</title>
</head>

<body>
	<h2>Gym CRM Index page</h2>
	<hr>

	Welcome to the HOME

	<br>

	<br>
<sec:authentication var="user" property="principal.username" />


<sec:authorize access="hasRole('CUSTOMER')">
<form:form action="${pageContext.request.contextPath}/customer/details"  method="GET">

 <%--    <button name="userName" value="${user}">Your Details</button> --%>
    
    <input type=hidden value=${user} name="userName"/>
    <input type="submit" value="Edit Profile"/>
    
</form:form>


<a href="${pageContext.request.contextPath}/customer/gymlist">Enroll to Classes</a>
<a href="${pageContext.request.contextPath}/customer/enrollgymlist">All Classes</a>
<a href="${pageContext.request.contextPath}/customer/feedback">Give Feedback</a>
<a href="${pageContext.request.contextPath}/customer/trainerfeedback">Give Trainer Feedback</a>
</sec:authorize>

<sec:authorize access="hasRole('ADMIN')">
<a href="${pageContext.request.contextPath}/admin/list">Manage Customers</a>

<br>

<a href="${pageContext.request.contextPath}/GymClass/list">Manage Classes</a>

<br>

<a href="${pageContext.request.contextPath}/employee/list">Manage Employees</a>

<br>

<a href="${pageContext.request.contextPath}/admin/finance">View Finances</a>
</sec:authorize>


<form:form  method="POST"  action="${pageContext.request.contextPath}/logout">

<input type="submit" value="Logout">


</form:form>
<%-- <c:url var="details" value="/customer/details">
						<c:param name="userName" value="${user}" />
					</c:url>
					
					
					<a href="${details}">Update</a>  --%>
</body>

</html>
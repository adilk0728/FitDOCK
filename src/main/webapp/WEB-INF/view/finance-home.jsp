<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="json" uri="http://www.atg.com/taglibs/json"%>

<!DOCTYPE HTML>
<html>

<head>
<title>Welcome Home</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


</head>

<body>
	<h2>Gym CRM Index page</h2>
	<hr>

	Welcome to the finance Page

	<br>
	<div class="container">
		<canvas id="myChart"></canvas>
	</div>


	<br> Total Earning = ${total}

	<br> Total Enrolled Customers = ${totalCust}

	<br>
	<br>
	<br>
	<json:object>
		<json:property name="males" value=" ${totalMale}" />
	</json:object>
	<json:object>
		<json:property name="females" value=" ${totalFemale}" />
	</json:object>
	<json:object>
		<json:property name="others" value=" ${totalOther}" />
	</json:object>

	<table>
		<tr />
		<tr>
			<th>Customer ID</th>
			<th>Customer First Name</th>
			<th>Total Cost</th>

		</tr>

		<c:forEach var="tempFin" items="${fin}">


			<tr>

				<td>${tempFin.id}</td>
				<td>${tempFin.firstnm}</td>
				<td>${tempFin.payment}</td>

			</tr>


		</c:forEach>

	</table>


	<br>

	<table>
		<tr />
		<tr>
			<th>GymClass ID</th>
			<th>Class Name</th>
			<th>Total Cost</th>

		</tr>

		<c:forEach var="tempgymFin" items="${gymFin}">


			<tr>

				<td>${tempgymFin.class_id}</td>
				<td>${tempgymFin.class_nm}</td>
				<td>${tempgymFin.cost}</td>

			</tr>


		</c:forEach>

	</table>

	<br>


	<table>
		<tr />
		<tr>
			<th>GymClass ID</th>
			<th>Class Name</th>
			<th>Customers Enrolled per class</th>

		</tr>

		<c:forEach var="tempgymClassEnrolled" items="${gymClassEnrolled}">


			<tr>

				<td>${tempgymClassEnrolled.class_id}</td>
				<td>${tempgymClassEnrolled.class_nm}</td>
				<td>${tempgymClassEnrolled.count}</td>

			</tr>


		</c:forEach>

	</table>

	<br> Total Male Customers = ${totalMale}
	<br> Total Female Customers = ${totalFemale}
	<br> Total Other Customers = ${totalOther}


	<script>
		let myChart = document.getElementById('myChart').getContext('2d');

		// Global Options
		Chart.defaults.global.defaultFontFamily = 'Lato';
		Chart.defaults.global.defaultFontSize = 18;
		Chart.defaults.global.defaultFontColor = '#777';

		let massPopChart = new Chart(myChart, {
			type : 'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
			data : {
				labels : [ 'Males', 'Females', 'Others' ],
				datasets : [ {
					label : 'Population',
					data : [
						${totalMale},
						${totalFemale},
						${totalOther}
					],
					//backgroundColor:'green',
					backgroundColor : [ 'rgba(255, 99, 132, 0.6)',
							'rgba(54, 162, 235, 0.6)',	
							'rgba(255, 159, 64, 0.6)',
							'rgba(255, 99, 132, 0.6)' ],
					borderWidth : 1,
					borderColor : '#777',
					hoverBorderWidth : 3,
					hoverBorderColor : '#000'
				} ]
			},
			options : {
				title : {
					display : true,
					text : 'Largest Cities In Massachusetts',
					fontSize : 25
				},
				legend : {
					display : true,
					position : 'right',
					labels : {
						fontColor : '#000'
					}
				},
				layout : {
					padding : {
						left : 50,
						right : 0,
						bottom : 0,
						top : 0
					}
				},
				tooltips : {
					enabled : true
				}
			}
		});
	</script>

</body>

</html>
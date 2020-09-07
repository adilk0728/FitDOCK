<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="json" uri="http://www.atg.com/taglibs/json"%>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>



<!DOCTYPE HTML>
<html>

<head>
<title>Gym Finances</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


</head>

<body>
	<!-- Image and text -->
	<div class="p-1 bg-warning sticky-top">
<nav class="navbar navbar-dark bg-primary sticky-top">
   <h1><span class="display-4 text-warning">FitDOCK</span><span class="ml-2"><small class="text-warning text-lowercase">Finances</small></span></h1>
</nav>
</div>
<%-- 	<json:object>
		<json:property name="males" value=" ${totalMale}" />
	</json:object>
	<json:object>
		<json:property name="females" value=" ${totalFemale}" />
	</json:object>
	<json:object>
		<json:property name="others" value=" ${totalOther}" />
	</json:object> --%>
	<div class="container pb-4 bg-secondary">
	</div>
	<div class="container-fluid mb-1" style="border: 10px solid brown">
	<div class="row">
	<div class="col-8 pt-4 ">
	<h2 class="display-4 "> Total Enrolled Customers:</h2>
	</div>
	<div class="col-4 display-1 ml-0">
	${totalCust}
	</div>
	</div>
	</div>
	<div class="container pb-4 bg-secondary">
	</div>
	<div class="container-fluid mb-1" style="border: 10px solid brown"">
	<div class="row">
	<div class="col-8 pt-4 ">
	<h2 class="display-4 "> Total Earning:</h2>
	</div>
	<div class="col-4 display-1 ml-0">
	${total} <span"><h6>INR</h6></span>
	</div>
	</div>
	</div>
		
<div class="container-fluid">
	<div class="row">
	<div class="col-6">
	<div class="chart-container" style="position: relative; height:30vh; width:40vw">
		<canvas id="myChart"></canvas>
	</div>
	
	</div>
	<div class="col-6">
	<div class="chart-container" style="position: relative; height:38vh; width:48vw">
		<canvas id="myChart3"></canvas>
	</div>
	</div>
	</div>
	
	</div>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<hr class="mt-3 mb-3 pb-2 bg-secondary"/>
	<br>
	<div class="container">
		<canvas id="myChart4"></canvas>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
		<hr class="mt-3 mb-3 pb-2 bg-secondary"/>
	<br>
	<br>
	<br>
	<br>
	
		<div class="container">
		<canvas id="myChart2"></canvas>
	</div>

<%-- 	<json:object>
		<json:property name="males" value=" ${totalMale}" />
	</json:object>
	<json:object>
		<json:property name="females" value=" ${totalFemale}" />
	</json:object>
	<json:object>
		<json:property name="others" value=" ${totalOther}" />
	</json:object> --%>


	<script>
		let myChart = document.getElementById('myChart').getContext('2d');

		// Global Options
		Chart.defaults.global.defaultFontFamily = 'Lato';
		Chart.defaults.global.defaultFontSize = 18;
		Chart.defaults.global.defaultFontColor = '#777';

		let massPopChart = new Chart(myChart, {
			type : 'doughnut', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
			data : {
				labels : [ 'Males', 'Females', 'Others' ],
				datasets : [ {
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
				responsive : true,
				title : {
					display : true,
					text : 'Customers by gender',
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

	<script>
		let myChart3 = document.getElementById('myChart3').getContext('2d');

		// Global Options
		Chart.defaults.global.defaultFontFamily = 'Lato';
		Chart.defaults.global.defaultFontSize = 18;
		Chart.defaults.global.defaultFontColor = '#777';

		let massPopChart3 = new Chart(myChart3, {
			type : 'pie', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
			data : {
				labels : [ <c:forEach var="tempgymFin" items="${gymFin}" varStatus="loop">
				'${tempgymFin.class_nm}'
				<c:if test="${!loop.last}">,</c:if>
				
		</c:forEach> ],
				datasets : [ {
					data : [
						<c:forEach var="tempgymFin" items="${gymFin}" varStatus="loop">
						${tempgymFin.cost}
						<c:if test="${!loop.last}">,</c:if>
						</c:forEach>
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
				responsive : true,
				title : {
					display : true,
					text : 'Total Income per class',
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




	<script>
		let myChart2 = document.getElementById('myChart2').getContext('2d');

		// Global Options
		Chart.defaults.global.defaultFontFamily = 'Lato';
		Chart.defaults.global.defaultFontSize = 18;
		Chart.defaults.global.defaultFontColor = '#777';

		let massPopChart2 = new Chart(myChart2, {
			type : 'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
			data : {
				labels : [ <c:forEach var="tempFin" items="${fin}" varStatus="loop">
				'${tempFin.firstnm}'
				<c:if test="${!loop.last}">,</c:if>
				
		</c:forEach> ],
				datasets : [ {
					label : 'INR',
					data : [
						<c:forEach var="tempFin" items="${fin}" varStatus="loop">
					${tempFin.payment}
					<c:if test="${!loop.last}">,</c:if>
					</c:forEach>
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
				scales: {
			        yAxes: [{
			        	gridLines: {
			                display:false
			            },
			            ticks: {
			            	display: false,
			            	suggestedMin: 50,
			                stepSize: 100
			            }
			        }]
				},
				title : {
					display : true,
					text : 'Customer tot. Contribution',
					fontSize : 25
				},
				legend : {
					display : false,
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

	<br>
	
	<script>
		let myChart4 = document.getElementById('myChart4').getContext('2d');

		// Global Options
		Chart.defaults.global.defaultFontFamily = 'Lato';
		Chart.defaults.global.defaultFontSize = 18;
		Chart.defaults.global.defaultFontColor = '#777';

		let massPopChart4 = new Chart(myChart4, {
			type : 'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
			data : {
				labels : [ <c:forEach var="tempgymClassEnrolled" items="${gymClassEnrolled}" varStatus="loop">
				'${tempgymClassEnrolled.class_nm}'
				<c:if test="${!loop.last}">,</c:if>
				
		</c:forEach> ],
				datasets : [ {
					label : 'No. of students',
					data : [
						<c:forEach var="tempgymClassEnrolled" items="${gymClassEnrolled}" varStatus="loop">
					${tempgymClassEnrolled.count}
					<c:if test="${!loop.last}">,</c:if>
					</c:forEach>
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
				scales: {
			        yAxes: [{
			        	gridLines: {
			                display:false
			            },
			            ticks: {
			            	display: false,
			            	suggestedMin: 0,
			                stepSize: 2
			            }
			        }]
				},
				title : {
					display : true,
					text : 'Students per class',
					fontSize : 25
				},
				legend : {
					display : false,
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
	
	

<%-- 	<c:forEach var="tempFin" items="${fin}">


			

				
				'${tempFin.firstnm}'
				
		</c:forEach>

	<br>

	<c:forEach var="tempFin" items="${fin}">





		<td>${tempFin.payment}</td>

	</c:forEach> 
	
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
				<td>${tempFin.payment/total*100}</td>

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
	
	
	--%>
<footer class="bg-dark mt-5" style="height: 50px;">
    <div class="text-white d-flex align-items-center justify-content-center" style="height: 50px;">
        &copy 2020. All rights reserved.
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>

</html>
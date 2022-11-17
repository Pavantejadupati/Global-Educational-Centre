<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ALL COURSES</title>

<style type="text/css">
table, td {
	text-align: center;
}

 span{
 	color: red;
 }
</style>
</head>
<body>
	<div align="center">
		<h1><span>Add New Course</span></h1>

		<hr>
		<h3>
			<a href="/new">Add New Course</a>
		</h3>
		<table border="2" width="70%" cellpadding="2"
			style="margin-left: auto; margin-right: auto;">
			<tr>
				<th>COURSEID</th>
				<th>COURSENAME</th>
				<th>FEES</th>
				<th>DURATION(Months)</th>
				<th>ACTIONS</th>

			</tr>
			<c:forEach var="course" items="${courses}">
			<tr>
				<td>${course.courseId}</td>
				<td>${course.courseName}</td>
				<td>${course.fees}</td>
				<td>${course.duration}</td>
				<td><a href="/edit?courseId=${course.courseId}">Edit</a> &nbsp; &nbsp; <a
					   href="/delete?courseId=${course.courseId}">Delete</a></td>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>